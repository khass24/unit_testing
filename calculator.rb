require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def triple(number)
    return number * 3
  end

  def negative(number)
    return number * -1
  end

  def pi(number)
    return number * 3.14
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe '#subtract' do
    it 'should return the value of the first number minus the second' do
      calculator = Calculator.new
      expect(calculator.subtract(5, 3)).to eq(2)
    end
  end

  describe '#multiply' do
    it 'should return the value of the first number multiplied by the second' do
      calculator = Calculator.new
      expect(calculator.multiply(5, 3)).to eq(15)
    end
  end

  describe '#divide' do
    it 'should return the value of the first number divided by the second' do
      calculator = Calculator.new
      expect(calculator.divide(100, 50)).to eq(2)
    end
  end

  describe '#square' do
    it 'should return the number squared' do
      calculator = Calculator.new
      expect(calculator.square(3)).to eq(9)
    end
  end

  describe '#power' do
    it 'should return the first number to the second numbers power' do
      calculator = Calculator.new
      expect(calculator.power(5,3)).to eq(125)
    end
  end

  describe "#triple" do
    it 'should return the number inputted tripled' do
      calculator = Calculator.new
      expect(calculator.triple(5)).to eq(15)
    end
  end

  describe "#negative" do
    it 'should return the negative of a positive number or vice versa' do
      calculator = Calculator.new
      expect(calculator.negative(420)).to eq(-420)
    end
  end

  describe "#pi" do
    it 'should return the number times pi' do
      calculator = Calculator.new
      expect(calculator.pi(2)).to eq(6.28)
    end
  end
end