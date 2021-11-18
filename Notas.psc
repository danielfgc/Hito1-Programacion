Algoritmo Notas
	definir nombre, asignatura, lista, suspensos, pos como cadena;
	definir i, j, n Como Entero;
	definir acum, media, nota Como Real;
	Escribir "Cuantos alumnos quieres examinar: "
	leer n
	dimension lista[n+1,8]
	dimension suspensos[n+1]
	lista[0,0]<- "Alumnos"
	lista[0,7] <- "Media"
	Escribir "Digame las 6 asignaturas:"
	para j<-1 hasta 6 Hacer
		leer asignatura
		lista[0,j] <- asignatura
	FinPara
	Escribir "Digame los  alumnos examinados:"
	para i<-1 hasta n Hacer
		leer nombre
		lista[i,0]<-nombre
	FinPara
	
	para i<-1 hasta n Hacer
		acum<-0
		para j<-1 hasta 6 Hacer
			Escribir "Digame la nota de ", lista[i,0], " en ", lista[0,j]
			leer nota
			acum<-acum+nota
			lista[i,j]<-ConvertirATexto(trunc(nota*100)/100)
		FinPara
		media<-acum/6
		lista[i,7]<-ConvertirATexto(trunc(media*100)/100)
	FinPara
	
	Escribir "===================================================="
	para i<-1 hasta n Hacer
		suspensos[i]<-"0"
		si ConvertirANumero(lista[i,7])<5 Entonces
			suspensos[i]<-lista[i,0]
		FinSi
		si suspensos[i]<>"0" Entonces
			Escribir suspensos[i], " a recuperación."
			Escribir "===================================================="
		FinSi
	
	FinPara
	
	para i<-1 hasta n Hacer
		acum<-0;
		escribir "El alumno ", lista[i,0], " tiene que recuperar: "
		para j<-1 hasta 6 Hacer
			si lista[i,j]<"5" Entonces
				Escribir lista[0,j];
				acum<-acum+1;
			FinSi
		FinPara
		si acum=0 Entonces
			Escribir "Ninguna"
			
		FinSi
		Escribir "===================================================="
	FinPara
	
	para i<-0 hasta n Hacer
		para j<-0 hasta 7 Hacer
			Escribir sin saltar lista[i,j], "  |  "
		FinPara
		Escribir " "
	FinPara
	para i<-1 hasta n Hacer
		para j <- i hasta n Hacer
			si lista[i,7]<lista[j,7] Entonces
				pos<-lista[i,7]
				nombre<-lista[i,0]
				lista[i,7]<-lista[j,7]
				lista[i,0]<-lista[j,0]
				lista[j,7]<-pos
				lista[j,0]<-nombre
				
			FinSi
		FinPara
	FinPara
	Escribir "======================================================="
	Escribir "Estos son los alumnos ordenados por su nota:"
	para i<-1 hasta n Hacer
		escribir lista[i,0], ":      ", lista[i,7]
	FinPara	
	
FinAlgoritmo