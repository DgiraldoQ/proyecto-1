#########
#(1) suma
#(2) resta
#(3) multiplicacion
#(4) division
#############


def calculadora(numero1, numero2, op):
    if op == 1:
        print(f"el resultado de la suma {numero1} y {numero2}: {numero1+numero2}")
    elif op == 2:
        print(f"el resultado de la resta {numero1} y {numero2}: {numero1-numero2}")
    elif op == 3:
        print(f"el resultado de la multiplicacion {numero1} y {numero2}: {numero1*numero2}")
    elif op == 4:
        print(f"el resultado de la division {numero1} y {numero2}: {numero1/numero2}")
    else:
        print("Te equivocaste, inserta un valor correcto")

variable1= float(input("Introduzca su primer valor"))
variable2= float(input("Introduzca su segundo valor"))
Opcion= int(input("escoca una opcion del 1 al 4"))
while Opcion >=5:
    print("Ingrese un numero valido del 1 al 4")
    Opcion= int(input("escoca una opcion del 1 al 4"))
    
    

calculadora (variable1, variable2, Opcion)



