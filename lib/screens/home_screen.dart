import 'package:flutter/material.dart';
import 'package:harvest_share/models/farmer.dart';
import 'package:harvest_share/services/farmer_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final FarmerService _farmerService = FarmerService();
  List<Farmer> _farmers = [];

  @override
  void initState() {
    super.initState();
    _loadFarmers();
  }

  // Method to load farmer data from the service
  void _loadFarmers() async {
    final farmers = await _farmerService.getFarmers();
    setState(() {
      _farmers = farmers;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Harvest Share'),
      ),
      body: _farmers.isEmpty
          ? Center(child: CircularProgressIndicator()) // Show loading spinner while data is loading
          : ListView.builder(
              itemCount: _farmers.length,
              itemBuilder: (context, index) {
                final farmer = _farmers[index];
                return ListTile(
                  title: Text(farmer.name),
                  subtitle: Text(farmer.location),
                );
              },
            ),
    );
  }
}
