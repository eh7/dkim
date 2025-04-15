openssl genpkey -algorithm ed25519 -out ~/dkim/dkim-ed25519_private.pem

openssl pkey -in ~/dkim/dkim-ed25519_private.pem -pubout -out ~/dkim/dkim-ed25519_public.pem

cat ~/dkim/dkim-ed25519_private.pem
cat ~/dkim/dkim-ed25519_public.pem

openssl dgst -sha256 -sign ~/dkim/dkim-ed25519_private.pem -out ~/dkim/data.txt.ed25519.signature ~/dkim/data.txt

# verify signature
openssl ed25519 -in ~/dkim/dkim-ed25519_public.pem -pubout > ~/dkim/key-verified.pub

diff ~/dkim/key-verified.pub ~/dkim/key.pub
cat ~/dkim/key-verified.pub ~/dkim/key.pub


