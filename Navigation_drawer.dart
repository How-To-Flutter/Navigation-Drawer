import 'package:flutter/material.dart';
import 'package:player/pages/notifications_page.dart';
import 'pages/notifications_page.dart';
import 'pages/settings_page.dart';
import 'pages/updates_page.dart';
import 'pages/workflow_page.dart';

class NavigationDrawer extends StatefulWidget {
  NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromARGB(255, 93, 33, 243),
        child: ListView(children: <Widget>[
          buildMenuItem(
              text: 'Notifications',
              icon: Icons.notifications_outlined,
              onClicked: () => selectedItem(context, 0)),
          buildMenuItem(
              text: 'WorkFlow',
              icon: Icons.workspaces_outline,
              onClicked: () => selectedItem(context, 1)),
          buildMenuItem(
              text: 'Updates',
              icon: Icons.update_outlined,
              onClicked: () => selectedItem(context, 2)),
          buildMenuItem(
              text: 'Settings',
              icon: Icons.settings_outlined,
              onClicked: () => selectedItem(context, 3)),
        ]),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hooverColor = Colors.white70; //that's for web
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hooverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context)
        .pop(); //that's a function to close the drawer after click
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NotificationsPage()));
        break;
    }
    switch (index) {
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => WorkFlowPage()));
        break;
    }
    switch (index) {
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => UpdatesPage()));
        break;
    }
    switch (index) {
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => SettingsPage()));
        break;
    }
  }
}
