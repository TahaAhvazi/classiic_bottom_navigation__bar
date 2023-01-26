import 'dart:math';

import 'package:flutter/material.dart';

class ClassicButtomNavBar extends StatelessWidget {
  final int selectedIndex;
  final int iconSize;
  final double height, width;
  final Color backgroundColor;
  final double borderRadius;
  final double iconBorderRadius;
  final List<ClassicBottomNavyBarItem> items;
  final ValueChanged<int> onItemSelected;
  const ClassicButtomNavBar({
    Key? key,
    this.selectedIndex = 0,
    this.iconSize = 30,
    this.height = 100,
    this.width = 200,
    this.borderRadius = 12.0,
    this.iconBorderRadius = 12.0,
    this.backgroundColor = const Color.fromARGB(255, 20, 0, 53),
    required this.items,
    required this.onItemSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: items.map((item) {
            var index = items.indexOf(item);
            return GestureDetector(
              onTap: () {
                onItemSelected(index);
              },
              child: _myItem(
                iconSize: iconSize,
                item: item,
                isSelected: index == selectedIndex,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _myItem extends StatelessWidget {
  final int iconSize;
  final ClassicBottomNavyBarItem item;
  final bool isSelected;

  const _myItem({
    Key? key,
    required this.iconSize,
    required this.item,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedContainer(
            transform:
                isSelected ? Matrix4.rotationY(pi / 8) : Matrix4.rotationY(0.0),
            curve: Curves.easeInCirc,
            decoration: BoxDecoration(
              color: isSelected
                  ? Colors.blue
                  : const Color.fromARGB(255, 164, 68, 255),
              borderRadius: isSelected
                  ? BorderRadius.circular(30.0)
                  : BorderRadius.circular(10.0),
            ),
            height: isSelected ? 60 : 50,
            width: isSelected ? 60 : 50,
            duration: const Duration(milliseconds: 500),
            child: IconTheme(
              data: const IconThemeData(
                color: Colors.white,
                size: 30,
              ),
              child: item.icon,
            ),
          ),
        ),
        Text(
          item.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isSelected ? Colors.white : Colors.deepPurpleAccent,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}

class ClassicBottomNavyBarItem {
  final Icon icon;
  final String title;

  const ClassicBottomNavyBarItem({
    Key? key,
    required this.icon,
    required this.title,
  });
}
