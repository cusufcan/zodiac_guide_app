import 'package:flutter/material.dart';
import 'package:zodiac_guide_app/constant/project_strings.dart';
import 'package:zodiac_guide_app/ui/zodiac_list_item.dart';

import '../model/zodiac_model.dart';

class ZodiacListView extends StatelessWidget {
  late final List<Zodiac> allZodiacList;
  ZodiacListView({super.key}) {
    allZodiacList = setAllData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(ProjectStrings.appName)),
      body: Center(
        child: ListView.builder(
          primary: false,
          itemCount: allZodiacList.length,
          itemBuilder: (BuildContext context, int index) {
            return ZodiacListItem(zodiac: allZodiacList[index]);
          },
        ),
      ),
    );
  }
}

List<Zodiac> setAllData() {
  List<Zodiac> tempList = [];
  for (int i = 0; i < 12; i++) {
    var name = ProjectStrings.zodiacNames[i];
    var date = ProjectStrings.zodiacDates[i];
    var detail = ProjectStrings.zodiacDetails[i];
    var smallPic = '${ProjectStrings.zodiacNames[i].toLowerCase()}${i + 1}.png';
    var bigPic = '${ProjectStrings.zodiacNames[i].toLowerCase()}_big${i + 1}.png';

    Zodiac tempZodiac = Zodiac(name, date, detail, 'assets/images/$smallPic', 'assets/images/$bigPic');
    tempList.add(tempZodiac);
  }
  return tempList;
}
