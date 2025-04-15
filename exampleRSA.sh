# gen private key
openssl genrsa -out ./key.pem 2048

# grn publiv key
openssl rsa -in ./key.pem -pubout > ./key.pub

# sign some data
#openssl dgst -sha256 -sign ./key.pem -out ./data.txt.signature ./data.txt
#openssl dgst -sign ./key.pem -keyform PEM -sha256 -out ./data.zip.sign -binary ./data.zip
openssl dgst -sign ./key.pem -keyform PEM -sha256 -out ./data.txt.sign ./data.txt


# verify signature
#openssl dgst -verify ./key.pub -keyform PEM -sha256 -signature ./data.zip.sign -binary ./data.zip
openssl dgst -verify ./key.pub -keyform PEM -sha256 -signature ./data.txt.sign ./data.txt


#openssl rsa -in ./key.pem -pubout > ./key-verified.pub

#diff ./key-verified.pub ./key.pub
#cat ./key-verified.pub ./key.pub
