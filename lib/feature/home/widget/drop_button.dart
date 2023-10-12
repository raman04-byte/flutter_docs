import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../constants/dimes.dart';

class DropButton extends StatefulWidget {
  final String title;
  final List<String> items;
  final double height;
  final double menuHeight;
  final double width;
  const DropButton({
    super.key,
    required this.items,
    required this.title,
    required this.height,
    required this.width,
    required this.menuHeight,
  });

  @override
  State<DropButton> createState() => _DropButtonState();
}

class _DropButtonState extends State<DropButton> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return DropdownButton2(
      underline: Container(
        color: Colors.white,
      ),
      isExpanded: true,
      hint: Text(
        widget.title,
        style: TextStyle(
          color: const Color(0xff000000),
          fontSize: Dimensions.scaleH(15),
        ),
      ),
      items: widget.items
          .map(
            (String item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: TextStyle(
                  fontSize: Dimensions.scaleH(13),
                ),
              ),
            ),

          )
          .toList(),
      value: selectedValue,
      onChanged: (String? value) {
        setState(() {});
      },
      buttonStyleData: ButtonStyleData(
        height: widget.height,
        width: widget.width,
      ),
      menuItemStyleData: MenuItemStyleData(
        height: widget.menuHeight,
      ),
    );
  }
}
