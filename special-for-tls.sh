openssl req -x509 -sha256 -nodes -days 3 -newkey rsa:2048 -subj '/O=example Inc./CN=aaa' -keyout aaa.key -out aaa.crt
openssl req -out help.csr -newkey rsa:2048 -nodes -keyout help.key -subj "/CN=help/O=app organization"
openssl x509 -req -sha256 -days 3 -CA aaa.crt -CAkey aaa.key -set_serial 0 -in help.csr -out help.crt
openssl req -out help.csr -newkey rsa:2048 -nodes -keyout help.key -subj "/CN=help/O=client organization"
openssl x509 -req -sha256 -days 3 -CA aaa.crt -CAkey aaa.key -set_serial 1 -in help.csr -out help.crt

minikube kubectl -- create -n istio-system secret generic my-credential --from-file=tls.key=help.key --from-file=tls.crt=help.crt --from-file=ca.crt=aaa.crt
