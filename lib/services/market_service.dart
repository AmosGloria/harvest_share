import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:harvest_share/models/market.dart';

class MarketService {
  Future<List<Market>> getMarkets() async {
    final response = await rootBundle.loadString('assets/markets.json');
    final List<dynamic> data = json.decode(response);
    return data.map((item) => Market.fromJson(item)).toList();
  }
}
