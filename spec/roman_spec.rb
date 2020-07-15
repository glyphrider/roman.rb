require_relative '../roman'
require_relative 'spec_helper'

RSpec.describe Roman do
  describe '#convert' do
    it 'should convert 1 to I' do
      expect(subject.convert(1)).to  eq('I')
    end
    
    it 'should convert 2 to II' do
      expect(subject.convert(2)).to eq('II')
    end
    
    it 'should convert 3 to III' do
      expect(subject.convert(3)).to eq('III')
    end
    
    it 'should convert 4 to IV' do
      expect(subject.convert(4)).to eq('IV')
    end
    
    it 'should convert 5 to V' do
      expect(subject.convert(5)).to eq('V')
    end
    
    it 'should convert 6 to VI' do
      expect(subject.convert(6)).to eq('VI')
    end
    
    it 'should convert 9 to IX' do
      expect(subject.convert(9)).to eq('IX')
    end
    
    it 'should convert 10 to X' do
      expect(subject.convert(10)).to eq('X')
    end
    
    it 'should convert 11 to XI' do
      expect(subject.convert(11)).to eq('XI')
    end
    
    it 'should convert 38 to XXXVIII' do
      expect(subject.convert(38)).to eq('XXXVIII')
    end
  end
end
