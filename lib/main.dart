import 'package:dont_update_getx/controller/global_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(GlobalController());
    return GetMaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            actions: [
              GetBuilder<GlobalController>(
                  id: 'action',
                  builder: (_) {
                    // print('porque no');
                    return FlatButton(
                      child: Text('AppName=> ${_.appName}'),
                      onPressed: () {},
                    );
                  })
            ],
          ),
          body: ContentWidget()),
    );
  }
}

class ContentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final controller = Get.find<GlobalController>();
    return GetBuilder<GlobalController>(
      id: 'content',
      builder: (_) => Column(
        children: [
          Center(
            child: Text('${_.appName}'),
          ),
          MaterialButton(
            child: Text('Change app name'),
            color: Colors.blue,
            onPressed: () {
              _.changeAppName();
            },
          )
        ],
      ),
    );
  }
}
