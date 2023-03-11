void optionalPositionParameter(int a, [var b]){
	print("a is $a");
	print("b is $b");
}

void optionalNamedParameter(int a, {var b, var c}){
	print("a is $a");
	print("b is $b");
	print("c is $c");
}

void optionalParameterDefaultValue(int a, {int b : 12}){
	print("a is $a");
	print("b is $b");
}

void main(){
	print("optionalPositionParameter");
	optionalPositionParameter(10);
	
	print("optionalNamedParameter");
	optionalNamedParameter(10, c : 20);
	
	print("optionalParameterDefaultValue");
	optionalParameterDefaultValue(10);
}