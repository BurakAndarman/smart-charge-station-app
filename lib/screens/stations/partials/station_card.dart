import 'package:flutter/material.dart';
import '../../station/station.dart';

class StationCard extends StatelessWidget {
  final String status;
  final String address;
  final String imagePath;
  final String distance;
  final String type;

  const StationCard({
    super.key,
    required this.status,
    required this.address,
    required this.imagePath,
    required this.distance,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Station(
                  status: status,
                  address: address,
                  imagePath: imagePath,
                  distance: distance,
                  type: type)),
        );
      },
      child: Container(
          height: 220,
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 3)
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  margin: const EdgeInsets.all(10),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 3)
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(type,
                              style: const TextStyle(
                                  color: Colors.teal,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(address),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              status == "Available"
                                  ? const Icon(Icons.check, color: Colors.green)
                                  : const Icon(Icons.cancel_outlined,
                                      color: Colors.red),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(status,
                                  style: const TextStyle(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13))
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.pin_drop_outlined,
                                  color: Colors.blueAccent),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(distance,
                                  style: const TextStyle(
                                      color: Colors.teal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13))
                            ],
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          )),
    );
  }
}
