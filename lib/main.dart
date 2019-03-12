import 'dart:async';
import 'package:flutter/material.dart';
import 'package:autodrive/components/app.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:autodrive/services/notification.dart';
import 'package:autodrive/services/camera.dart';
import 'package:camera/camera.dart';

final application = App();

void logError(String code, String message) =>
    print('Error: $code\nError Message: $message');

main() {
  runZoned(() async {
    try {
      // notification = new FlutterLocalNotificationsPlugin();
      cameras = await availableCameras();
    } on CameraException catch (e) {
      logError(e.code, e.description);
    }
    runApp(application);
  }, onError: (dynamic error, dynamic stack) {
    print(error);
    print(stack);
  });
}
