def invertir_a():
    n = int(input("Ingrese la cantidad de elementos: "))
    if n <= 0:
        print("ERROR: La cantidad de elementos debe ser mayor a 0, intentelo nuevamente")
        return
    array = []
    for i in range(n):
        elemento = input(f"Ingrese el numero {i + 1}: ")
        array.append(elemento)
    def invertir(arr):
        return arr[::-1]
    array_invertido = invertir(array)

    print("Original:", " ".join(array))
    print("Invertido:", " ".join(array_invertido))

invertir_a()


        


