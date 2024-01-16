import 'package:flutter/material.dart';

import '../../../core/base/base_view.dart';
import '../controllers/home_controller.dart';

class HomeView extends BaseView<HomeController> {
  const HomeView({super.key});
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('HomeView'),
  //       centerTitle: true,
  //     ),
  //     body: const Center(
  //       child: Text(
  //         'HomeView is working',
  //         style: TextStyle(fontSize: 20),
  //       ),
  //     ),
  //   );
  // }

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    return AppBar(
      title: const Text('HomeView'),
      centerTitle: true,
    );
  }

  @override
  Widget body(BuildContext context) {
    return const Center(
      child: Text(
        'HomeView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
