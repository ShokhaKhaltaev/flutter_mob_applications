import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'file:///C:/Users/Pavilion-PC/AndroidStudioProjects/ramble_app/lib/widgets/custom_card.dart';
import 'file:///C:/Users/Pavilion-PC/AndroidStudioProjects/ramble_app/lib/widgets/stations.dart';

class BookingDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 14.0, right: 14.0, top: 0.0),
            height: 175,
            decoration:
            BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                  image: AssetImage('assets/tajmahal.jpg'),
                  fit: BoxFit.cover
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 25.0, right: 14.0),
            child: Text('Agra, India', style: TextStyle(
              fontSize: 15.0,
            ),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: EdgeInsets.only(left: 25.0, right: 14.0),
            child: Text('20m from City', style: TextStyle(color: Colors.grey[400], fontSize: 10.0)),
          ),
          SizedBox(height: 8.0),
          Container(
            margin: EdgeInsets.only(left: 14.0, right: 14.0),
            //padding: EdgeInsets.only(bottom: 5.0),
            height: 64,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CustomCard(title: 'Price', cost: '\$ 87.40'),
                SizedBox(width: 5.0),
                CustomCard(title: 'Raiting', cost: '4.7/5'),
                SizedBox(width: 5.0),
                CustomCard(title: 'Language', cost: 'English'),
                SizedBox(width: 5.0),
                // Container(
                //     padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15.0),
                //     //height: 40,
                //     decoration: BoxDecoration(
                //         color: Colors.white,
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.grey.withOpacity(0.5),
                //             spreadRadius: 2,
                //             blurRadius: 4,
                //             offset: Offset(0, 2), // changes position of shadow
                //           ),
                //         ],
                //         borderRadius: BorderRadius.circular(18.0)
                //     ),
                //     child: CircleAvatar(
                //       backgroundImage: AssetImage('assets/face.jpg'),
                //       radius: 15,
                //     )
                // ),
                CustomCard(title: 'Language', cost: 'English'),
              ],
            ),
          ),
          SizedBox(height: 14),
          Padding(
            padding: EdgeInsets.only(left: 25.0, right: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('About',style: TextStyle(
                  fontSize: 15.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text('Agra is a city on the banks of the Yamuna river in the Agra district of the Indian state of Uttar Pradesh. It is 206 kilometres south of the national capital New Delhi. Agra is the fourth-most populous city in Uttar Pradesh and 24th in India.',
                style: TextStyle(
                    fontSize: 12.0, color: Colors.grey[500]
                  ),
                ),
                SizedBox(height: 12.0),
                Text('Itinerary',style: TextStyle(
                  fontSize: 15.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  margin: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Stations(count: '1', destination: 'Hazrat Nizamuddin Railway Station Gate Number 4', hours: '3 hours'),
                      SizedBox(height: 5),
                      Stations(count: '2', destination: 'Taj Mahal', hours: '3 hours'),
                      SizedBox(height: 5),
                      Stations(count: '3', destination: 'Agra Fort', hours: '70 minutes'),
                      SizedBox(height: 5),
                      Stations(count: '4', destination: 'Tomb of Itimad-ud-Daulah', hours: '30 minutes - Admission included'),
                      SizedBox(height: 5),
                      Stations(count: '5', destination: 'Hazrat Nizamuddin Railway Station Gate Number 4', hours: 'Stop: 40 minutes'),
                      SizedBox(height: 10),
                      Text('Duration  12 hours', style: TextStyle(color: Color(0xff979797), fontWeight: FontWeight.normal, fontSize: 11))
                    ],
                  ),
                ),
                //SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    Chip(
                      elevation: 5,
                      backgroundColor: Color(0xffFFB359),
                      avatar: Icon(Icons.date_range_outlined, color: Colors.white, size: 18),
                      label: Text('select date', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, letterSpacing: 1.2, fontSize: 12)),
                    ),
                    SizedBox(width: 7.0),
                    Chip(
                      elevation: 5,
                      backgroundColor: Color(0xffFFB359),
                      avatar: Icon(Icons.place, color: Colors.white, size: 18),
                      label: Text('open map', style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white, letterSpacing: 1.2, fontSize: 12)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//padding: EdgeInsets.only(left: 14.0, right: 14.0, top: 20),