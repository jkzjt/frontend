class Cat {
	var name;
	var color;
}

void main() {
	// Cat cat = new Cat(); 
	Cat cat = Cat(); // the `new` keyword is optional in Dart 2
	cat.name = 'Dom';
	cat.color = 'White';
	
	print(cat);
	print(cat.name);
	print(cat.color);
	
}