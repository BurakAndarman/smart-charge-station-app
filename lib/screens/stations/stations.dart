import 'package:flutter/material.dart';
import 'package:smart_charge_station_app/screens/stations/partials/station_card.dart';

class Stations extends StatelessWidget {
  const Stations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: const Text(
            "Stations Nearby",
            style: TextStyle(
                color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 28),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView(
            children: const [StationCard(
              status: "Available",
              address: "Camlica St.,Beylerbeyi",
              imagePath: "assets/images/location1.jpeg",
              distance: "700 m away",
              type: "EVC Type Mini"
            ),StationCard(
                status: "Available",
                address: "Ikizler St.,Sisli",
                imagePath: "assets/images/location2.jpeg",
                distance: "1,2 km away",
                type: "EVC Type Max"
            ),StationCard(
                status: "Available",
                address: "Aydın St.,Besiktas",
                imagePath: "assets/images/location3.jpeg",
                distance: "1,5 km away",
                type: "EVC Type Mini"
            )],
          ),
        )
      ],
    );
  }
}

