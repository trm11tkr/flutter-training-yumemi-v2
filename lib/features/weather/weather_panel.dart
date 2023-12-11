import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_training/features/weather/weather_condition.dart';

class WeatherPanel extends StatelessWidget {
  const WeatherPanel({required WeatherCondition? weatherCondition, super.key})
      : _weatherCondition = weatherCondition;

  final WeatherCondition? _weatherCondition;

  @override
  Widget build(BuildContext context) {
    return _weatherCondition == null
        ? const Placeholder()
        : SvgPicture.asset(_weatherCondition.imagePath);
  }
}
