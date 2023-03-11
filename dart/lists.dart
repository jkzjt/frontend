void main() {
	var list = List.empty(growable: true);
	list.add([1, 2]);
	
	var list2 = [1, 2, 3];
	
	List<int> list3 = [4, 5, 6];
	
	assert(list3.length == 3);
	
	print(list3.first);
	print(list3.last);
	
	list3.add(3);
	list3.addAll([2, 1]);
	
	print(list3);
	
	// spread operator ...
	var list4 = [0, ...list2];
	print(list4);
	
	var list5;
	var list6 = [7, 8, 9, ...?list5];
	print(list5);
	print(list6);
	
	// if
	bool showToday = false;
	var listOfDays = [
		"Yesterday", 
		if(showToday) "Today", 
		"Tomorrow"
	];
	print(listOfDays);
	
	// for
	var listOfDateTime = [
		DateTime(2020, 10, 24),
		DateTime(2021, 10, 24),
		DateTime(2022, 10, 24),
	];
	
	var humanReadableListOfDays = [
		"2018-10-24 00:00:00.000", 
		for(var day in listOfDateTime) day.toString(),
		"2023-02-26 00:00:00.000",
	];
	print(humanReadableListOfDays);
}