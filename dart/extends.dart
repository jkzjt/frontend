class Animal {
	var name, age;
	
	Animal(this.name, this.age);
	
	void talk(){
		print('ggggggg');
	}
}

class Cat extends Animal{
	
	Cat(var name, var age) : super(name, age);
	
	@override
	void talk() {
		print('meow');
	}
	
}

class Dog extends Animal {

	Dog(var name, var age) : super(name, age);
	
	@override
	void talk() {
		print('bark');
	}

}

void main() {

	var cat = Cat('suke', 1);
	var dog = Dog('jam', 2);
	
	cat.talk();
	dog.talk();

}