import 'package:flutter/material.dart';
import 'package:zodiac_guide_app/constant/project_colors.dart';
import 'package:zodiac_guide_app/model/zodiac_model.dart';
import 'package:zodiac_guide_app/view/zodiac_detail_view.dart';

class ZodiacListItem extends StatelessWidget {
  final Zodiac zodiac;
  const ZodiacListItem({super.key, required this.zodiac});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      child: ListTile(
        contentPadding: const EdgeInsets.all(8),
        leading: Image.asset(zodiac.smallPic),
        title: Text(zodiac.name, style: myTextStyle.headlineSmall),
        subtitle: Text(zodiac.date, style: myTextStyle.titleMedium),
        trailing: const Icon(Icons.arrow_forward_ios, color: ProjectColors.primarySwatch),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ZodiacDetailView(zodiac: zodiac)));
        },
      ),
    );
  }
}
