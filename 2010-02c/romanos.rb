class Fixnum
  
  # TERMINADO 
  
  ROMANOS = [ 
    [50, "L"], 
    [40, "XL"], 
    [10, "X"], 
    [9, "IX"], 
    [5, "V"], 
    [4, "IV"], 
    [1,"I"] ]
  
  def to_roman
    numero = self # El numero es el numero mismo
    if numero <= 0 || numero > 59
      fail "No hay cero ni negativos"
    end
    
    romano = ""
    
    # Recorro la tabla por cada dígito, hacia abajo
    for digito, codigo in ROMANOS
      # Tengo que dividir el numero por el digito que estoy viendo
      # divmod me da la división entera Y el resto
      veces, resto = numero.divmod(digito)
      
      # Pongo el codigo romano tantas veces como entraba
      romano << codigo * veces
      
      # Me quedo con el resto y sigo buscando la tabla hacia abajo
      numero = resto
    end
      
    
    
    
    romano
  end
end
