import 'package:flutter/material.dart';
import 'package:smart_charge_station_app/models/item.dart';

class Guide extends StatefulWidget {
  const Guide({Key? key}) : super(key: key);

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  final List<Item> items = [
    Item(header: "How can I change the payment method?",body: "You can change the payment method from the 'Payment Method' tab in the settings section."),
    Item(header: "Is there a time limit for station reservations?",body: "Yes, stations can be reserved up to 1 hour in advance."),
    Item(header: "What is the difference between Max and Mini station models?",body: "The Max model station can provide more energy per hour compared to the Mini model. Therefore, you can complete your charging process in a shorter time. However, the hourly cost is higher compared to the Mini model."),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SingleChildScrollView(
        child:ExpansionPanelList.radio(
        children: items.map((item) => ExpansionPanelRadio(
          canTapOnHeader: true,
          headerBuilder: (context,isExpanded) => ListTile(
            title: Text(
              item.header,
              style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.teal),
            ),
          ),
          value: item.header,
          body: ListTile(title:Text(item.body,style: const TextStyle(fontSize: 15),)),
        )).toList(),
        )
        )
      ],
    );
  }
}
