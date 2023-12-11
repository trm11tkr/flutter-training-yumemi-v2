import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_training/router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const _waitingTime = Duration(milliseconds: 500);

  Future<void> _goToWeatherPage() async {
    await SchedulerBinding.instance.endOfFrame;
    await Future<void>.delayed(_waitingTime);
    if (!context.mounted) {
      return;
    }

    await const WeatherRoute().push<void>(context);

    unawaited(_goToWeatherPage());
  }

  @override
  void initState() {
    super.initState();
    unawaited(_goToWeatherPage());
  }

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(color: Colors.green);
  }
}
