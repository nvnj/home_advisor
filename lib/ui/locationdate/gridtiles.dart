import 'package:flutter/material.dart';

class GridViewItem extends StatelessWidget {
  final String _time;
  final bool _isSelected;
  final bool _isActive;

  GridViewItem(this._time, this._isSelected,this._isActive);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(_time,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: _isSelected&&_isActive?Colors.white:Color(0xff14287B)),)),
      height: 50.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: _isSelected&&_isActive ? Color(0xff65BDF7): Colors.white,
      ),
    );
  }
}
