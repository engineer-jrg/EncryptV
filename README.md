# Encrypt Vigen

:package: Encriptacion de mensajes con algoritmo vigenere

- Usa un codigo basado en el algoritmo vigenere
- Trabaja con entradas de tipo string: texto, archivos, campos de base de datos, entre otros
- Devuelve un string con los datos codificados mediante la clave suministrada

Esta libreria esta basada en el código de [Easy Encryption](https://github.com/philipperemy/easy-encryption) para C++

## Instalación

Agregue esta línea al Gemfile de su aplicación:

```ruby
gem 'encrypt-vigen', '~> 1.0'
```

Ó intalando desde la linea de comando con:

```ruby
gem install encrypt-vigen
```
## Instrucciones

```ruby
# archivo: EncryptVigen/test.rb

# importar gema
require './lib/encryptvigen.rb'

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
```

## Historial

Ver el historial de [cambios](https://github.com/engineer-jrg/EncryptVigen/CHANGELOG.md)

## Contribuyendo

Se motiva a los todos los desarroladores a ayudar a mejorar este proyecto. Aquí hay algunas maneras en que puede ayudar:

- [Reportar errores](https://github.com/engineer-jrg/EncryptVigen/issues)
- Solucione errores y [envie solicitudes de extraccion](https://github.com/engineer-jrg/EncryptVigen/pulls)
- Escriba, aclare o corrija la documentacion
- Sugiera o agregue nuevas funciones

Para comenzar con el desarrollo y las pruebas:

```sh
git clone https://github.com/engineer-jrg/EncryptVigen.git
cd EncryptVigen
```
