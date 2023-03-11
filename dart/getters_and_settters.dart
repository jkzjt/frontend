import 'dart:math';

class Rectangle {
	final double width, height;
	var _center;
	
	Rectangle(this.width, this.height);
	
	// getter
	double get area => this.width * this.height;
	
	Point get center => _center;
	
	// setter
	set center(Point origin) {
		_center = Point(
			origin.x + width / 2,
			origin.y + height /2,
		);
	}
}

void main() {
	Rectangle rectangle = Rectangle(12, 13);
	print(rectangle.area);
	
	rectangle.center = Point(4, 4);
	print(rectangle.center);
}