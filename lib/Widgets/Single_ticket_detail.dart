import 'package:flutter/material.dart';

class SingleTicket extends StatelessWidget {
  const SingleTicket({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: size.height*0.25+12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 3.5),
                  width: 5,
                  height: size.height*0.125,
                  decoration: BoxDecoration(
                      color: Color(0xFF3B6DF1)),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xFF3B6DF1),
                  radius: 6,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 3,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 3.5),
                  width: 5,
                  height: size.height*0.125,
                  decoration: BoxDecoration(
                    color: Color(0xFF3B6DF1),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 10,
          child: Container(
            height: size.height*0.25,
            padding: EdgeInsets.symmetric(
                horizontal: 10, vertical: 10),
            margin: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                BorderRadius.circular(6),
                border: Border.all(
                  color: Color(0xFFD4E1FF),
                )),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'March 24',
                  style: TextStyle(
                    color: Color(0xFFF59100),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: size.height*0.01,),
                Expanded(
                  child: Text(
                    'Dept Head Aneesh Y N assigned ticket - TICKT-584 to Dept Employee.Dept Head Aneesh Y N assigned ticket - TICKT-584 to Dept Employee.',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF242527),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Parent ticket details',
                          style:
                          TextStyle(fontSize: 9),
                        ),
                        style:
                        ElevatedButton.styleFrom(
                          primary: Color(0xFFA1A0FD),
                          onPrimary: Colors.white,
                          elevation: 0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 3,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Child ticket details',
                          style:
                          TextStyle(fontSize: 9),
                        ),
                        style:
                        ElevatedButton.styleFrom(
                          primary: Color(0xFF7BEBA1),
                          onPrimary: Colors.white,
                          elevation: 0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                30),
                            color: Color(0xFFEDF4FF)),
                        child: Icon(
                          Icons.attach_file,
                          color: Color(0xFF3B6DF1),
                          size: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(
                                30),
                            color: Color(0xFFEDF4FF)),
                        child: Icon(
                          Icons
                              .messenger_outline_outlined,
                          color: Color(0xFF3B6DF1),
                          size: 16,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}