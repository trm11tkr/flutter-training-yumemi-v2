import 'package:flutter/widgets.dart';
import 'package:flutter_training/features/splash/splash_page.dart';
import 'package:flutter_training/features/weather/weather_page.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

@TypedGoRoute<SplashRoute>(path: '/splash')
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const SplashPage();
}

@TypedGoRoute<WeatherRoute>(path: '/weather')
class WeatherRoute extends GoRouteData {
  const WeatherRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const WeatherPage();
}
