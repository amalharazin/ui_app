import 'package:flutter/material.dart';

class ContainerPageIndicator extends StatelessWidget {
  const ContainerPageIndicator({
    Key? key,
    required bool selected,
    double marginEnd=0,
  }) : _selected = selected,
  _marginEnd=marginEnd,
        super(key: key);

  final bool _selected;
  final double _marginEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: _marginEnd),
      width: 18,
      height: 4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color:_selected? Colors.blue:Colors.grey
      ),
    );
  }
}
