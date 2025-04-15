# gen private key
openssl genrsa -out ~/dkim/key.pem 2048

# grn publiv key
openssl rsa -in ~/dkim/key.pem -pubout > ~/dkim/key.pub

# sign some data
#openssl dgst -sha256 -sign ~/dkim/key.pem -out ~/dkim/data.txt.signature ~/dkim/data.txt
#openssl dgst -sign ~/dkim/key.pem -keyform PEM -sha256 -out ~/dkim/data.zip.sign -binary ~/dkim/data.zip
openssl dgst -sign ~/dkim/key.pem -keyform PEM -sha256 -out ~/dkim/data.txt.sign ~/dkim/data.txt


# verify signature
#openssl dgst -verify ~/dkim/key.pub -keyform PEM -sha256 -signature ~/dkim/data.zip.sign -binary ~/dkim/data.zip
openssl dgst -verify ~/dkim/key.pub -keyform PEM -sha256 -signature ~/dkim/data.txt.sign ~/dkim/data.txt


#openssl rsa -in ~/dkim/key.pem -pubout > ~/dkim/key-verified.pub

#diff ~/dkim/key-verified.pub ~/dkim/key.pub
#cat ~/dkim/key-verified.pub ~/dkim/key.pub
