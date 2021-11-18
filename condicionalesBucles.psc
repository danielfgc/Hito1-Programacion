Algoritmo condicionalesBucles
	Definir num, acum, i Como Entero;
	Escribir Sin Saltar "Digame cuantas veces quiere que se repita el bucle: ";
	Leer num;
	Si num == 1 Entonces
		Escribir "Esta será la única entrada al bucle while";
	FinSi
	Mientras num>0 Hacer
		acum<-0;
		num<-num-1;
		Si num==0 Entonces
			Escribir "Esta será la ulitima repetición del bucle.";
		SiNo
			Escribir "Numero de entradas al bucle pendientes: ", num;
		FinSi
		Escribir "========================================================================="
		Segun num Hacer
			0: 
				Escribir "No quedan más entradas al bucle.";
			1:
				Escribir "El bucle casi ha terminado";
			De Otro Modo:
				Escribir "Aun le quedan mas de 2 entradas al bucle.";
		FinSegun
		Escribir "========================================================================="
		Escribir "El siguiente for se repetirá tantas veces como entradas al bucle queden.";
		Para i = 0 hasta num Hacer
			Escribir "Entrada al for numero: ", i;
		FinPara
		Escribir "========================================================================="
		Repetir
			acum<-acum+1
			Escribir "Este es un ejemplo de do while. Has entrado en el bucle por: ", acum, " vez.";
		Hasta Que acum=4
		Escribir "========================================================================="
		si num >10 Entonces
			Escribir "Este bucle va a ser muy largo.";
		sino 
			si num<10 y num>5 Entonces
				Escribir "Va a ser un bucle largo pero no mucho";
			sino
				si num < 4 y num>=1 Entonces
					Escribir "El bucle va a ser corto";
				SiNo
					Escribir "El bucle ha terminado.";
				FinSi
			FinSi
		FinSi
		Escribir "========================================================================="
	FinMientras
	
FinAlgoritmo