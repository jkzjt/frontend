class Employee {
	void clockIn() => print(DateTime.now().toString());
}

mixin Medical {
	double takeTemperature() => 36.8;
}

class Bartender extends Employee {}

class Nurse extends Employee with Medical{}

class Doctor extends Employee with Medical{
	void performSurgery() => print('success');
}

void main() {
	var nurse = Nurse();
	var doctor = Doctor();
	
	nurse.clockIn();
	print(nurse.takeTemperature());
	
	doctor.clockIn();
	print(doctor.takeTemperature());
	doctor.performSurgery();
}