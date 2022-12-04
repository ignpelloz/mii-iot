OR_TOKEN=$(curl 'https://localhost/auth/realms/master/protocol/openid-connect/token' \
  -H 'Accept: */*' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'Connection: keep-alive' \
  -H 'Content-type: application/x-www-form-urlencoded' \
  -H 'Cookie: AUTH_SESSION_ID=69407aa9-0e69-4ce2-903b-02c05c392679.cdbd6d106177-51490; AUTH_SESSION_ID_LEGACY=69407aa9-0e69-4ce2-903b-02c05c392679.cdbd6d106177-51490; KEYCLOAK_SESSION=master/a2b80fa9-3968-4ffb-8d8e-9d825fc91f12/69407aa9-0e69-4ce2-903b-02c05c392679; KEYCLOAK_SESSION_LEGACY=master/a2b80fa9-3968-4ffb-8d8e-9d825fc91f12/69407aa9-0e69-4ce2-903b-02c05c392679; KEYCLOAK_IDENTITY=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJiYjEyMGRhYi1kZWE3LTQ1Y2MtYmUyZS01MjUxYTQ1ZjZmZDkifQ.eyJleHAiOjE2NzAxOTI4ODUsImlhdCI6MTY3MDEwNjQ4NSwianRpIjoiMjA4ZDBhNmItNjllOC00ZTNlLTg1ZDgtMDFmYWNjZTYxMWU4IiwiaXNzIjoiaHR0cHM6Ly9sb2NhbGhvc3QvYXV0aC9yZWFsbXMvbWFzdGVyIiwic3ViIjoiYTJiODBmYTktMzk2OC00ZmZiLThkOGUtOWQ4MjVmYzkxZjEyIiwidHlwIjoiU2VyaWFsaXplZC1JRCIsInNlc3Npb25fc3RhdGUiOiI2OTQwN2FhOS0wZTY5LTRjZTItOTAzYi0wMmMwNWMzOTI2NzkiLCJzaWQiOiI2OTQwN2FhOS0wZTY5LTRjZTItOTAzYi0wMmMwNWMzOTI2NzkiLCJzdGF0ZV9jaGVja2VyIjoidEhHNmZsUkZFZUJlcENvclFoOTFnSnBBQWh0RURzX25HQVIwRHp3VE16RSJ9.b9G9aMSvCyv_CGLs2vKL8GM3t_PSYv3pi52r4GVoaKs; KEYCLOAK_IDENTITY_LEGACY=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJiYjEyMGRhYi1kZWE3LTQ1Y2MtYmUyZS01MjUxYTQ1ZjZmZDkifQ.eyJleHAiOjE2NzAxOTI4ODUsImlhdCI6MTY3MDEwNjQ4NSwianRpIjoiMjA4ZDBhNmItNjllOC00ZTNlLTg1ZDgtMDFmYWNjZTYxMWU4IiwiaXNzIjoiaHR0cHM6Ly9sb2NhbGhvc3QvYXV0aC9yZWFsbXMvbWFzdGVyIiwic3ViIjoiYTJiODBmYTktMzk2OC00ZmZiLThkOGUtOWQ4MjVmYzkxZjEyIiwidHlwIjoiU2VyaWFsaXplZC1JRCIsInNlc3Npb25fc3RhdGUiOiI2OTQwN2FhOS0wZTY5LTRjZTItOTAzYi0wMmMwNWMzOTI2NzkiLCJzaWQiOiI2OTQwN2FhOS0wZTY5LTRjZTItOTAzYi0wMmMwNWMzOTI2NzkiLCJzdGF0ZV9jaGVja2VyIjoidEhHNmZsUkZFZUJlcENvclFoOTFnSnBBQWh0RURzX25HQVIwRHp3VE16RSJ9.b9G9aMSvCyv_CGLs2vKL8GM3t_PSYv3pi52r4GVoaKs; _xsrf=2|f9e7d606|c60d2265774b640801726fe88786e5be|1669834946; username-localhost-8888="2|1:0|10:1670002422|23:username-localhost-8888|44:ZTM2MGZkM2Y4Yzg0NGM4OWE2YjYxNTRmMDllNzc0Nzk=|c77721f6b4824ea2bec78c4e4057db2e38436bffca0a409818450b67494df6a9"' \
  -H 'Origin: https://localhost' \
  -H 'Referer: https://localhost/manager/' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua: "Not?A_Brand";v="8", "Chromium";v="108", "Google Chrome";v="108"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  --data-raw 'grant_type=refresh_token&refresh_token=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJiYjEyMGRhYi1kZWE3LTQ1Y2MtYmUyZS01MjUxYTQ1ZjZmZDkifQ.eyJleHAiOjE2NzAxNzU0ODUsImlhdCI6MTY3MDEwNjQ4NSwianRpIjoiMDNjOWJjODYtM2MyYi00ZjYxLTg0OTgtYTFkYzlhYzFmNjE2IiwiaXNzIjoiaHR0cHM6Ly9sb2NhbGhvc3QvYXV0aC9yZWFsbXMvbWFzdGVyIiwiYXVkIjoiaHR0cHM6Ly9sb2NhbGhvc3QvYXV0aC9yZWFsbXMvbWFzdGVyIiwic3ViIjoiYTJiODBmYTktMzk2OC00ZmZiLThkOGUtOWQ4MjVmYzkxZjEyIiwidHlwIjoiUmVmcmVzaCIsImF6cCI6Im9wZW5yZW1vdGUiLCJub25jZSI6ImE2NzU4ZDJlLTdlMjEtNDU4ZS05OTgzLWYzYjc2MjJjZDg5MCIsInNlc3Npb25fc3RhdGUiOiI2OTQwN2FhOS0wZTY5LTRjZTItOTAzYi0wMmMwNWMzOTI2NzkiLCJzY29wZSI6Im9wZW5pZCBlbWFpbCBwcm9maWxlIiwic2lkIjoiNjk0MDdhYTktMGU2OS00Y2UyLTkwM2ItMDJjMDVjMzkyNjc5In0.fcFH7L0obcGH91FJrs-esTSWxa4n70I3pStgLxyzymY&client_id=openremote' \
  --compressed \
  --insecure | jq .access_token)
  
OR_TOKEN=$(echo $OR_TOKEN | sed 's/\"//g')


curl 'https://localhost/api/master/asset/predicted/7eqAJAwXo6wETSxsvWGyN7/attribute/brightness?interval=SECOND' \
  -H 'Accept: application/json, text/plain, */*' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H "Authorization: Bearer $OR_TOKEN" \
  -H 'Connection: keep-alive' \
  -H 'Cookie: _xsrf=2|f9e7d606|c60d2265774b640801726fe88786e5be|1669834946; username-localhost-8888="2|1:0|10:1670002422|23:username-localhost-8888|44:ZTM2MGZkM2Y4Yzg0NGM4OWE2YjYxNTRmMDllNzc0Nzk=|c77721f6b4824ea2bec78c4e4057db2e38436bffca0a409818450b67494df6a9"' \
  -H 'Referer: https://localhost/manager/' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Site: same-origin' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36' \
  -H 'sec-ch-ua: "Not?A_Brand";v="8", "Chromium";v="108", "Google Chrome";v="108"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  --compressed \
  --insecure
