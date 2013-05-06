require './roman'

describe Roman do
  it 'should convert 1 to I' do
    subject.convert(1).should == 'I'
  end

  it 'should convert 2 to II' do
    subject.convert(2).should == 'II'
  end

  it 'should convert 3 to III' do
    subject.convert(3).should == 'III'
  end

  it 'should convert 4 to IV' do
    subject.convert(4).should == 'IV'
  end

  it 'should convert 5 to V' do
    subject.convert(5).should == 'V'
  end

  it 'should convert 6 to VI' do
    subject.convert(6).should == 'VI'
  end

  it 'should convert 9 to IX' do
    subject.convert(9).should == 'IX'
  end

  it 'should convert 10 to X' do
    subject.convert(10).should == 'X'
  end

  it 'should convert 11 to XI' do
    subject.convert(11).should == 'XI'
  end

  it 'should convert 38 to XXXVIII' do
    subject.convert(38).should == 'XXXVIII'
  end
end
