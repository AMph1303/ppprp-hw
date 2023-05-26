# ПППРП задание 2

Взято то же приложение, что и в первом задании

Вызов приложения по curl -v -HHost:help --resolve "help:$SECURE_INGRESS_PORT:$INGRESS_HOST"   --cacert aaa.crt --cert help.crt --key help.key   "https://help:$SECURE_INGRESS_PORT/run/"

где $SECURE_INGRESS_PORT и $INGRESS_HOST можно найти в соответствующем url адресе
