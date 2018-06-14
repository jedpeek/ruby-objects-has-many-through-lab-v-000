require 'pry'
class Appointment
  attr_accessor :date, :doctor, :patient
  @@all = []
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all.dup.freeze
    binding.pry
  end

  def patient
     @@all.map{|appt| appt.patient}
  end

end
