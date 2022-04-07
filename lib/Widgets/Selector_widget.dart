import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SelectorWidget extends StatefulWidget {
  final List<String>? values;
  final ValueChanged? onChangedValue;
  final Function(int)? onIndexChange;


  const SelectorWidget(
      {
        Key? key,
        this.values,
        this.onChangedValue,
        this.onIndexChange,


  }) : super(key: key);

  @override
  State<SelectorWidget> createState() => _SelectorWidgetState();
}

class _SelectorWidgetState extends State<SelectorWidget> {
  var value;
  var indexOfvalue;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        buildButtons(),
      ],
    );
  }
  Widget buildButtons() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
          onPressed: previous,
          icon: Icon(Icons.arrow_back_ios_outlined,color: Color(0xFFA2C0D4),)
      ),
      value != null ?
      Text(
         value,
        style: TextStyle(color: Color(0xFF414D55),fontSize: 14,fontWeight: FontWeight.w400),

      ) :  Text(
        widget.values!.first,
        style: TextStyle(color: Color(0xFF414D55),fontSize: 14,fontWeight: FontWeight.w400),

      )  ,
      IconButton(
          onPressed: next,
          icon: Icon(Icons.arrow_forward_ios_outlined,color: Color(0xFFA2C0D4),)
      ),
    ],
  );

  get currentValue => value ?? widget.values!.first;

  void previous(){
    final index = widget.values!.indexOf(currentValue);
    final hasPrevious = index > 0 ;
    final newIndex = hasPrevious ? index - 1 : widget.values!.length -1;
    updateIndex(newIndex);
  }
  void updateIndex(int index){
    setState(() {
      value = widget.values![index];
      indexOfvalue = widget.values!.indexOf(value);
    });
     widget.onChangedValue!(value!);
     widget.onIndexChange!(indexOfvalue);

  }
  void next(){
    final index = widget.values!.indexOf(currentValue);
    //print(index);
    final hasNext = index + 1 < widget.values!.length;
    //print(hasNext);
    final newIndex = hasNext ? index + 1 : 0 ;
    //print(newIndex);
    updateIndex(newIndex);
  }
}
