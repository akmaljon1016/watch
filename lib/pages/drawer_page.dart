import 'package:flutter/material.dart';
import 'package:watch/pages/drawer_item.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage("assets/person.png"),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Alisher Sheraliyev",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 8,
              child: Container(
                child: ListView(
                  children: [
                    DrawerItem(icon: Icons.person,text: "New Group",),
                    DrawerItem(icon: Icons.lock,text: "New secret chat",),
                    DrawerItem(icon: Icons.flash_auto,text:"New Broadcast List"),
                    Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                    DrawerItem(icon: Icons.contact_mail,text: "Contact"),
                    DrawerItem(icon: Icons.person_add,text: "Invite Friends",),
                    DrawerItem(icon: Icons.settings,text: "Settings",),
                    DrawerItem(icon: Icons.question_mark,text: "Telegram, FAQ",),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
