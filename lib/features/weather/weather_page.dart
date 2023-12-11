import 'package:flutter/material.dart';
import 'package:flutter_training/features/weather/temperature_text.dart';
import 'package:flutter_training/features/weather/weather_condition.dart';
import 'package:flutter_training/features/weather/weather_panel.dart';
import 'package:yumemi_weather/yumemi_weather.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  WeatherCondition? _weatherCondition;
  final _yumemiWeather = YumemiWeather();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: Column(
            children: [
              const Spacer(),
              Column(
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: WeatherPanel(weatherCondition: _weatherCondition),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: TemperatureText(
                            temperature: null,
                            type: TemperatureType.min,
                          ),
                        ),
                        Expanded(
                          child: TemperatureText(
                            temperature: null,
                            type: TemperatureType.max,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Flexible(
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('Close'),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              final newWeather = WeatherCondition.from(
                                _yumemiWeather.fetchSimpleWeather(),
                              );
                              setState(() {
                                _weatherCondition = newWeather;
                              });
                            },
                            child: const Text('Reload'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
