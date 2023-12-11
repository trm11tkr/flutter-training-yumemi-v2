import 'package:flutter/material.dart';

enum TemperatureType {
  min,
  max,
}

extension TemperatureTypeColor on TemperatureType {
  Color get color => switch (this) {
        TemperatureType.min => Colors.blue,
        TemperatureType.max => Colors.red
      };
}

class TemperatureText extends StatelessWidget {
  const TemperatureText({
    required int? temperature,
    required TemperatureType type,
    super.key,
  })  : _temperature = temperature,
        _type = type;

  final int? _temperature;
  final TemperatureType _type;

  @override
  Widget build(BuildContext context) {
    final textColor = _type.color;
    final labelLarge = Theme.of(context).textTheme.labelLarge!;
    final textStyle = labelLarge.copyWith(
      color: textColor,
    );
    return Text(
      '${_temperature ?? "**"}℃',
      textAlign: TextAlign.center,
      style: textStyle,
    );
  }
}
