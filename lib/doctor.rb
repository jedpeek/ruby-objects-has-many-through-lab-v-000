class Doctor
  attr_accessor :name, :age
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
end
