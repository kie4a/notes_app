import 'package:flutter/material.dart';
import 'package:qq/widgets/custom_icon_search.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.title, required this.icon,});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(title, style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomSearchIcon(icon: icon,),
      ],
    );
  }
}
