task :default => :tu

desc "Ejecutar todas las pruebas unitarias de la clase Fraccion"
task :tu do
  sh "ruby -I. test/tc_fraccion.rb"
end

desc "Ejecutar solo las pruebas de creación de objetos"
task :objeto do
  sh "ruby -I. test/tc_fraccion.rb -n /test_objeto/"
end

desc "Ejecutar solo las pruebas aritmeticas"
task :aritmetica do
  sh "ruby -I. test/tc_fraccion.rb -n /test_aritmetica/"
end

desc "Ejecutar solo las pruebas de comparacion"
task :comparacion do
  sh "ruby -I. test/tc_fraccion.rb -n /test_comparacion/"
end

desc "Ejecutar solo las pruebas de fallos aritmeticos"
task :falloaritmetica do
  sh "ruby -I. test/tc_fraccion.rb -n /test_falloaritmetica/"
end

desc "Ejecutar solo las pruebas de fallos de comparacion"
task :fallocomparacion do
  sh "ruby -I. test/tc_fraccion.rb -n /test_fallocomparacion/"
end

desc "Ejecutar solo las pruebas de fallos de inicializacion de objetos"
task :falloobjeto do
  sh "ruby -I. test/tc_fraccion.rb -n /test_falloobjeto/"
end