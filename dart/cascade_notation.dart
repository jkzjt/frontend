class Bussiness {
	var checked;
	var status;
	
	int flag() {
		if (status == 'finised' || status == 'success') {
			return 0;
		}
		return 1;
	} 
}

Bussiness getBussiness(){
	return new Bussiness();
}

void main(){
	Bussiness b =  getBussiness()
	..checked = 1
	..status = 'finised'
	..flag();
	
	print(b.flag());
}