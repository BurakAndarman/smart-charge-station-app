import 'package:flutter/material.dart';

class VehicleOptions extends StatelessWidget {
  const VehicleOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        InkWell(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.teal.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 3)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.battery_charging_full,
                          size: 33,
                          color: Colors.teal,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Car integration",
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text("Connected",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.teal,
                    )
                  ])),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.teal.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 3)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.supervised_user_circle_rounded,
                          size: 33,
                          color: Colors.teal,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Car sharing",
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text("Shared with 1 user",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.teal,
                    )
                  ])),
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.teal.withOpacity(0.1),
                        spreadRadius: 3,
                        blurRadius: 3)
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.edit,
                          size: 33,
                          color: Colors.teal,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Car details",
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text("Edit car info",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.teal,
                    )
                  ])),
        )
      ],
    );
  }
}