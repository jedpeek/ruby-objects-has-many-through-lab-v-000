class Patient
  attr_accessor :name, :age
  @@all = []
  def initialize(name)
    @name = name
  end
end
