# Archivo EncryptVigen/lib/encryptvigen.rb

# Clases
require_relative "./encryptvigen/encryptv.rb"

# Modulo de uso
module EncryptVigen

    # Metodo para encriptar mensaje
    def self.encrypt(msg, key)
        return EncryptV.new.encrypt(msg, key)
    end

    # Metodo para desencriptar mensaje
    def self.decrypt(encrypted_msg, key)
        return EncryptV.new.decrypt(encrypted_msg, key)
    end
end
