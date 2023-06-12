import 'package:flutter/material.dart';
import 'package:smart_charge_station_app/screens/station/partials/charge_now.dart';
import 'package:smart_charge_station_app/screens/station/partials/reserve.dart';
import 'package:smart_charge_station_app/screens/station/partials/smart_charge.dart';
import 'package:smart_charge_station_app/screens/station/partials/station_info.dart';

class Station extends StatefulWidget {
  final String status;
  final String address;
  final String imagePath;
  final String distance;
  final String type;
  const Station(
      {Key? key,
      required this.status,
      required this.address,
      required this.imagePath,
      required this.distance,
      required this.type})
      : super(key: key);

  @override
  State<Station> createState() => _StationState();
}

class _StationState extends State<Station> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        titleSpacing: 0,
        title: const Text(
          'Station',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          StationInfo(
            status: widget.status,
            address: widget.address,
            imagePath: widget.imagePath,
            distance: widget.distance,
            type: widget.type,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
              children: [
                TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.transparent,
                    labelColor: Colors.teal,
                    unselectedLabelColor: Colors.grey,
                    isScrollable: true,
                    labelPadding: const EdgeInsets.only(right: 30),
                    tabs: const [
                      Tab(
                          child: Text(
                            "Charge Now",
                            style: TextStyle(fontSize: 18),
                          )),
                      Tab(
                          child: Text(
                            "Smart Charge",
                            style: TextStyle(fontSize: 18),
                          )),
                      Tab(
                          child: Text(
                            "Reserve",
                            style: TextStyle(fontSize: 18),
                          )),
                    ]),
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: TabBarView(controller: _tabController, children: const [
                    ChargeNow(),
                    SmartCharge(),
                    Reserve(),
                  ]),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}
