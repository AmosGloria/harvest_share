// Define the Market model class
class Market {
  final String id;
  final String name;
  final String location;

  // Constructor
  Market({
    required this.id,
    required this.name,
    required this.location,
  });

  // Factory method to create Market instance from a JSON response
  factory Market.fromJson(Map<String, dynamic> json) {
    return Market(
      id: json['id'],
      name: json['name'],
      location: json['location'],
    );
  }
}
