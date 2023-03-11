class User {
	var name, age;
	bool isSpecialUser = false;
	
	User(this.name, this.age);
	
	@override
	String toString() => 'User{name: $name, age: $age, isSpecialUser: $isSpecialUser}';
}

void main() {
	var poly = User('Poly', 40);
	var rose = User('Rose', 18);
	var martt = User('Martt', 20);
	
	final users = [poly, rose, martt];
	// return an Iterable<T>
	final names = users.map((User user) => user.name);
	print(names);
	
	print(users);
	// can make some changes by `map`
	final symbols = users.map((User user) => user.isSpecialUser = true);
	print(symbols);
	print(users);
	
	/*
		*flattening nested lists
		*duplicating elements in a list (which you can also change as you're duplicating);
	*/
	var pairs = [[1, 2], [3, 4]];
	var flattened = pairs.expand((pair) => pair).toList();
	print(flattened);
	
	var input = [1, 2, 3];
	var duplicated = input.expand((i) => [i, i]).toList();
	print(duplicated);
	
}