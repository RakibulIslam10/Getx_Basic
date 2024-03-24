import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:getx/Test_App.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => const TestApp(), // Wrap your app
      ),
    );
