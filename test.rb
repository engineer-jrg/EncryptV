# importar gema
require './lib/encryptv.rb'

# Iniciar una instancia de la gema
enc = EncryptV.new

# mensaje
msg = 'HELLO WORLD'
# clave
key = 'THISISMYKEY'

# Encryptar un mensaje
msg_encrypt = enc.encrypt(msg, key)
p msg_encrypt

# Desencriptar el mensaje
msg_decrypt = enc.decrypt(msg_encrypt, key)
p msg_decrypt