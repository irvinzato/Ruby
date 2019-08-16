require 'Fraccion'

class FraccionesEgipcias
  @@arregloFrac = []
  
  def sumaEgip(frac)
    #Ya esta de forma egipcia
    if frac.num==1 then
      @@arregloFrac.push(frac)
      return @@arregloFrac
    
    else
      #Proceso para llegar a la fraccion egipcia
      newDen= (frac.den/frac.num)+1
      auxf= Fraccion.new(1,newDen)
      @@arregloFrac.push(auxf)
      return sumaEgip(frac.resta(frac,auxf))  #se usa el metodo resta de la clase Fraccion
    end
  end  
end
