extension on DateTime {
	String get humanize => "${this.year}/${this.month}/${this.day}";
}

void main() {
	final date = DateTime.now();
	
	print(date.humanize);
}