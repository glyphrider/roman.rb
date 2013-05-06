class Roman
  def convert(arabic)
    convert_helper("",arabic)
  end
  def convert_helper(roman,arabic)
    return convert_helper(roman+'X',arabic-10) if arabic >= 10
    return convert_helper(roman+'IX',arabic-9) if arabic >= 9
    return convert_helper(roman+'V',arabic-5) if arabic >= 5
    return convert_helper(roman+'IV',arabic-4) if arabic >= 4
    return convert_helper(roman+'I',arabic-1) if arabic >= 1
    return roman
  end
end

