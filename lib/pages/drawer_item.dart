import 'package:flutter/material.dart';

class DrawerItem extends StatefulWidget {
  final String text;
  final IconData icon;

  const DrawerItem({Key? key,required this.text,required this.icon}) : super(key: key);

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
              SizedBox(
                width: 20,
              ),
              Icon(widget.icon),
              SizedBox(
                width: 20,
              ),
              Text(
                widget.text,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
