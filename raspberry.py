import serial
import time
import os
import requests

def getPuerto():
    """ Devuelve la ruta del dispositivo, por ejemplo ttyACM0. """
    for dispositivo in os.listdir("/dev"):
        if "ACM" in dispositivo:
            return dispositivo

ipvm = "54.225.22.81"
assetID="6T2RorrgM6nMM3mP8CFuWb" # Se debe tomar el ID del asset de la URL
latenciaEntreLecturas = 10
puerto = "/dev/%s" % getPuerto() # chmod 666 ...

# Comunicacion por el puerto serie. El constructor Serial recibe: puerto en el que se encuentra la placa conectada y baudios
micro = serial.Serial(puerto, 9600, timeout=1)

# Esperar un tiempo de setup
time.sleep(2)

while(1):
    # Ejecutar solo si el puerto serie esta abierto
    if(micro.isOpen()):
        # Mandar comando de lectura de sensores. Nota: en python los puertos series no transmiten strings si no array de bytes
        micro.write(b"r")

        # Lectura de la respuesta del controlador
        lecturaLDR = micro.readline().decode("utf-8").rstrip("\r\n")

        # Se muestran los datos
        print("Lectura LDR: %s" % lecturaLDR)

        # Se envia una peticion de tipo PUT a OpenRemote en AWS # TODO: curl's -k ?
        resp = requests.put("https://%s/api/master/asset/%s/attribute/brightness" % (ipvm, assetID),
                            data=lecturaLDR,
                            headers = {'Content-Type': 'application/json'},
                            verify=False)

        # Se imprime la respuesta al PUT
        print("Respuesta de OpenRemote: %s" % resp.text)

        print(" ------------------ ")

    # Se espera un tiempo determinado entre dos lecturas
    time.sleep(latenciaEntreLecturas)