class Usuario
    attr_accessor :cuenta_bancaria,  :nombre
    def initialize(nombre_de_usuario, cuenta_bancaria)
        raise ArgumentError, "Se necesita al menos una cuenta" if cuenta_bancaria.size < 1
        @nombre_de_usuario = nombre_de_usuario
        @cuenta_bancaria = cuenta_bancaria
    end

    def saldo_total #este metodo que devuelve la suma de todos los saldos del usuario
        @cuenta_bancaria.map { |x| x.saldo}.sum
    end
end

class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo
    def initialize(banco, numero_de_cuenta, saldo = 0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end

    def transferir(monto, otra_cuenta)#metodo que reciba monto y otra cuenta
        @saldo -= monto #este metodo restará del saldo actual, el monto
        otra_cuenta.saldo += monto #y aumentará el saldo de la otra cuenta en el mismo monto
    end
end

cuenta1 = CuentaBancaria.new("Banco de Chile", 1234, 5000)
cuenta2 = CuentaBancaria.new("Banco Santander", 5678, 5000)
cuenta3 = CuentaBancaria.new("Banco Itaú", 007, 15000)
usuario1 = Usuario.new("Evelyn", [cuenta1, cuenta3])
usuario2 = Usuario.new("Lucas", [cuenta2])

puts cuenta1.transferir(5000, cuenta2)
puts usuario1.saldo_total