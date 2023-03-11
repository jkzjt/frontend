void main() {
	var cart = {
		"noodles": 18.8,
		"eggs": 27.6,
		"banana": 30,
		"apple": 31
	};
	
	print(cart.length);
	print(cart.keys);
	print(cart.values);
	print(cart["eggs"]);
	print(cart.containsKey("apple"));
	
	cart.remove("noodles");
	print(cart);
}