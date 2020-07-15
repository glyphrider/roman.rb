require_relative '../roman'
require_relative 'spec_helper'

RSpec.describe Roman do
  describe '#convert' do
    using RSpec::Parameterized::TableSyntax

    where(:arabic, :roman) do
      1 | 'I'
      2 | 'II'
      3 | 'III'
      4 | 'IV'
      5 | 'V'
      6 | 'VI'
      9 | 'IX'
      10 | 'X'
      11 | 'XI'
      38 | 'XXXVIII'
    end

    with_them do
      it "should convert #{params[:arabic]} to #{params[:roman]}" do
        expect(subject.convert(arabic)).to eq(roman)
      end
    end
    
  end
end
