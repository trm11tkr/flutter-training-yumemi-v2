import 'package:flutter/material.dart';
import 'package:flutter_training/temperature_text.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: FractionallySizedBox(
            widthFactor: 0.5,
            child: Column(
              children: [
                const Spacer(),
                const Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Placeholder(),
                    ),
                    Padding(
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
                      Row(
                        children: [
                          const SizedBox(height: 80),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
                              child: const Text('Close'),
                            ),
                          ),
                          Expanded(
                            child: TextButton(
                              onPressed: () {},
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
      ),
    );
  }
}
