import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCustomWidget extends StatefulWidget {
  const MyCustomWidget({super.key});

  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget>
    with TickerProviderStateMixin {
  bool expanded = true;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
      reverseDuration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon:
            AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),
        onPressed: () {
          setState(() {
            expanded ? controller.forward() : controller.reverse();
            expanded = !expanded;
          });
        });
  }
}

//                                                ////\\\\
//                                               ////  \\\\
//                                              ////    \\\\
//                                             ////      \\\\
//                                             \\\\      ////
//                                              \\\\    ////
//                                               \\\\  ////
//                                                \\\\////





