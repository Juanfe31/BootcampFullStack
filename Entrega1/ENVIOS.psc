Algoritmo ENVIOS
	Definir impuesto Como Real
	impuesto<-0.12
	Definir cantidad Como Entero
	Definir peso Como Real
	Definir lugar Como Cadena
	definir precioLugar Como Real
	
	Definir  Bdescuento Como Logico
	
	Definir  precioFinal Como Real
	
	Definir precioImpuesto Como Real
	Definir descuentoCupon Como Real
	Definir descuentoCantidad Como Real
	Definir precioEnvio Como Real
	Definir precioLugarD Como Real
	dimension precioLugarD[5]
	precioLugarD[1]=2.5
	precioLugarD[2]=3
	precioLugarD[3]=1.8
	precioLugarD[4]=2
	precioLugarD[5]=1.5
	
	Escribir "Ingrese el precio del producto"
	Leer precioOriginal
	
	precioFinal<-precioOriginal
		
	Escribir "¿Tiene descuento? responda Verdadero o Falso"
	Leer Bdescuento
		
	Si Bdescuento Entonces
		Escribir "escriba el valor del descuento, EJ. para 19% escriba 0.19"
		Leer valorDescuento
		descuentoCupon<-valorDescuento*precioOriginal
		precioFinal<-precioFinal-descuentoCupon
	Fin Si
	
	
	precioImpuesto<-precioFinal*impuesto
	precioFinal<-precioFinal+precioImpuesto

		
	Escribir "Escriba la cantidad de este producto"
	Leer cantidad
	Segun cantidad Hacer
		1:
			descuentoCantidad<-precioFinal*0
			precioFinal<-precioFinal-descuentoCantidad
		2:
			descuentoCantidad<-precioFinal*0.05
			precioFinal<-precioFinal-descuentoCantidad
		3:
			descuentoCantidad<-precioFinal*0.1
			precioFinal<-precioFinal-descuentoCantidad
		4:
			descuentoCantidad<-precioFinal*0.15
			precioFinal<-precioFinal-descuentoCantidad
		5:
			descuentoCantidad<-precioFinal*0.20
			precioFinal<-precioFinal-descuentoCantidad
		De Otro Modo:
			descuentoCantidad<-precioFinal*0.25
			precioFinal<-precioFinal-descuentoCantidad
	Fin Segun
	
	Escribir "Escriba su ubicación (validos: Nueva York, Medellin, CDMX, Paris, Madrid)"
	Leer lugar
	Segun lugar Hacer
		"Nueva York":
			precioLugar<-precioLugarD[1]
		"Medellin":
			precioLugar<-precioLugarD[2]
		"CDMX":
			precioLugar<-precioLugarD[3]
		"Paris":
			precioLugar<-precioLugarD[4]
		"Madrid":
			precioLugar<-precioLugarD[5]
		De Otro Modo:
			precioLugar<-4
	Fin Segun
	
	Escribir "Ingrese el peso de su producto (en kg)"
	Leer peso
	
	precioEnvio<-10+ precioLugar * peso * 2
	precioFinal<-precioFinal+precioEnvio
	
	
	
	
	Escribir "//////////////////////////////////////"
	Escribir "El precio original es:" precioOriginal
	Escribir "El precio del impuesto es: +" precioImpuesto
	Escribir "El descuento por la cantidad (" cantidad ") es: -" descuentoCantidad
	Escribir "El descuento del cupon es: -" descuentoCupon
	Escribir "El precio del envio es: +" precioEnvio
	Escribir "//////////////////////////////////////"
	Escribir "El precio final del producto es:" precioFinal
	precioFinal<-precioFinal*cantidad
	Escribir "para cantidad: " cantidad ", el precio total es:" precioFinal

FinAlgoritmo
