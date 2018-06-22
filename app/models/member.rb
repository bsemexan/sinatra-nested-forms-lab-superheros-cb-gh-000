class Member
  attr_accessor :name, :power, :bio
  
  @@all = []
  
  def initialize(arg)
    @name  = arg[:name]
    @power = arg[:power]
    @bio   = arg[:bio]
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
end