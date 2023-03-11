void main() {
	/*
		where returns a new Iterable instance, and does not mutate the original list.
		if no elements pass the "test", an empty iterable is returned. It will not throw an error.
		Some other filtering, where-like methods -- like singleWhere and firstWhere, 
		will throw an error if no element in the list satisfies the test and callback is omitted.
	*/
	final words = ['meow','haul','waw','bark','zzzzzz','woooo'];
	
	final fourLettersWords = words.where((String word) => word.length == 4);
	
	print(fourLettersWords);

	// takeWhile scan the list from index 0, take it if the element match `test`, until any element not match `test`.
	// skipWhile scan the list from index 0, skip it if the element match `test`, until any element not match `test`.
	final unorderedNums = [0,4,6,9,3,4,4,7];
	final orderedNums = [4,5,6,7,8,64,99,101];
	
	final lessThan4Nums = unorderedNums.takeWhile((int n) => n < 4);
	print(lessThan4Nums); // [0]
	final lessOrEqual9Nums = orderedNums.takeWhile((int n) => n <= 9);
	print(lessOrEqual9Nums); // [4,5,6,7,8]
	
	final greaterThan5Nums = unorderedNums.skipWhile((int n) => n < 6);
	print(greaterThan5Nums); // [6,9,3,4,4,7]
	final greaterThan100Nums = orderedNums.skipWhile((int n) => n < 101);
	print(greaterThan100Nums); // [101]
	
}