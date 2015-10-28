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

desc "Ejecutar solo las pruebas logicas"
task :logica do
  sh "ruby -I. test/tc_fraccion.rb -n /test_logica/"
end

desc "Ejecutar solo las pruebas de fallos aritmeticos"
task :falloaritmetica do
  sh "ruby -I. test/tc_fraccion.rb -n /test_falloaritmetica/"
end

desc "Ejecutar solo las pruebas de fallos logicos"
task :fallologica do
  sh "ruby -I. test/tc_fraccion.rb -n /test_fallologica/"
end