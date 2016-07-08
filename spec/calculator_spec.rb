require "calculator"

describe Calculator do

  let(:c){ Calculator.new}

  describe '#initialize' do

    it 'should give you a Calculator' do
      expect(c).to be_a(Calculator)
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

end