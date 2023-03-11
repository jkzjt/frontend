class Rectangle {

	final double width;
	final double height;
	final double area;
	
	Rectangle(this.width, this.height)
		: area = width * height {
			print(area);
		}

}

void main() {
	Rectangle(3, 4);
}