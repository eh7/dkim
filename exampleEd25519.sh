openssl genpkey -algorithm ed25519 -out ./dkim-ed25519_private.pem

openssl pkey -in ./dkim-ed25519_private.pem -pubout -out ./dkim-ed25519_public.pem

cat ./dkim-ed25519_private.pem
cat ./dkim-ed25519_public.pem

#openssl pkeyutl -sign -inkey ./dkim-ed25519_private.pem -out ./message.signature -in ./message

#openssl pkeyutl -verify -pubin -inkey ./public.pem -rawin -in ./message -sigfile ./message.signature


#openssl dgst -sha256 -sign ./dkim-ed25519_private.pem -out ./data.txt.ed25519.signature ./data.txt

# verify signature
#openssl ed25519 -in ./dkim-ed25519_public.pem -pubout > ./key-verified.pub

#diff ./key-verified.pub ./key.pub
#cat ./key-verified.pub ./key.pub


