import 'package:flutter/material.dart';
import 'bottom_navigation_bar.dart';
import 'search_widget.dart';
import 'file:///C:/Users/Pavilion-PC/AndroidStudioProjects/ramble_app/lib/widgets/video_card.dart';
import 'first_custom_card.dart';
import 'card_recommended.dart';

class RecommendedDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Search(),
              SizedBox(height: 20.0),
              Container(
                height: 38,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    RaisedButton(
                        onPressed: (){},
                      color: Color(0xffFFB359),
                    shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    elevation: 5,
                    textColor: Colors.white,
                      padding: EdgeInsets.zero,
                    child: Center(child: Text('All', style: TextStyle(fontSize: 16.0))),),
                    SizedBox(width: 15.0),
                    RaisedButton(
                      onPressed: (){},
                      color:  Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      elevation: 5,
                      textColor: Colors.grey,
                      padding: EdgeInsets.zero,
                      child: Center(child: Text('Popular', style: TextStyle(fontSize: 16.0))),),
                    SizedBox(width: 15.0),
                    RaisedButton(
                      onPressed: (){},
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                      elevation: 5,
                      textColor: Colors.grey,
                      padding: EdgeInsets.zero,
                      child: Center(child: Text('New', style: TextStyle(fontSize: 16.0))),),
                    SizedBox(width: 15.0),
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(Icons.menu, color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Countries to travel', style: TextStyle(color: Color(0xff919191), fontWeight: FontWeight.normal, fontSize: 14.0)),
                      SizedBox(height: 10),
                      Container(
                        height: 120,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            CountryCustomCard(imageUrl: 'city1.jpg', destination: 'Manarola, Italy'),
                            SizedBox(width: 10),
                            CountryCustomCard(imageUrl: 'city1.jpg', destination: 'Oia Greece'),
                            SizedBox(width: 10),
                            CountryCustomCard(imageUrl: 'city1.jpg', destination: 'Rialto Bridge, Venezia, Italy'),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Text('Popular video locations', style: TextStyle(color: Color(0xff919191), fontWeight: FontWeight.normal, fontSize: 14.0)),
                      SizedBox(height: 10),
                      Container(
                        height: 120,
                        width: double.infinity,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                                child: VideoCard(image: 'rome.jpg')
                            ),
                            SizedBox(width: 10),
                            VideoCard(image: 'rome.jpg'),
                            SizedBox(width: 10),
                            VideoCard(image: 'rome.jpg'),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      Text('Renting a house or apartment', style: TextStyle(color: Color(0xff919191), fontWeight: FontWeight.normal, fontSize: 14.0)),
                      SizedBox(height: 10),
                      Container(
                        color: Colors.white,
                        height: 180,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            RecommendedCard(imageHotel: 'hotel1.jpg', nameHotel: 'India, via tadi'),
                            SizedBox(width: 10),
                            RecommendedCard(imageHotel: 'hotel2.jpg', nameHotel: 'India, Daniele Manin'),
                            SizedBox(width: 10),
                            RecommendedCard(imageHotel: 'hotel3.jpg', nameHotel: 'India, Quadrilatero Romano'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
