abstract class Animal {
	var name;
	var age;
	
	void talk();
	
	void growl() => print('gggggg');
	
}

class Cat implements Animal {
	@override
	var name;
	
	@override
	var age;
	
	Cat(this.name, this.age);
	
	@override
	void talk() {
		print('meow');
	}
	
	@override
	void growl() => print('wow');
}
class Dog implements Animal {
	@override
	var name;
	
	@override
	var age;
	
	Dog(this.name, this.age);
	
	@override
	void talk() {
		print('bark');
	}
	
	@override
	void growl() => print('haul');
}

void makeAnimalNoise(Animal animal) => animal.talk();

void main() {
	var cat = Cat('jym', 1);
	var dog = Dog('ham', 6);
	
	makeAnimalNoise(cat);
	makeAnimalNoise(dog);
	
	cat.growl();
	dog.growl();
}























