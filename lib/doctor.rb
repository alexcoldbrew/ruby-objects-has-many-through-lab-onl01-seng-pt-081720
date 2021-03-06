class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def appointments
    Appointment.all.each do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.collect { |apt| apt.patient }
  end
end
