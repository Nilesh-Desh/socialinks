import 'package:flutter/material.dart';

class BoxContainer extends StatefulWidget {
  final Color color;
  final String imageName;
  BoxContainer({this.color, this.imageName});
  @override
  _BoxContainerState createState() => _BoxContainerState();
}

class _BoxContainerState extends State<BoxContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: widget.color,
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 20.0,
            spreadRadius: 2.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: widget.color,
      ),
      child: Image(
        image: AssetImage("images/${widget.imageName}"),
      ),
    );
  }
}
