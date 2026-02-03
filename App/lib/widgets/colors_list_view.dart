import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActivre, required this.color});
  final bool isActivre;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActivre
        ? CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(radius: 34, backgroundColor: color),
          )
        : CircleAvatar(radius: 38, backgroundColor: color);
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIdex = 0;
  List<Color> colors = const [
    Color(0xff292F36),
    Color(0xff4ECDC4),
    Color(0xffF7FFF7),
    Color(0xffFF6B6B),
    Color(0xffFFE66D),
    Color(0xffADFCF9),
    Color(0xff89A894),
    Color(0xff4B644A),
    Color(0xff49393B),
    Color(0xff341C1C), 
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIdex = index;
                setState(() {});
              },
              child: ColorItem(
                isActivre: currentIdex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
