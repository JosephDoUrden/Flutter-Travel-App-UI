import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/card_rec.dart';
import 'package:travel_app_ui/models/destination.dart';

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    List<Destination> destinations = [
      Destination('square-1', 'Japan Temple', '120', 'Osaka Street, Japan'),
      Destination('square-2', 'Capura Mero', '100', 'Tokyo Street, Japan'),
      Destination('square-3', 'Telaga', '80', 'Bandung'),
      Destination('square-4', 'Sungai', '100', 'Ciliwing'),
    ];
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: destinations.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var dest = destinations[index];
          return CardRecommended(
            image: dest.image,
            name: dest.name,
            price: dest.price,
            location: dest.location,
          );
        },
      ),
    );
  }
}
