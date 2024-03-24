import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controllers/Counter_Controller.dart';
import 'package:getx/Profile_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home "),
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          GetBuilder<CounterController>(builder: (_) {
            return Text(
              counterController.counter.toString(),
              style: const TextStyle(fontSize: 32),
            );
          }),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    counterController.increment();
                  },
                  child: const Text("Increment"))),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => const ProfileScreen());
                  },
                  child: const Text("NEw Screen"))),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    counterController.decrement();
                  },
                  child: const Text("Decrement"))),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
