import 'package:test/test.dart'

int getSumOfArray(List<int> arr){
	int res = 0;
	for(var i = 0; i < arr.length; i++){
		res += arr[i];
	}
	return res;
}

void main(){
	test('test for getSumOfArray', (){
		int expectedValue = 15;
		int actualValue = getSumOfArray([1, 2, 3, 4, 5]);
		expect(expectValue, actualValue);
	})
}
