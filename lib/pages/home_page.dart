import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/heading.dart';
import 'package:travel_app_ui/components/label_section.dart';
import 'package:travel_app_ui/components/recommended.dart';
import 'package:travel_app_ui/components/search.dart';
import 'package:travel_app_ui/components/top.dart';
import 'package:travel_app_ui/utils/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: medium, top: 50, right: medium),
          child: Column(
            children: [
              const HeadingSection(),
              SizedBox(height: medium),
              const SearchSection(),
              SizedBox(height: medium),
              LabelSection(text: 'Recommended', style: heading1),
              SizedBox(height: medium),
              const Recommended(),
              SizedBox(height: medium),
              LabelSection(text: 'Top Destinations', style: heading2),
              const Top(),
              SizedBox(height: medium),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 94,
        child: BottomNavigationBar(
          iconSize: 29,
          selectedItemColor: accent,
          unselectedItemColor: icon,
          backgroundColor: white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark_outline), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: ''),
          ],
        ),
      ),
    );
  }
}
