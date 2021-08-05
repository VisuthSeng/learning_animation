import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_animation/controller/home_controller.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text("Suth Gaming"),
        ),
        body: Column(
          children: [
            Column(
              children: [
                AnimatedPositioned(
                  child: Container(
                    width: 500,
                    height: 50,
                    color: Colors.blue,
                  ),
                  duration: Duration(seconds: 1),
                ),
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: Duration(milliseconds: 1500),
                  builder:
                      (BuildContext context, double _value, Widget? child) =>
                          Opacity(
                    opacity: _value,
                    child: Padding(
                      padding: EdgeInsets.only(left: _value * 250),
                      child: Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                AnimatedContainer(
                  margin: EdgeInsets.all(
                    _homeController.margin.toDouble(),
                  ),
                  duration: Duration(milliseconds: 300),
                  width: _homeController.wide.toDouble(),
                  color: _homeController.color.value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ignore: deprecated_member_use
                      RaisedButton(
                        child: Text("Animate margin"),
                        onPressed: () => _homeController.changemargin(),
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                        child: Text("Change Color"),
                        onPressed: () => _homeController.changecolor(),
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                        child: Text("Change wide"),
                        onPressed: () => _homeController.changewide(),
                      ),
                      AnimatedOpacity(
                        child: Text(
                          "Please hide me",
                          style: TextStyle(color: Colors.pink, fontSize: 24),
                        ),
                        opacity: _homeController.opacity.toDouble(),
                        duration: Duration(milliseconds: 300),
                      ),
                      // ignore: deprecated_member_use
                      RaisedButton(
                        child: Text("Opacity Text"),
                        onPressed: () => _homeController.changeopacity(),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
