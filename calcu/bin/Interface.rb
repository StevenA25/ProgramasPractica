# bin/calculadora_basica
#!/usr/bin/env ruby

require_relative '../lib/calculadora_basica'

def main
  if ARGV.length != 3
    puts "Uso: calculadora_basica <operando1> <operador> <operando2>"
    exit(1)
  end

  operando1 = ARGV[0].to_f
  operando2 = ARGV[2].to_f
  operador = ARGV[1]

  case operador
  when "+"
    resultado = CalculadoraBasica.sumar(operando1, operando2)
  when "-"
    resultado = CalculadoraBasica.restar(operando1, operando2)
  when "*"
    resultado = CalculadoraBasica.multiplicar(operando1, operando2)
  when "/"
    resultado = CalculadoraBasica.dividir(operando1, operando2)
  else
    puts "Operador no válido: #{operador}"
    exit(1)
  end

  puts "Resultado: #{resultado}"
end

main if __FILE__ == $PROGRAM_NAME
