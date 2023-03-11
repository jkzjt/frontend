class User {
	var name, age;
	User(this.name, this.age);
	
	@override
	String toString() => 'User{name: $name, age: $age}';
}

var users = {
	'jt': User('Jake Tan', 24),
	'moss': User('Morris, Fort', 56),
	'scui': User('Sukky, Mott', 22),
};

User _createNewUserIfNecessary(String name, [int age = 18]) {
	User user = users.putIfAbsent(name, () => User(name, age));
	return user;
}

void main(){
	print(_createNewUserIfNecessary('moss'));
	print(_createNewUserIfNecessary('ram', 25));
	print(users);
}