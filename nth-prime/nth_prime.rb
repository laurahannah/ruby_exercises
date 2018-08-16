class Prime

  def nth(count)
    if (count == 0) 
      raise ArgumentError
    end
    prime_list = [2] 
    index = 2
    while (prime_list.length < count)
      index += 1
      found_divisor = false
      prime_list.each {|divisor| found_divisor = true if (index % divisor == 0)}
      if (!found_divisor)
        prime_list << index
      end
    end     
    prime_list.last
  end

end
