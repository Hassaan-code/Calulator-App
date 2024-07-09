import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color color;
  final String title;
  final VoidCallback onPress;
  const MyButton({Key? key ,required this.title,
    this.color= CupertinoColors.opaqueSeparator,
    required this.onPress
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(fontSize: 20 ,color: Colors.white),
              ),
            ) ,
          ),
        ),
      ),
    );
  }
}
