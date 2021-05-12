import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'card_recommended.dart';
import 'recommended_destination.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomDetails(),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class CustomDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
                boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 2,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20.0))
            ),
            padding: EdgeInsets.only(left: 14.0, right: 14.0, top: 20, bottom: 5.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/room.jpg'),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                    ),
                  ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.circle, size: 8, color: Color(0xffFFB359)),
                    Icon(Icons.circle, size: 8, color: Color(0xffD9D9D9)),
                    Icon(Icons.circle, size: 8, color: Color(0xffD9D9D9)),
                    Icon(Icons.circle, size: 8, color: Color(0xffD9D9D9)),
                    Icon(Icons.circle, size: 8, color: Color(0xffD9D9D9)),
                  ],
                ),
                SizedBox(height: 2),
                Text('India, Bengaluru', style: TextStyle(
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(height: 3),
                Text('7m from Metro', style: TextStyle(color: Colors.grey[400], fontSize: 10.0)),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Condition: Excellent', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('System: Excellent', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Parkings: 1', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Elevator: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Entry phone: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Quiet place: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Balcony: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Condition: Excellent', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('System: Excellent', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300),),
                          Text('Parkings: 1', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Elevator: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Entry phone: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Quiet place: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Balcony: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Condition: Excellent', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('System: Excellent', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Parkings: 1', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Elevator: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Entry phone: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Quiet place: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                          Text('Balcony: Yes', style: TextStyle(fontSize: 11.0, color: Color(0xff949494), fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        IconButton(icon: Icon(Icons.wifi, size: 22, color: Colors.grey), onPressed: () =>
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RecommendedDestination()))),
                        SizedBox(width: 5),
                        Icon(Icons.connected_tv, size: 22, color: Colors.grey),
                        SizedBox(width: 5),
                        Icon(Icons.microwave, size: 22, color: Colors.grey),
                        SizedBox(width: 5),
                        SvgPicture.asset('assets/dishwasher.svg', height: 22, width: 24),
                        SizedBox(width: 5),
                        SvgPicture.asset('assets/cooking.svg', height: 22, width: 24)
                      ],
                    ),
                SizedBox(height: 18.0),
                Text('Contacts', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal)),
                SizedBox(height: 14),
                Chip(
                  backgroundColor: Colors.white,
                  elevation: 4,
                  padding: EdgeInsets.all(7),
                  avatar: Icon(Icons.call, size: 16, color: Color(0xff949494)),
                  label: Text('8 800 300-00-60', style: TextStyle(color: Color(0xff949494), fontSize: 13)),
                ),
                Chip(
                  backgroundColor: Colors.white,
                  elevation: 4,
                  padding: EdgeInsets.all(9),
                  avatar: Icon(Icons.email_outlined, size: 18, color: Color(0xff949494)),
                  label: Text('feese.usd@gmail.com', style: TextStyle(color: Color(0xff949494), fontSize: 15)),
                ),
                SizedBox(height: 3),
                Text('Other', style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.normal)),
                SizedBox(height: 7.0),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(padding: EdgeInsets.only(left: 15),
                        child: RecommendedCard(imageHotel: 'hotel1.jpg', nameHotel: 'India, via tadi')
                    ),
                    SizedBox(width: 10),
                    RecommendedCard(imageHotel: 'hotel2.jpg', nameHotel: 'India, Daniele Manin'),
                    SizedBox(width: 10),
                    RecommendedCard(imageHotel: 'hotel3.jpg', nameHotel: 'India, Quadrilatero Romano'),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
