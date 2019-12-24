# Archivo EncryptVigen/test.rb
# importar gema
require '../lib/encryptvigen.rb'

# mensaje
msg = 'HELLO WORLD'
# clave
key = 'THISISMYKEY'

p "Mensaje original: #{msg}"

# Encryptar mensaje
msg_encrypt = EncryptVigen.encrypt(msg, key)
p "Mensaje encriptado: #{msg_encrypt}"

# Desencriptar mensaje
msg_decrypt = EncryptVigen.decrypt(msg_encrypt, key)
p "Mensaje desencriptado: #{msg_decrypt}"
