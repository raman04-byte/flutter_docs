import 'package:docs_flutter/constants/dimes.dart';
import 'package:flutter/material.dart';

class AppBarIcon extends StatefulWidget {
  final IconData icon;
  const AppBarIcon({super.key, required this.icon});

  @override
  State<AppBarIcon> createState() => _AppBarIconState();
}

class _AppBarIconState extends State<AppBarIcon> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.scaleW(2),
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          setState(() {
            
          isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            
          isHovered = false;
          });
        },
        child: Icon(
          widget.icon,
          color: isHovered ? Colors.black : const Color(0xFF6e7274),
        ),
      ),
    );
  }
}
