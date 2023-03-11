class Dryer {
	final int power;
	
	Dryer(this.power);
	
	// basic method
	void cood() {
		_start();
	}
	
	void warm() {
	
	}
	
	void hot() {
	
	}
	void close() {
		_end();
	}
	
	// private method 
	// not exposed to any instance of the class
	void _start() {
		print("start at: " + DateTime.now().toString());
	}
	
	void _end() {
		print("end at: " + DateTime.now().toString());
	}
	
	// static method
	// a static method isn't tied to an instance
	// rather, it's logically tied to a class. 
	// static methods are compile-time constant, 
	// so you don't have access to 'this'
	static int compareWatts(Dryer a, Dryer b) {
		if(a.power > b.power) return 1;
		if(a.power < b.power) return -1;
		
		return 0;
	}
}

void main() {
	Dryer a = Dryer(1500);
	Dryer b = Dryer(1800);
	
	a.cood();
	a.close();
	
	// calling a static method
    // which you must call on the class, rather than the instance
	print(Dryer.compareWatts(a, b));
}