class Roman
  TABLE = [
    {roman: 'M', arabic: 1000},
    {roman: 'CM', arabic: 900},
    {roman: 'D', arabic: 500},
    {roman: 'CD', arabic: 400},
    {roman: 'C', arabic: 100},
    {roman: 'XC', arabic: 90},
    {roman: 'L', arabic: 50},
    {roman: 'XL', arabic: 40},
    {roman: 'X', arabic: 10},
    {roman: 'IX', arabic: 9},
    {roman: 'V', arabic: 5},
    {roman: 'IV', arabic: 4},
    {roman: 'I', arabic: 1}
  ]

  def convert(arabic)
    convert_helper("",arabic)
  end

  def convert_from(roman)
    convert_from_helper(roman,0)
  end
  
  def convert_helper(roman,arabic)
    TABLE.each do |item|
      return convert_helper(roman+item[:roman],arabic-item[:arabic]) if arabic >= item[:arabic]
    end
    return roman
  end

  def convert_from_helper(roman,arabic)
    TABLE.each do |item|
      return convert_from_helper(roman[item[:roman].length..-1],arabic+item[:arabic]) if roman.start_with?(item[:roman])
    end
    return arabic
  end
end

