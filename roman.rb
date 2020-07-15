class Roman
  def convert(arabic)
    convert_helper("",arabic)
  end
  def convert_helper(roman,arabic)
    return convert_helper(roman+'M',arabic-1000) if arabic >= 1000
    return convert_helper(roman+'CM',arabic-900) if arabic >= 900
    return convert_helper(roman+'D',arabic-500) if arabic >= 500
    return convert_helper(roman+'CD',arabic-400) if arabic >= 400
    return convert_helper(roman+'C',arabic-100) if arabic >= 100
    return convert_helper(roman+'XC',arabic-90) if arabic >= 90
    return convert_helper(roman+'L',arabic-50) if arabic >= 50
    return convert_helper(roman+'XL',arabic-40) if arabic >= 40
    return convert_helper(roman+'X',arabic-10) if arabic >= 10
    return convert_helper(roman+'IX',arabic-9) if arabic >= 9
    return convert_helper(roman+'V',arabic-5) if arabic >= 5
    return convert_helper(roman+'IV',arabic-4) if arabic >= 4
    return convert_helper(roman+'I',arabic-1) if arabic >= 1
    return roman
  end
end

