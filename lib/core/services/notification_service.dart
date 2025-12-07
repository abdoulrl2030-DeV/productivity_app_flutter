class NotificationService {
  Future<void> show(String title, String body) async {
    // stub: in web you can use browser notifications
    // left as simple log for now
    // ignore: avoid_print
    print('Notification: $title - $body');
  }
}
