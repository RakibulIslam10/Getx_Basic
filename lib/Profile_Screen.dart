import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:getx/Controllers/Counter_Controller.dart';
import 'package:getx/FrisScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen "),
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          GetBuilder<CounterController>(builder: (_) {
            return Text(
              counterController.counter.toString(),
              style: const TextStyle(fontSize: 32),
            );
          }),
          SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => const HomeScreen());
                  },
                  child: const Text("Go Home"))),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        title: 'Alert',
                        content: const Column(
                          children: [
                            Text("How are you man ?"),
                            Text("where are your home? "),
                            Text("Im from bangladesh ?"),
                          ],
                        ));
                  },
                  child: const Text("Dialog Msg"))),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.snackbar("welcome", 'how are you man?');
                  },
                  child: const Text("Show Snackbar"))),
        ]),
      ),
    );
  }
}
