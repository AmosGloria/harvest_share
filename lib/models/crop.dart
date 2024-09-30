// Define the Crop model class
class Crop {
  final String id;
  final String name;
  final int quantity;

  // Constructor
  Crop({
    required this.id,
    required this.name,
    required this.quantity,
  });

  // Factory method to create Crop instance from a JSON response
  factory Crop.fromJson(Map<String, dynamic> json) {
    return Crop(
      id: json['id'],
      name: json['name'],
      quantity: json['quantity'],
    );
  }
}
