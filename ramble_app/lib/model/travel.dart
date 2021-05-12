class Travel{
  final String city;
  final String country;
  final String infoText;
  final String imageUrl;

  const Travel({this.city, this.country, this.infoText, this.imageUrl});

  static List<Travel> travelCardList = [
    Travel(city: 'Tulum', country: 'Mexico', infoText: "You'll love Tulum Mexico. Get the BEST deals on hotels, all inclusive resorts, condo rentals and fun things to do in Tulum on the only Tulum.com."
    , imageUrl: 'Rectangle1.jpg'),
    Travel(city: 'Li River', country: 'China', infoText: "Li River, one of China's most famous scenic areas, was listed as one of the world's top ten watery wonders by America National Geographic Magazine.",
        imageUrl: 'Rectangle2.jpg'),
    Travel(city: 'Yellow Shoal', country: '', infoText: "You'll love Tulum Mexico. Get the BEST deals on hotels, all inclusive resorts, condo rentals and fun things to do in Tulum.",
        imageUrl: 'Rectangle3.jpg'),
    Travel(city: 'Daxu Ancient',  country: '', infoText: "As you travel further along the Li River, you’ll pass the ancient town of Daxu on the east bank.",
        imageUrl: 'Rectangle4.jpg')
  ];
}