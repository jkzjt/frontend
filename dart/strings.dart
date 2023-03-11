void main() {
	String s = 'Hello, World!';
	print(s);
	
	print("Hello, " + "World");
	print("Hello" ", " "World");
	
	var age = 24;
	print("Last year, my age was $age");
	print("Now, I'am ${age + 1}");
	
	String str = 'jobneeded';
	
	print(str.split(""));
	
	assert(str.length == 9);
	
	print(str.indexOf('d'));
	
	print(str.contains("need"));
}