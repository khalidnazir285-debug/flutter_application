
import 'package:flutter/material.dart';

class BottomFile extends StatelessWidget {
  const BottomFile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Bottom File"),
          ),
          body: Column(
            children: [
              TabBar(tabs: [
                Tab(text: "home",),
                Tab(text: "profile",),
                Tab(text: "setting",),
              ]),
              Expanded(child: TabBarView(children: [
                Center()
              ]))
            ],
          ),
        ));
  }
}
