class User {
	
}

class Boss extends User {
	
}

class Customer extends User {
	var address;
}

class Employee extends User {
	var hireTime;
}

void main(){
	User u = new Customer();
	
	if(u is Boss) {
		print('fuck your 996');
	}
	
	if(u is! Boss) {
		print('work-life balance');
	}
	
	// error
	// u.address = 'China';
	(u as Customer).address = 'China';
	print(u.address);
}