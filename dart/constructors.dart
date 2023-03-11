class Cat {
	var name;
	var color;
	
	// standard constructor only one
	Cat(this.name, this.color); // equals to Cat();
	
	// named constructor
	// return an instance of the class, not with a return statement
	// usually with some values given defined values
	Cat.black(this.name) {
		this.color = 'Black';
	}
	
	Cat.white(this.name) {
		this.color = 'White';
	}
	
	// factory constructor
	// Factory constructors return an instance of the class, but it doesn't necessarily create a new instance. 
	// Factory constructors might return an instance that already exists, or a sub-class.
	
	/*
	 * Factory constructors do use the return key word.
     * You cannot refer to 'this' within the factory constructor.
	 */
	 factory Cat.fromJson(Map json) {
			return Cat(json['name'], json['color']);
	 }
	
	@override
	String toString() => "Cat: ${this.name}, ${this.color}";
}

void main() {
	print(Cat('Bily', 'Orange'));
	print(Cat.black('Hasiki'));
	print(Cat.white('Zoe'));
	print(Cat.fromJson({'name': 'Json', 'color': 'Blue'}));
}