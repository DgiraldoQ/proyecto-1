class Persona:
    def __init__(self, nombre, nif, fecha_nacimiento):
        self.nombre = nombre
        self.nif = nif
        self.fecha_nacimiento = fecha_nacimiento

class Jugador(Persona):
    def __init__(self, nombre, nif, fecha_nacimiento, num_fed):
        super().__init__(nombre, nif, fecha_nacimiento)
        self.num_fed = num_fed

persona = Persona("Daniel Sebastian Norabuena", "87654321B", "2000-01-24")
jugador = Jugador("Daniel Sebastian Norabuena", "87654321B", "", 10)

print(f"Persona: {persona.nombre}, {persona.nif}, {persona.fecha_nacimiento}")
print(f"Jugador: {jugador.nombre}, {jugador.nif}, {jugador.fecha_nacimiento}, {jugador.num_fed}")



