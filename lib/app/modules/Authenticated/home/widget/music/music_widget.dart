import 'package:flutter/material.dart';
import 'package:meditation/app/modules/Authenticated/home/widget/sleep/sleeping_grid.dart';

class MusicWidget extends StatelessWidget {
  const MusicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SleepingView(
      istab: true,
    );
  }
}
