import 'package:docs_flutter/routing/namesroute.dart';
import 'package:docs_flutter/routing/webrounting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter documentation | Flutter',
      theme: ThemeData(fontFamily: GoogleFonts.openSans().fontFamily),
      getPages: WebRouting().getPages(),
      initialRoute: NamesRoutes.home,
    );  
  }
}
