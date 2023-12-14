Algoritmo GenerarFactura
    Definir nombreCliente, direccion, rnc, nombreArticulo Como Cadena
    Definir precioArticulo, cantidadArticulo, totalFactura, descuento Como Real
    totalFactura = 0
    dimension listaArticulos[100]
    Definir indice Como Entero
    indice = 1
	
    Escribir "=== Facturaci�n ==="
    Escribir "Ingrese el nombre del cliente:"
    Leer nombreCliente
    Escribir "Ingrese la direcci�n del cliente:"
    Leer direccion
    Escribir "Ingrese el RNC/Cedula del cliente:"
    Leer rnc
	
    Repetir
        Escribir "Ingrese el nombre del art�culo (o 0 para finalizar):"
        Leer nombreArticulo
        Si nombreArticulo <> "0" Entonces
            Escribir "Ingrese el precio del art�culo:"
            Leer precioArticulo
            Escribir "Ingrese la cantidad del art�culo:"
            Leer cantidadArticulo
            totalFactura = totalFactura + (precioArticulo * cantidadArticulo)
            listaArticulos[indice] = Concatenar(Concatenar(nombreArticulo, " (x "), Concatenar(ConvertirATexto(cantidadArticulo), Concatenar( "): $", ConvertirATexto(precioArticulo * cantidadArticulo))))
            indice = indice + 1
        FinSi
    Hasta Que nombreArticulo = "0"
	
    Repetir
        Escribir "Ingrese el descuento (en porcentaje):"
        Leer descuento
        Si descuento >= 100 Entonces
            Escribir "El descuento no puede ser mayor o igual al 100%. Ingrese un descuento v�lido."
			Si descuento > totalFactura Entonces
				Escribir "El descuento no puede ser mayor que el total de la compra. Ingrese un descuento v�lido."
			FinSi
		FinSi
    Hasta Que descuento < totalFactura
	
    Escribir "=== Factura ==="
    Escribir "Cliente:", nombreCliente
    Escribir "Direcci�n:", direccion
    Escribir "RNC/Cedula:", rnc
    Escribir "Art�culos:"
    Para i Desde 1 Hasta indice-1 Hacer
        Escribir listaArticulos[i]
    FinPara
	
    totalFactura = totalFactura - (totalFactura * descuento / 100)
    Escribir "Total a pagar (con descuento): $", totalFactura
		
    Escribir "Realizado por: Roberto Arturo Tavarez Pe�a. Matricula: 23-EIIN-1-024."
	
FinAlgoritmo
