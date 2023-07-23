import 'package:flutter/material.dart';
import 'package:zodiac_guide_app/constant/project_colors.dart';
import 'package:zodiac_guide_app/constant/project_strings.dart';

import 'view/zodiac_list_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ProjectStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: ProjectColors.primarySwatch),
      home: ZodiacListView(),
    );
  }
}
