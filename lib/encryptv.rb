# Archivo encrypt_v/lib/encryptv.rb
class EncryptV
    # Variables privadas de la clase
    # @available_chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ".split("")
    
    # Acceso publico

    # Metodos publicos
    def encrypt(msg, key)
        # Metodo para encriptar un mensaje
        self.algorithm_encrypt_v(msg,key)
    end

    def decrypt(encrypted_msg, key)
        # Metodo para desencriptar un mensaje
        new_key = extend_key(encrypted_msg, key)
        algorithm_decrypt_v(encrypted_msg,new_key)
    end

    # Acceso privado
    protected
        # Metodos privados

        def index(ch)
            # Devuelve la ppsicion del caracter en el hash
            available_chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ".split("")
            available_chars.each_with_index { |c,i|
                if c.eql? ch
                    return i
                end
            }
            return -1
        end

        def gen_ch_array(len)
            # Devuelve un array de tamaño 'len' de caracteres 'x'
            ('x'*len).split("")
        end

        def extend_key(msg, key)
            # Generar une nueva clave a base del mensage y la clave original
            msg_len = msg.length
            new_key = gen_ch_array(msg_len)
            key_len = key.length
            j = 0
            msg.split("").each_with_index{ |c,i|
                if j.eql? key_len
                    j = 0
                end
                new_key[i] = key.split("")[j]
                j = j + 1
            }
            return new_key.join("")
        end

        def validate(str)
            # Devuelve verdadero si el str es alfa-numerico
            chars = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a
            str.chars.detect {|ch| !chars.include?(ch)}.nil?
        end

        def algorithm_encrypt_v(msg, key)
            # Encrypta un mensaje utilizando el algoritmo vigenere
            msg_len = msg.length
            key_len = key.length
            encrypted_msg = gen_ch_array(msg_len)
            
            new_key = extend_key(msg, key)

            # Encriptacion
            available_chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ".split("") 
            msg.split("").each_with_index{ |c,i|
                if validate(c) || (c.eql? ' ')
                    encrypted_msg[i] = available_chars[((index(msg.split("")[i]) + index(new_key.split("")[i])) % available_chars.length())]
                else
                    encrypted_msg[i] = msg.split("")[i]
                end
            }

            return encrypted_msg.join("")
        end

        def algorithm_decrypt_v(encrypted_msg, new_key)
            msg_len = encrypted_msg.length
            decrypted_msg = gen_ch_array(msg_len)

            #Desencriptacion
            available_chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 ".split("")
            encrypted_msg.split("").each_with_index{ |c,i|
                if validate(c) || (c.eql? ' ')
                    decrypted_msg[i] = available_chars[(((index(encrypted_msg.split("")[i]) - index(new_key.split("")[i])) + available_chars.length()) % available_chars.length())]
                else
                    decrypted_msg[i] = decrypted_msg.split("")[i]
                end
            }
            return decrypted_msg.join("");
        end
end