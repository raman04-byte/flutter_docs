import 'package:docs_flutter/constants/assets.dart';
import 'package:docs_flutter/constants/dimes.dart';
import 'package:docs_flutter/feature/home/widget/appbar_icon.dart';
import 'package:docs_flutter/feature/home/widget/drop_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_icons/simple_icons.dart';

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
              DropButton(
                items: const [
                  'Mobile',
                  'Web',
                  'Desktop',
                  'Embedded',
                ],
                title: 'Multi-Platform',
                height: Dimensions.scaleH(40),
                width: Dimensions.scaleH(135),
                menuHeight: Dimensions.scaleH(35),
              ),
              DropButton(
                items: const [
                  'Learn',
                  'Flutter Favorites',
                  'Packages',
                  'Monetization',
                  'Games',
                  'News'
                ],
                title: 'Development',
                height: Dimensions.scaleH(40),
                width: Dimensions.scaleW(33),
                menuHeight: Dimensions.scaleH(40),
              ),
              DropButton(
                items: const [
                  'Community',
                  'Events',
                  'Culture',
                ],
                title: 'Ecosystem',
                height: Dimensions.scaleH(40),
                width: Dimensions.scaleW(25),
                menuHeight: Dimensions.scaleH(35),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.scaleW(5),
                ),
                child: Text(
                  'Showcase',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: Dimensions.scaleH(15),
                  ),
                ),
              ),
              DropButton(
                items: const [
                  "What's new",
                  'Editor Support',
                  'Hot reload',
                  'Profiling',
                  'Install Flutter',
                  'DevTools',
                  'Cookbook',
                  'Codelabs'
                ],
                title: 'Docs',
                height: Dimensions.scaleH(40),
                width: Dimensions.scaleW(30),
                menuHeight: Dimensions.scaleH(35),
              ),
              const Icon(
                Icons.search,
                color: Color(0xFF6e7274),
              ),
              const AppBarIcon(
                icon: SimpleIcons.twitter,
              ),
              const AppBarIcon(
                icon: SimpleIcons.youtube,
              ),
              const AppBarIcon(
                icon: SimpleIcons.medium,
              ),
              const AppBarIcon(
                icon: SimpleIcons.github,
              ),
              Container(
                height: Dimensions.scaleH(38),
                width: Dimensions.scaleW(30),
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
      ],
    );
  }
}
