import 'package:flutter/material.dart';

class StationInfo extends StatelessWidget {
  const StationInfo({
    super.key,
    required this.status,
    required this.address,
    required this.imagePath,
    required this.distance,
    required this.type,
  });

  final String status;
  final String address;
  final String imagePath;
  final String distance;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: const TextStyle(
                        color: Colors.teal,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text("EVC Net")
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                    height: 5,
                  ),
                  RichText(
                      text: TextSpan(
                          text: type == "EVC Type Mini"
                              ? "10 ₺"
                              : "15 ₺",
                          style: const TextStyle(
                              color: Colors.teal,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                          children: const [
                            TextSpan(
                                text: "/kWh",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400))
                          ]))
                ],
              )
            ],
          ),
        ),
        Container(
          height: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter)),
        ),
        Container(
          padding:
          const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left:5,right: 7,top: 7,bottom: 7),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: Colors.teal,
                            width: 1
                        ),
                        color: Colors.teal.withOpacity(0.1)
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.electric_bolt,color: Colors.teal,size: 18,),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(
                          type == "EVC Type Mini" ? "22 kW Max" : "50 kW Max",style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color:Colors.teal
                        ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.pin_drop_outlined,
                      color: Colors.blueAccent),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(distance,
                      style:
                      const TextStyle(color: Colors.teal, fontSize: 13,fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}