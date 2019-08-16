require "Fraccion"
require "FraccionesEgipcias"

class Principal
  
    #Objetos para la clase Fraccion
    f1 = Fraccion.new(1,2)
    f2 = Fraccion.new(3,5)
    
    puts "La primer fraccion es #{f1.num}/#{f1.den}"
    puts "La segunda fraccion es #{f2.num}/#{f2.den}"
    
    puts "La suma es: "
    puts f1.suma(f1,f2)
    
    puts "La resta es: "
    puts f1.resta(f1,f2)
    
    puts "La multiplicacion es: "
    puts f2.multi(f1,f2)
    
    puts "La divicion es: "
    puts f1.div(f1,f2)
    
    
    #Objeto para la clase FraccionesEgipcias
    fracEgip = FraccionesEgipcias.new()
    fe = Fraccion.new(4,5)
    a= fracEgip.sumaEgip(fe)
    
    puts "La fraccion egipcia de #{fe.num}/#{f2.den} es "
    
    #Impresion del arregloFrac
    a.each do |elem|
      print "#{elem} "
    end
    
end