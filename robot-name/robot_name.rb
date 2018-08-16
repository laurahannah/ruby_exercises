class Robot

  ALPHA = ('A'..'Z').to_a
  NUMERIC = (0..9).to_a
  
  @@used_names = [""]

  def generate_name
    candidate_name = ""
    while (@@used_names.include? candidate_name)
      candidate_name = (ALPHA.sample(2) + NUMERIC.sample(3)).join
    end
    candidate_name
  end

  def initialize
    @current_name = generate_name
    @@used_names << @current_name
  end

  def name
    @current_name
  end

  def reset
    @current_name = generate_name
    @@used_names << @current_name
  end
end
