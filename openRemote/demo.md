# Servidor OpenRemote

1. Crear infrastructura en AWS con template de cloudformation (no necesario si se hace en local)
2. SSH a la VM y ejecurat script con comandos para instalar Docker, Docker Compose, crear fichero docker-compose y lanzarlo (en AWS se debe indicar la IP)
3. Acceder en el navegador usando admin / secret 

# Crear un asset:

1. Ir a Asset
2. Click en el simbolo +
3. Seleccionar Light Asset (ya que se va a usar un sensor LDR), introducir un nombre y despues click en ADD
4. Click en Modify para configurar el asset
5. Click en el atributo "brightness" y marcar "Access public write", "Store data points" y "Show on dashboard" (para poder usarlo en una gráfica en la pestaña Insights) y despues SAVE (tener en cuenta que access public write se usa unicamente debido a que se trata de una PoC)

# Insertar datos

En este punto se puede subir data usando la API de OpenRemote. La UI indica "Value must be less than or equal to 100" pero se pueden crear datos por encima, y no solo no generan un error si no que son representados correctamente. Sin embargo, la leyenda del grafico muestra '%' por tanto se trata de un porcentaje:

```bash
IPVM="localhost" # IP de VM
ASSET_ID=5S045hyGBwoUGO4zPdmDhl # Se debe tomar el ID del asset de la URL
curl -k -X PUT \
   -H "Content-Type:application/json" \
   -d '65' \
   "https://$IPVM/api/master/asset/$ASSET_ID/attribute/brightness"
``` 
 
Tras esto, se pueden ver los datos que sube el dispositivo en la vista del asset (en el recuadro History, en el dropdown Attribute, seleccionar Brightness).

# Configurar alertas

TODO

##################

LIMITATIONS:

-The PUT call can be done more frequently than once per minute but OpenRemote creates a data point on the graph only once per minute. Esto está mejor explicado aquí: https://forum.openremote.io/t/pull-data-from-arduino/731/9. Por ese motivo, no es buena idea usar OpenRemote para un sistema que sea real time, ya que a pesar de que almacena los datos con mayor frequencia (se puede ver en el CSV exportado), muestra solo un punto cada minuto (con la media de todos los datos del minuto).

-I can't test it on the app because the app only accepts a verified SSL certificate (https://forum.openremote.io/t/android-app-connection-fails-2/1159/10). En un despliegue en producción se tendría un servidor con un certificado SSL adecuado, pero eso es algo que no es necesario probar en esta demo ya que se trata unicamente de una prueba de concepto. En cualquier caso, se puede demostrar que se alcanza la aplicación desde otro dispositivo.

-No envia alertas sin un servicio externo? https://forum.openremote.io/t/notififications-alerts-emails-on-change-in-sensor-value/263/10

##################

QUESTIONS: 

-Can the DB be queried to integrate it with other frontend for example? aparently yes https://forum.openremote.io/t/receiving-data-from-openremote-via-rest-api/1193

-How often are the alerts checked? it shows "always" but not sure how often that actually is.
