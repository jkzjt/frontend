class Person {
	var name;
	var age;
	
	void info() {
		print('name: ${name}, age: ${age}');
	}
}

Person getPerson() {
	return new Person();
}

void main() {
	var p;
	// ?. p is null, receiver is null
	print(p?.age);
	
	p = getPerson();
	// ?? property is null, receiver is assigned default value
	print(p.age ?? 18);
	
	// ??= value is null, assign it or not
	p.name ??= 'miky';
	p.name ??= 'jt';
	p.info();
}