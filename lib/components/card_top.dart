import 'package:flutter/material.dart';
import 'package:travel_app_ui/utils/styles.dart';

class CardTop extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  const CardTop({super.key, required this.image, required this.name, required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      width: 156,
      height: 75,
      margin: const EdgeInsets.only(right: 36),
      child: Row(
        children: [
          const SizedBox(width: 6),
          Container(
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/images/$image.png'),
              ),
            ),
            height: 69,
            width: 69,
          ),
          SizedBox(width: xsmall),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name, style: heading4),
              Text(location, style: p3),
            ],
          ),
        ],
      ),
    );
  }
}
