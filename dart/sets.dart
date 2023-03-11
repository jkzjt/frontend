void main() {
	// Sets and maps have the the same syntax for their literal implementation. 
	// When you define a set literal, you must annotate the type of the variable. 
	// Otherwise, it will default to a `Map`. 
	
	Set<int> set = Set();
	set.add(2);
	set.add(3);
	set.add(3);
	print(set);
	
	Set<int> set2 = {1, 4, 6};
	print(set2);
}