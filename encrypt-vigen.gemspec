# Archivo EncryptVigen/encrypt-vigen.gemspec

Gem::Specification.new do |s|
  s.name = "encrypt-vigen"
  s.version = "1.0.0"
  s.licenses = ['MIT']
  s.date = '2019-12-23'
  s.authors = ["Juan Rodriguez"]
  s.email = ["engineer.jrg@gmail.com"]
  s.summary = "Encrypt Vigenere"
  s.description = "Encriptacion de mensajes mediante algoritmo vigenere"
  s.homepage = "https://github.com/engineer-jrg/EncryptVigen"
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = ">= 1.0"
  # s.files = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.files = Dir["*.{md,txt}", "{lib}/**/*"]
  s.require_path = "lib"
  end