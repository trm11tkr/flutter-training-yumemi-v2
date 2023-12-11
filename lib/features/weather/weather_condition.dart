enum WeatherCondition {
  sunny('assets/images/sunny.svg'),
  cloudy('assets/images/cloudy.svg'),
  rainy('assets/images/rainy.svg');

  const WeatherCondition(this.imagePath);

  factory WeatherCondition.from(String name) =>
      WeatherCondition.values.singleWhere(
        (element) => element.name == name,
        orElse: () => throw Exception('$name is invalid'),
      );

  final String imagePath;
}
