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
      7 | 'VII'
      8 | 'VIII'
      9 | 'IX'
      10 | 'X'
      11 | 'XI'
      14 | 'XIV'
      15 | 'XV'
      16 | 'XVI'
      19 | 'XIX'
      20 | 'XX'
      21 | 'XXI'
      39 | 'XXXIX'
      40 | 'XL'
      41 | 'XLI'
      42 | 'XLII'
      43 | 'XLIII'
      44 | 'XLIV'
      45 | 'XLV'
      46 | 'XLVI'
      47 | 'XLVII'
      48 | 'XLVIII'
      49 | 'XLIX'
      50 | 'L'
      89 | 'LXXXIX'
      90 | 'XC'
      91 | 'XCI'
      99 | 'XCIX'
      100 | 'C'
      101 | 'CI'
      200 | 'CC'
      399 | 'CCCXCIX'
      400 | 'CD'
      401 | 'CDI'
      499 | 'CDXCIX'
      500 | 'D'
      501 | 'DI'
      899 | 'DCCCXCIX'
      900 | 'CM'
      999 | 'CMXCIX'
      1000 | 'M'
      1001 | 'MI'
      1968 | 'MCMLXVIII'
    end

    with_them do
      it "should convert #{params[:arabic]} to #{params[:roman]}" do
        expect(subject.convert(arabic)).to eq(roman)
      end
    end
    
  end
end
