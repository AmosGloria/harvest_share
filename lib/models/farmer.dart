// Define the Farmer model class
class Farmer {
  final String id;
  final String name;
  final String location;
  
  // Constructor
  Farmer({
    required this.id,
    required this.name,
    required this.location,
  });

  // Factory method to create Farmer instance from a JSON response
  factory Farmer.fromJson(Map<String, dynamic> json) {
    return Farmer(
      id: json['id'],
      name: json['name'],
      location: json['location'],
    );
  }
}
