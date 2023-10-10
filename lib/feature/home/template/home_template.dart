import 'package:docs_flutter/constants/assets.dart';
import 'package:docs_flutter/constants/dimes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTemplate extends StatefulWidget {
  const HomeTemplate({super.key});

  @override
  State<HomeTemplate> createState() => _HomeTemplateState();
}

class _HomeTemplateState extends State<HomeTemplate> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: Dimensions.scaleH(10),
            horizontal: Dimensions.scaleW(5),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                Assets.image1,
                height: Dimensions.scaleH(37),
              ),
              const Spacer(),
              DropdownButton(
                // underline: Colors.white,
                hint: const Text("Hindi"),
                items: const [
                  DropdownMenuItem(
                    child: Text(
                      "English",
                    ),
                  )
                ],
                onChanged: (change) {},
              ),
              Container(
                height: Dimensions.scaleH(35),
                width: Dimensions.scaleW(33),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color(0xFF1389fd),
                ),
                child: Text(
                  "Get started",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.scaleH(15),
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        // SideNavigationBar(
        //   selectedIndex: 1,
        //   items: [
        //     SideNavigationBarItem(icon: Icons.abc, label: "lsd")
        //   ],
        //   onTap: (a) {},
        // )
      ],
    );
  }
}
