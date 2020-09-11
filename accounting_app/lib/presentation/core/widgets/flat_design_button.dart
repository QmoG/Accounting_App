import 'package:flutter/material.dart';


// ignore: must_be_immutable
class FlatDesignButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  EdgeInsets padding;
  bool isToUpperCase;
  EdgeInsets flatButtonPadding;
  Icon prefixIcon;
  Icon suffixIcon;

  FlatDesignButton(
      {@required this.text,
      @required this.onPressed,
      this.padding,
      this.flatButtonPadding,
      this.isToUpperCase = false,
      this.prefixIcon,
      this.suffixIcon
      });

  Widget iconTextRow(Widget textWidget){
    List<Widget> _row = [];

    if (prefixIcon != null) {
      _row.add(prefixIcon);
      _row.add(SizedBox(width: 10,));
      _row.add(textWidget);
    } else {
      _row.add(textWidget);
    }

    if (suffixIcon != null) {
      _row.add(SizedBox(width: 10,));
      _row.add(suffixIcon);
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _row
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding != null ? padding : EdgeInsets.only(top: 40, bottom: 10),
      width: double.maxFinite,
      child: FlatButton(
        padding: flatButtonPadding != null
            ? flatButtonPadding
            : EdgeInsets.all(15.0),
        onPressed: onPressed,
        child: isToUpperCase == true
            ? iconTextRow(Text(text.toUpperCase()))
            : iconTextRow(Text(text)),
        shape: RoundedRectangleBorder(
            side: onPressed != null
                ? BorderSide(color: Colors.white, width: 1.0)
                : BorderSide(color: Colors.white.withOpacity(0.6), width: 1.0),
            borderRadius: BorderRadius.circular(15.0)),
      ),
    );
  }
}
