import 'package:flutter/material.dart';
import 'package:smart_charge_station_app/screens/vehicle/vehicle.dart';

class MainpageBody extends StatelessWidget {
  const MainpageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: ListView(
          children: const [VehiclesWidget(), StatisticsWidget()],
        ),
      ),
    );
  }
}

class StatisticsWidget extends StatelessWidget {
  const StatisticsWidget({
    super.key,
  });

  Widget _statisticsCard(){
    return InkWell(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.green, Colors.teal]),
              borderRadius: BorderRadius.circular(7)),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.bar_chart,
                      size: 65,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: const [
                        Text("Last Month",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("4 kWh Used",
                            style: TextStyle(color: Colors.white))
                      ],
                    )
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )
              ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Statistics",
            style: TextStyle(
                color: Colors.teal, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(
            height: 15,
          ),
          _statisticsCard(),
        ],
      ),
    );
  }
}



class VehiclesWidget extends StatelessWidget {
  const VehiclesWidget({
    super.key,
  });

  Widget _vehicleCard(BuildContext context){
    return InkWell(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(
              builder: (context) => const Vehicle()),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(5),
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 65,
                  width: 130,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage("assets/images/porsche-model.png")),
                      color: Colors.white),
                ),
                Column(
                  children: [
                    const Text(
                      "Porsche Taycan",
                      style: TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blueAccent,
                      ),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.electric_bolt_outlined,
                            color: Colors.white,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "67%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.teal)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "My Cars",
              style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      "View Others",
                      style: TextStyle(
                          color: Colors.teal, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.teal,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        _vehicleCard(context),
      ],
    );
  }
}