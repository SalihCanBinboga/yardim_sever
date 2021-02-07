
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final VoidCallback onClick;
  final String title;
  final Icon startIcon;

  const MenuItem({Key key, this.onClick, this.title, this.startIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 40,
        margin: EdgeInsets.only(top: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                startIcon ?? SizedBox(),
                SizedBox(width: 8),
                Text(title ?? ''),
                Spacer(),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}