class Venue

  attr_reader :name, :admission_fee, :max_limit
  def initialize(name, admission_fee, max_limit)
    @name = name 
    @admission_fee = admission_fee
    @max_limit = max_limit

  end 

  
end