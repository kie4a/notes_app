import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qq/constants.dart';
import 'package:qq/cubits/add_note_cubit.dart/cubit/add_note_cubit.dart';

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
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kcolors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
              onTap: () {
                currentIdex = index;

                BlocProvider.of<AddNoteCubit>(context).color =
                    kcolors[index];
                setState(() {});
              },
              child: ColorItem(
                isActivre: currentIdex == index,
                color: kcolors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
