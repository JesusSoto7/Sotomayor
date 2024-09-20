
class Telefono
    attr_accessor :marca, :ram, :rom
end

class Pc
    attr_accessor :cpu, :ram, :almacenamiento
end

class Camisa
    attr_accessor :talla, :marca, :color
end

celular = Telefono.new
celular.marca = "Samsung"
celular.ram = 4
celular.rom = 128

computador = Pc.new
computador.cpu = "Ryzen 5 4600g"
computador.ram = 16
computador.almacenamiento = 500

ropa = Camisa.new
ropa.talla = 8
ropa.marca = "H&M"
ropa.color = "Blanco"