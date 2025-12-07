class AnalyticsService {
  void log(String event, [Map<String, dynamic>? params]) {
    // stub
    // ignore: avoid_print
    print('Analytics: $event ${params ?? {}}');
  }
}
