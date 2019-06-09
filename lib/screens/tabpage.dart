import 'package:flutter/material.dart';
import 'package:brand_flutter/screens/tabs/feature.dart';
import 'package:brand_flutter/screens/tabs/livestream.dart';
import 'package:brand_flutter/screens/tabs/settings.dart';
import 'package:brand_flutter/screens/tabs/speakers.dart';
import 'package:brand_flutter/screens/tabs/support.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin {
  TabController controller;

  var tabTitle = "";

  @override
  void initState() {
    super.initState();
    tabTitle = "Featured";
    controller = new TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new GradientAppBar(
          title: Container(
            child: Center(
              child: Text(tabTitle),
            ),
          ),
          backgroundColorStart: Colors.redAccent.withAlpha(175),
          backgroundColorEnd: Colors.blueAccent.withAlpha(175),
        ),
        bottomNavigationBar: Material(
          color: Colors.black87,
          child: new TabBar(
              onTap: (context) => {
                this.setState(() {
                  if (controller.index == 0) {
                    this.tabTitle = "Featured";
                  } else if (controller.index == 1) {
                    this.tabTitle = "Watch Online" ;
                  } else if (controller.index == 2) {
                    this.tabTitle = "Speaker Schedule";
                  } else if (controller.index == 3) {
                    this.tabTitle = "Support";
                  } else if (controller.index == 4) {
                    this.tabTitle = "Account Settings";
                  }
                })
              },
              controller: controller,
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.white,
              indicator: UnderlineTabIndicator(borderSide: BorderSide.none),
              tabs: <Widget>[
                new Tab(
                  icon: new Icon(Icons.star_border),
                  child: Text(
                    "Featured",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                new Tab(
                  icon: new Icon(Icons.live_tv),
                  child: Text(
                    "Watch",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                new Tab(
                  icon: new Icon(Icons.people_outline),
                  child: Text(
                    "Speakers",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                new Tab(
                  icon: new Icon(Icons.favorite_border),
                  child: Text(
                    "Support",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                new Tab(
                  icon: new Icon(Icons.settings),
                  child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 10),
                  ),
                )
              ]),
        ),
        body: new TabBarView(controller: controller, children: <Widget>[
          new FeatureTab(),
          new LivestreamTab(),
          new SpeakersTab(),
          new SupportTab(),
          new SettingsTab()
        ]));
  }
}
