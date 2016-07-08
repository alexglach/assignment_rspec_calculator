require "calculator"

describe Calculator do

  let(:c){ Calculator.new}

  describe '#initialize' do

    it 'should give you a Calculator' do
      expect(c).to be_a(Calculator)
    end

    it 'should take an argument and not get an error' do
      expect{Calculator.new(true)}.not_to raise_error
    end

  end

  describe '#add' do

    it 'should add positive numbers' do
      expect(c.add(1,2)).to eq(3)
    end

    it 'should add negative numbers' do
      expect(c.add(-1,-2)).to eq(-3)
    end

    it 'should add floats' do
      expect(c.add(1.0,2.0)).to be_within(0.5).of(3.0)
    end

  end

  describe '#subtract' do
    
    it 'should subtract positive numbers' do
      expect(c.subtract(1,2)).to eq(-1)
    end

    it 'should subtract negative numbers' do
      expect(c.subtract(-1,-2)).to eq(1)
    end

    it 'should subtract floats' do
      expect(c.subtract(1.0,2.0)).to be_within(0.5).of(-1)
    end

  end

  describe '#multiply' do

    it 'should multiply numbers' do
      expect(c.multiply(2,3)).to eq(6)
    end

  end

  describe '#divide' do

    it 'should divide two integers and return an integer if there is no remainder' do
      expect(c.divide(4,2)).to eq(2)
    end

    it 'should divide two integers and return a float if there is a remainder' do
      expect(c.divide(3,2)).to eq(1.5)
    end

    it 'should raise error if second argument is 0' do
      expect{c.divide(1,0)}.to raise_error(ArgumentError)
    end

  end

  describe '#pow' do
  
    it 'should raise numbers to their power' do
      expect(c.pow(3,3)).to eq(27.0)
    end

    it 'should raise numbers to a power that is a float' do
      expect(c.pow(27, 1/3.0)).to eq(3.0)
    end

    it 'should raise numbers to a power that is a negative number' do
      expect(c.pow(10, -1)).to eq(0.1)
    end

  end  

  describe '#sqrt' do

    it 'should give the square root of a number' do
      expect(c.sqrt(9)).to be (3)
    end

    it 'should raise an error for a negative input' do
      expect{c.sqrt(-9)}.to raise_error ArgumentError
    end

    it 'should return an integer for round roots' do
      expect(c.sqrt(16)).to eq(4)
    end

    it 'should return two-decimal digits for non-round roots' do
      expect(c.sqrt(8)).to eq(2.83)
    end
  end

  describe '#memory' do
  
    it 'memory should be nil if not given as an argument' do
      expect(c.memory).to eq(nil)
    end

    it 'memory can take a value' do
      expect(c.memory=8).to eq(8)
    end

    it 'memory can store a value which can be read' do
      c.memory=8
      expect(c.memory).to eq(8)
    end

    it 'memory clears after being read' do
      c.memory=8
      c.memory
      expect(c.memory).to eq(nil)
    end

  end

  describe '#stringify' do

    it 'turns outputs into strings' do
      c2 = Calculator.new(true)
      expect(c2.add(1,2)).to eq("3")
    end

  end














end