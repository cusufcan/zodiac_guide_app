import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:zodiac_guide_app/model/zodiac_model.dart';

class ZodiacDetailView extends StatefulWidget {
  final Zodiac zodiac;
  const ZodiacDetailView({super.key, required this.zodiac});

  @override
  State<ZodiacDetailView> createState() => _ZodiacDetailViewState();
}

class _ZodiacDetailViewState extends State<ZodiacDetailView> {
  Color tempAppBarColor = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => initPaletteGenerator());
  }

  Future<void> initPaletteGenerator() async {
    _generator = await PaletteGenerator.fromImageProvider(AssetImage(widget.zodiac.bigPic));
    tempAppBarColor = _generator.dominantColor!.color;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            centerTitle: true,
            backgroundColor: tempAppBarColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(widget.zodiac.bigPic, fit: BoxFit.cover),
              title: Text(widget.zodiac.name),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(8),
              child: SingleChildScrollView(child: Text(widget.zodiac.detail, style: myTextStyle.titleMedium)),
            ),
          ),
        ],
      ),
    );
  }
}
