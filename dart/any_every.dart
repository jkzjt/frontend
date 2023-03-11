class User {
	var name, age;
	
	User(this.name, this.age);
}

List<User> users = [
	User('Sari', 18),
	User('Sam', 25),
	User('John', 22),
];

void main() {
	final anyUnder18 = users.any((User u) => u.age < 18);
	
	if(anyUnder18) print('Not for youth');
	else print('Commence party');
	
	final allToParty = users.every((User u) => u.age >= 22);
	
	if(allToParty) print('Start orgy');
	else print('Sorry, billy');
}