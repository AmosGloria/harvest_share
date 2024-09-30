import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:harvest_share/models/crop.dart';

class CropService {
  Future<List<Crop>> getCrops() async {
    final response = await rootBundle.loadString('assets/crops.json');
    final List<dynamic> data = json.decode(response);
    return data.map((item) => Crop.fromJson(item)).toList();
  }
}
