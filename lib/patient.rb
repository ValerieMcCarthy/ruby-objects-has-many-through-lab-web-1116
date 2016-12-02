class Patient

attr_accessor :name

def initialize(name)
	@name = name
	@appointments = []
end

def add_appointment (apoint)
	@appointments << apoint
	apoint.patient = self
end

def appointments
	@appointments
end

def doctors
	@appointments.collect do |date|
		date.doctor
	end
end



end
