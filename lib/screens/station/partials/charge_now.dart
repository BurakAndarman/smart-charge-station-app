import 'package:flutter/material.dart';

class ChargeNow extends StatelessWidget {
  const ChargeNow({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        InkWell(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.teal.withOpacity(0.1),
                    spreadRadius: 3,
                    blurRadius: 3)
              ], color: Colors.white, borderRadius: BorderRadius.circular(7)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Vehicle",
                            style: TextStyle(
                              color: Colors.teal,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Text("Porsche Taycan",
                            style: TextStyle(
                                color: Colors.teal,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.teal,
                    )
                  ])),
        ),Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color : Colors.blueAccent
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.white
                    ),
                    child: const Icon(Icons.arrow_forward,size: 20,),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("Start Charging",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
            )
      ]),
    );
  }
}
