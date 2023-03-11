void main() {
	String animal = 'lion';
	
	switch (animal) {
		case 'tiger':
			print('animal is a tiger');
			continue alsoCat;
		case 'lion':
			print('animal is a lion');
			continue alsoCat;
		alsoCat:
		case 'cat':
			print('also a cat');
			break;
	}
}