class Patient
  attr_accessor :name, :age
  @@all = []
  def initialize(name)
    @name = name
    @age = age
    @@all << self
  end
end
