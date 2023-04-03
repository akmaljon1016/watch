import 'package:flutter/material.dart';

class DrawerItem extends StatefulWidget {
  const DrawerItem({Key? key}) : super(key: key);

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: Row(
            children: [
              SizedBox(width: 20,),
              Icon(Icons.notification_add),
              SizedBox(width: 20,),
              Text("Bildirishnomalar",style: TextStyle(fontSize:20),)
            ],
          ),
        ),
        Divider(thickness: 2,color: Colors.black,)
      ],
    );
  }
}
