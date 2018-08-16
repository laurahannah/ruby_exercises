class Year
  VERSION = 1

  def self.leap?(year)
    if (year % 400 == 0)
      return "Yes, #{year} is a leap year"
    end
    if (year % 100 == 0)
      return "No, #{year} is not a leap year"
    end
    if (year % 4 == 0)
      return "Yes, #{year} is a leap year"
    else 
      return "No, #{year} is not a leap year"
    end
  end

end
