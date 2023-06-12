import 'package:flutter/material.dart';
import 'package:smart_charge_station_app/screens/mainpage/partials/mainpage_body.dart';
import 'package:smart_charge_station_app/screens/mainpage/partials/user_balance.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        UserBalance(),
        MainpageBody(),
      ],
    );
  }
}