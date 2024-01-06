import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/instance_manager.dart';
import 'package:test_by_ram/controller/dashboard_controller.dart';
import 'package:test_by_ram/view/home_screen.dart';

class LeftSideMenue extends StatefulWidget {
  @override
  State<LeftSideMenue> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<LeftSideMenue> {
  DashBoardController controller = Get.put(DashBoardController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.tealAccent,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Column(children: [
                Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent.withOpacity(0.2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(''), fit: BoxFit.fill),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              spreadRadius: 0,
                              color: Colors.amber.withOpacity(0.3))
                        ]),
                  ),
                ),
              ]),
            ),
          ),
          ExpansionTile(
            iconColor: Colors.red,
            textColor: Colors.red,
            leading: Icon(Icons.home),
            title: Text('Test'),
            children: List<Widget>.generate(
              controller.reportMessageList.length!,
              (i) => ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(HomeScreen());
                  },
                  leading: Icon(controller.reportMessageList!.value[i]["icon"]),
                  title: Text(
                      '${controller.reportMessageList!.value[i]["title"]}')),
            ),
          ),
          ExpansionTile(
            iconColor: Colors.red,
            textColor: Colors.red,
            leading: Icon(Icons.settings),
            title: Text('Testing menue'),
            children: List<Widget>.generate(
              controller.reportMessageList.length!,
              (i) => ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(HomeScreen());
                  },
                  leading: Icon(controller.reportMessageList!.value[i]["icon"]),
                  title: Text(
                      '${controller.reportMessageList!.value[i]["title"]}')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            title: Text('Virsion number 0.0'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}
