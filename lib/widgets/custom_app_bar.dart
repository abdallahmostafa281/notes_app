import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.titel, required this.icon});
  final String titel;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titel,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        const Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
