import 'package:flutter/material.dart';

class SmartCharge extends StatelessWidget {
  const SmartCharge({Key? key}) : super(key: key);

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
                            Text("Vehicle",),
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
            ),
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
                            Text("Charge Amount",),
                            SizedBox(
                              height: 5,
                            ),
                            Text("37% to 80%",
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
            ),
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
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("Start From",),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Now",
                                    style: TextStyle(
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text("End Time",),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("Today at 21.00",
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
                  const Text("Start Smart Charging",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
            )
          ]),
    );
  }
}
