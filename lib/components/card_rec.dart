import 'package:flutter/material.dart';
import 'package:travel_app_ui/utils/styles.dart';

class CardRecommended extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String location;

  const CardRecommended({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: small),
      width: 200,
      height: 250,
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(26),
        image: DecorationImage(
          image: AssetImage('assets/images/$image.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(26),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(0, 0, 0, 0.75),
              Colors.transparent,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: small, bottom: medium),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: accentLight,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 36,
                      width: 68,
                      child: Center(
                        child: Text('\$$price', style: pPrice),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: pBold),
                  Text(location, style: pLocation),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
