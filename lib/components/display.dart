import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
class Display extends StatelessWidget {
  final String text;

  Display(this.text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: AutoSizeText(
                text,
                minFontSize: 23,
                maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
