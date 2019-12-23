# Archivo encrypt_v/encrypt_v.gemspec

Gem::Specification.new do |s|
    s.name = "encryptv"
    s.version = '0.0.1'
    s.licenses = ['GPL-1.0-only']
    s.date = '2019-12-23'
    s.authors = ["Juan Rodriguez"]
    s.email = ["engineer.jrg@gmail.com"]
    s.summary = "Encrypt Vigenere"
    s.description = "Encriptacion de mensajes mediante algoritmo vigenere"
    s.homepage = "https://github.com/engineer-jrg/EncryptV.git"
    s.platform= Gem::Platform::RUBY
    #s.files = ["lib/mygem3.rb"]
    # or
    s.files = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  end