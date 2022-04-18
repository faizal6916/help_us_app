import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:help_us/TicketHistory.dart';

class TicketSummary extends StatelessWidget {
  const TicketSummary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 480,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Ticketbg.png'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TICKT - 582',
                    style: GoogleFonts.roboto(
                      color: Color(0xFF8B92BB),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'NIMS-DXB',
                    style: GoogleFonts.roboto(
                      color: Color(0xFF2395FF),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TicketHistory()));
                },
                child: Text('View History'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF34D1BF)),
                ),
              )
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '05-SEP',
                      style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Created',
                      style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '05-SEP',
                      style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Expected',
                      style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xFFFF3F3F),
                          radius: 6,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 4,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'CRITICAL',
                          style: TextStyle(
                              color: Color(0xFF595959),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      'Severity',
                      style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Brooklyn Simmons',
                      style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Created User',
                      style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'GRADE 9-12 AN',
                      style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Department',
                      style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '9562682548',
                      style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Contact No.',
                      style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Cameron Williamson',
                      style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Point of Contact',
                      style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cameron Williamson',
                      style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Assigned To.',
                      style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                          color: Color(0xFF595959),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'Split Count',
                      style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Color(0xFFCFE6FF),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description:',
                  style: TextStyle(color: Color(0xFF2395FF).withOpacity(0.5)),
                ),
                Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. ',
                  style: TextStyle(
                      color: Color(0xFF9FA0A1),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0xFF91E1AD).withOpacity(0.5),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
                child: Text(
              ' User Created - Assigned To POC',
              style: TextStyle(
                  color: Color(0xFF1B5E20),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            )),
          ),
        ],
      ),
    );
  }
}
