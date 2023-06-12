import 'package:flutter/material.dart';

class VehicleHero extends StatelessWidget {
  const VehicleHero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/porsche-logo.png"),
                fit: BoxFit.contain,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Porsche Taycan",
            style: TextStyle(
                color: Colors.teal,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Container(
          height: 130,
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/porsche-model.png"),
                fit: BoxFit.contain,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 5)
                  ],
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "67%",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: const [
                            Text("Charging...",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17)),
                            SizedBox(
                              height: 3,
                            ),
                            Text("Complete at 16.35",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13))
                          ],
                        )
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    )
                  ])),
        )
      ],
    );
  }
}