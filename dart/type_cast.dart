class User {
	void accessMyRecords() => print('My records');
}

class Manager extends User {
	void accessEmployeeRecords() => print('All users records');
}

class Bartender extends User {

}

void accessRecords(User user, bool isManager) {
	if(isManager) {
		(user as Manager).accessEmployeeRecords();
	}
	
	user.accessMyRecords();
}

void main() {
	List<int> ages = [18, 19, 20, 21, 22, 23, 24];
	final adult = ages.where((e) => e > 21);
	print(adult.runtimeType); // WhereIterable<int>
	
	// as 
	// Importantly, `as` can only cast down. So, `User` as `Manager` is fine, but `Manager` as `User` is not okay.
	accessRecords(Manager(), true);
	
	// cast
	List<num> nums = [1, 2, 3.1];
	for(var n in nums) {
		print(n.runtimeType);
	}
	List<int> ints = nums.cast<int>();
	for(var n in nums) {
		print(n.runtimeType);
	}
}