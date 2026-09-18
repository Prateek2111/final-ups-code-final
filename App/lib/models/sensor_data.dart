class SensorData {
  final double temperature;
  final double humidity;
  final double distance;
  final double battery;
  final double inputVoltage;
  final double current;

  const SensorData({
    required this.temperature,
    required this.humidity,
    required this.distance,
    required this.battery,
    required this.inputVoltage,
    required this.current,
  });

  factory SensorData.fromJson(Map<String, dynamic> json) {
    return SensorData(
      temperature: _toDouble(json['temperature']),
      humidity: _toDouble(json['humidity']),
      distance: _toDouble(json['distance']),
      battery: _toDouble(json['battery']),
      inputVoltage: _toDouble(json['inputVoltage']),
      current: _toDouble(json['current']),
    );
  }

  static double _toDouble(dynamic value) {
    if (value is num) {
      return value.toDouble();
    }
    return double.tryParse(value?.toString() ?? '') ?? 0;
  }
}
