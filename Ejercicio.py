import random

cantidad = int(input("Ingrese la cantidad de números para confirmar: "))

numeros = [random.randint(1, 100) for _ in range(cantidad)]  # Generar números aleatorios positivos
print("Números generados:", ", ".join(map(str, numeros)))

for n in numeros:
    factores = [i for i in range(1, n + 1) if n % i == 0]  # Obtener factores del número
    if len(factores) % 2 == 1:
        print("Sí")
    else:
        print("No")

        

