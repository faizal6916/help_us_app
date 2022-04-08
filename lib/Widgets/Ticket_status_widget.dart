import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TicketStatus extends StatefulWidget {
  final Color? color;
  final String? status;
  final int? nos;
  final int? total;
  const TicketStatus({Key? key,
    this.color,
    this.status,
    this.nos,
    this.total,
  }) : super(key: key);

  @override
  State<TicketStatus> createState() => _TicketStatusState();
}

class _TicketStatusState extends State<TicketStatus> {
  //double percent = percentage();
  @override

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.nos.toString(),style: TextStyle(color: Color(0xFF414D55),fontWeight: FontWeight.w500,fontSize: 14),),
            Text(widget.status.toString(),style: TextStyle(color: Color(0xFF414D55),fontSize: 14,fontWeight: FontWeight.w400),),
          ],
        ),
        SizedBox(height: 5,),
        LinearPercentIndicator(
          width: MediaQuery.of(context).size.width-80,
          lineHeight: 8,
          percent: percentage(),
          backgroundColor: Color(0xFFE4EAF0),
          progressColor: widget.color,
          padding: EdgeInsets.zero,
          barRadius: Radius.circular(5),
        )
      ],
    );
  }
  double percentage(){
    final  nos = widget.nos;
    final total = widget.total;
    final  perc = ( nos! / total! );
    return perc;
  }
}
