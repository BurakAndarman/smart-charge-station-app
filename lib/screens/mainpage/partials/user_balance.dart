import 'package:flutter/material.dart';

class UserBalance extends StatelessWidget {
  const UserBalance({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      padding: const EdgeInsets.only(top: 20, bottom: 30, left: 30, right: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 8),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Text(
                    "BA",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Text(
                "Burak Andarman",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              width: double.infinity,
              height: 180,
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [Colors.blueAccent, Colors.lightBlueAccent]),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Personal Wallet",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Balance",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              RichText(
                                  text: const TextSpan(
                                      text: "750,00",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                      children: [
                                        TextSpan(
                                            text: " ₺",
                                            style: TextStyle(fontSize: 18))
                                      ]))
                            ]),
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(right: 10),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ))
                  ]))
        ],
      ),
    );
  }
}