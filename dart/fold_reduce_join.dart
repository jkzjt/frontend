void main() {
	// fold
	var codeNum = [6,6,2,0,5,9];
	const initialValue = '';
	final codeString = codeNum.fold(initialValue, (previousValue, element) => '$previousValue$element');
	print(codeString);
	
	// reduce
	var price = [12.9, 9.8, 4.6, 8.8, 26.7];
	final totalPrice = price.reduce((previousValue, element) => previousValue + element);
	print(totalPrice);
	
	// join
	var datas = ['userId', 'ID', 'orderId', 'price'];
	final sn = datas.join('-');
	print(sn);
}
