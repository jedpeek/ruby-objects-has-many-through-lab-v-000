class Doctor
  attr_accessor :name, :age
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    Patients.all.select{|patient| patient.doctor == self}
  end

  def appointments
    patients.map{|patient| patient.appointment}
  end
end
