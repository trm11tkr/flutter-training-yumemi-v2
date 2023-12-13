import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_training/router.dart';
import 'package:flutter_training/utils/mixin/after_layout_mixin.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AfterLayoutMixin {
  static const _waitingTime = Duration(milliseconds: 500);

  @override
  void afterLayout() {
    unawaited(_goToWeatherPage());
  }

  Future<void> _goToWeatherPage() async {
    await Future<void>.delayed(_waitingTime);
    if (!context.mounted) {
      return;
    }

    await const WeatherRoute().push<void>(context);

    unawaited(afterActionFrameCompletes());
  }

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(color: Colors.green);
  }
}
