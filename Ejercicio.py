import math
import random


n= int(input("ingrese la cantidad de numeros a validar:"))
while n<=0:
    print("El numero debe ser positivo")
    n= int(input("ingrese la cantidad de numeros a validar "))

n_azar = map(int(random(n_azar)))
for i in range(n):
    n_azar = reduce(n_azar)
    mcm = list(map(int(n_azar)))
    if mcm % 2 != 0:
        print(f"el numero es inteligente: {mcm}")
        print(mcm)
    else:
        print("El numero no es inteligente: {mcm}")
        print(mcm)    

        

