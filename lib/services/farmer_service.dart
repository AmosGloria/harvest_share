import 'dart:convert';
import 'package:flutter/services.dart'; // For loading local assets
import 'package:harvest_share/models/farmer.dart';

class FarmerService {
  // Method to fetch farmer data (can be from an API in real-world scenario)
  Future<List<Farmer>> getFarmers() async {
    // Load farmer data from a local JSON file
    final response = await rootBundle.loadString('assets/farmers.json');
    
    // Decode the JSON data
    final List<dynamic> data = json.decode(response);
    
    // Map each JSON item to a Farmer model and return the list of farmers
    return data.map((item) => Farmer.fromJson(item)).toList();
  }
}
