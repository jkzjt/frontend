class Person {
	String name;
	
	String getPerson {
		return name;
	}
	
	void setPerson(String name) {
		this.name = name;
	}
	
	void result() {
		print(name);
	}
}

void main() {
	Person p = new Person();
	p.setPerson('jt a graduate is seeking for a job');
	p.result();
}