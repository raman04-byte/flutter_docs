import 'package:docs_flutter/feature/home/template/home_row.dart';
import 'package:docs_flutter/feature/home/template/image_container.dart';
import 'package:flutter/material.dart';


class HomeTemplate extends StatefulWidget {
  const HomeTemplate({super.key});

  @override
  State<HomeTemplate> createState() => _HomeTemplateState();
}

class _HomeTemplateState extends State<HomeTemplate> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeRow(),
        ImageContainer(),
      ],
    );
  }
}
