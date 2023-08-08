import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/card_top.dart';

import '../models/destination.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination('square-4', 'Sungai', '100', 'Ciliwing'),
      Destination('square-1', 'Temple', '120', 'Japan'),
      Destination('square-3', 'Telaga', '80', 'Bandung'),
    ];
    return SizedBox(
      height: 75,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: destinations.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          var dest = destinations[index];
          return CardTop(
            image: dest.image,
            name: dest.name,
            location: dest.location,
          );
        },
      ),
    );
  }
}
