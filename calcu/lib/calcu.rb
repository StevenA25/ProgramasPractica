# frozen_string_literal: true

require_relative "calcu/version"

module Calcu
  class Error < StandardError; end
  def self.sumar(a, b)
    a + b
  end

  def self.restar(a, b)
    a - b
  end

  def self.multiplicar(a, b)
    a * b
  end

  def self.dividir(a, b)
    if b == 0
      raise "No se puede dividir por cero."
    else
      a.to_f / b
    end
  end
end
