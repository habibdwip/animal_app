import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animal_controller.dart';

class AnimalView extends GetView<AnimalController> {
  const AnimalView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimalView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnimalView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
