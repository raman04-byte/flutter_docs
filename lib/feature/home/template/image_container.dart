import 'package:docs_flutter/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/dimes.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({super.key});

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  bool isHovering1 = false;
  bool isHovering2 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.scaleH(100),
      width: double.infinity,
      color: AppColor.imageBackColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RotatedBox(
            quarterTurns: 2,
            child: SvgPicture.asset(
              Assets.image2,
              height: Dimensions.scaleH(100),
              width: Dimensions.scaleW(100),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: Dimensions.scaleH(23),
            ),
            child: Column(
              children: [
                Text(
                  "Flutter 3.13 scroll into view!",
                  style: TextStyle(
                      color: Colors.white, fontSize: Dimensions.scaleH(18)),
                ),
                SizedBox(
                  height: Dimensions.scaleH(5),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Check out the ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Dimensions.scaleH(18))),
                    TextSpan(
                      mouseCursor: SystemMouseCursors.click,
                      onEnter: (_) {
                        setState(() {
                          isHovering1 = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHovering1 = false;
                        });
                      },
                      text: 'announcement ',
                      style: TextStyle(
                        color: const Color(0xFF94dcf9),
                        fontSize: Dimensions.scaleH(18),
                        decoration: isHovering1
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                        text: 'and the ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Dimensions.scaleH(18))),
                    TextSpan(
                      mouseCursor: SystemMouseCursors.click,
                      onEnter: (_) {
                        setState(() {
                          isHovering2 = true;
                        });
                      },
                      onExit: (_) {
                        setState(() {
                          isHovering2 = false;
                        });
                      },
                      text: 'what\'s new',
                      style: TextStyle(
                        color: const Color(0xFF94dcf9),
                        fontSize: Dimensions.scaleH(18),
                        decoration: isHovering2
                            ? TextDecoration.underline
                            : TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: ' page',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.scaleH(18),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
          SvgPicture.asset(
            Assets.image2,
            height: Dimensions.scaleH(100),
            width: Dimensions.scaleW(100),
          )
        ],
      ),
    );
  }
}
