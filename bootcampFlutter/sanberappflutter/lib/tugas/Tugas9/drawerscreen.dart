import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen>{
  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Lala Salwa"),
            currentAccountPicture: 
              CircleAvatar(backgroundImage: AssetImage("asset/img/lala.JPG")), 
            accountEmail: Text("lalasalwactk@gmail.com"),
          ),
          DrawerListTile(
            iconData:  Icons.group,
            title: "New Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData:  Icons.lock,
            title: "New Secret Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData:  Icons.notifications,
            title: "New Channel Chat",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData:  Icons.contacts,
            title: "contacts",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData:  Icons.bookmark_border,
            title: "Saved Message",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData:  Icons.phone,
            title: "calls",
            onTilePressed: () {},
          )
        ],
     ));
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData? iconData;
  final String? title;
  final VoidCallback? onTilePressed;

  const DrawerListTile(
    {Key? key, this.iconData, this.title, this.onTilePressed})
    : super(key: key);
  @override
  Widget build(BuildContext context){
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style:  TextStyle(fontSize: 16),
      ),
    );
  }
}