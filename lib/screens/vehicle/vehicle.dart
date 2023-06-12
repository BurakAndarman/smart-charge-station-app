import 'package:flutter/material.dart';
import 'package:smart_charge_station_app/screens/vehicle/partials/vehicle_hero.dart';
import 'package:smart_charge_station_app/screens/vehicle/partials/vehicle_options.dart';

class Vehicle extends StatelessWidget {
  const Vehicle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          'Vehicle',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
          child: Column(children: const [
            VehicleHero(),
            VehicleOptions()
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: const Icon(
          Icons.cancel,
          color: Colors.white,
        ),
      ),
    );
  }
}

