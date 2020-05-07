

class Tour {

  String country;
  double points;
  String image;
  String status;
  String hotel;
  String city;
  int rating;
  String review;
  

   Tour({this.image, this.country, this.points, this.status, this.hotel, this.city, this.rating, this.review});

}

var tours = [

  Tour(
      image: 'assets/bahamas.jpg', 
      country: 'Bahamas', 
      status: 'New' , 
      points: 4.6, 
      hotel: 'Breezes Resort', 
      city: 'W Bay St, Nassau', 
      rating: 5,
      review: 'El Breezes Resort & Spa, Bahamas ofrece un establecimiento todo incluido para mayores de 14 años con piscina al aire libre, salas para banquetes y aparcamiento gratuito en Cable Beach.'
      ),

  Tour(
    image: 'assets/aruba.jpg',  
    country: 'Aruba', 
    status:  'Sale', 
    points: 4.1, 
    hotel: 'Casa Del Mar Beach Resort', 
    city: 'Oranjestad',
    rating: 4,
    review: 'These suites feature a private, ocean view furnished terrace and most suites offer bathtubs and separate rain showers. The rooms include period pieces of Antigua furniture from fine craftsmen, Mexican artwork and one King or two full beds.'
    ),

  Tour(
    image: 'assets/grecia.jpg', 
    country: 'Grecia',  
    status:   'Sale', 
    points: 4.8, 
    hotel: 'Summer Senses Luxury Resort',   
    city: 'Logaras',
    rating: 4,
    review: 'Summer Senses is proud to welcome guests from around the world to the best luxury resort in Paros – the perfect choice for couples and families looking for a relaxing island getaway. '
    ),

  Tour(
    image: 'assets/malaysia.jpg', 
    country: 'Malaysia', 
    status: 'New', 
    points: 4.9, 
    hotel: 'The Spa Resorts', 
    city: 'Thailand',
    rating: 5,
    review: 'Koh Samui is renowned for its luxury accommodations, and the Village at The Spa Resorts is no exception. Completely renovated and remodeled, this jewel of a resort is perched on the side of a picturesque mountainside above Lamai Village and features stylish private villas with spectacular upland views.'
    ),

  Tour(
    image: 'assets/tailandia.jpg', 
    country: 'Tailandia', 
    status: 'Sale', 
    points: 4.4, 
    hotel: 'The Passage Samui Resort', 
    city: 'Koh Chang Tai',
    rating: 5,
    review: 'Thailand is the tropical zone and hot country, it is not easy to spread of Covid 19 virus.The passage samui resort turn to long term villa service for monthly rent from now until the end of this year with daily breakfast to ensure your stay to be convenience for you and your family.'
    ),

  Tour(
    image: 'assets/venice.jpg', 
    country: 'Venecia', 
    status: 'Sale', 
    points: 4.8, 
    hotel: 'Venice Resort', 
    city: 'Venezia',
    rating: 5,
    review: 'Todo el mundo necesita un sitio donde reposar cuando está cansado. Para aquellos que visiten Tessera, Venice Resort es una magnífica elección para descansar. Conocido por su ambiente tranquilo y su proximidad a fantásticos restaurantes, Venice Resort te ayuda a disfrutar de lo mejor de Tessera.'
     ),

];


class Popular {

String country;
String descri;
String price;
String points;
String image;
String hotel;
String city;
String review;
int rating;

Popular({ this.descri, this.image, this.country, this.price, this.points, this.city, this.hotel, this .review, this.rating });

}

var populars = [

    Popular(
      image: 'assets/china.jpg', 
      country: 'China', 
      descri: '10 nights for two/ all inclusive', 
      price: '350.50',
      hotel: 'Atlantis Sanya', 
      city: 'Sanya',
      rating: 5,
      review: 'Immerse yourself in the relaxed luxury of Grand Hyatt Sanya Haitang Bay, where the year-round sunshine and white-sand coastline offer a stunning natural backdrop. Inspired by Chinese lanterns, the hotel is a beacon guiding travelers to comfort and rejuvenation.'
      ),

    Popular(
      image: 'assets/dominicana.jpg', 
      country: 'Dominicana', 
      descri: '7 nights for two/ all inclusive', 
      price: '250.99',
      hotel: 'Casa de Campo Resort and Villas', 
      city: 'República Dominicana',
      rating: 5,
      review: 'Desde su apertura en La Romana hace casi 50 años como el primer resort en la República Dominicana, CASA DE CAMPO® Resort & Villas ha sido el destino de lujo favorito de los viajeros exigentes y celebridades de todo el mundo, que lo prefieren por ser una comunidad cerrada y privada.'
    ),

    Popular(image: 'assets/indonesia.jpg',
     country: 'Indonesia', 
     descri: '5 nights for two/ all inclusive', 
     price: '370.99',
     hotel: 'The Anvaya Beach Resort Bali', 
     city: 'Kabupaten Badung',
     rating: 5,
     review: 'Todo el mundo necesita un sitio donde reposar cuando está cansado. Para aquellos que visiten Tessera, Venice Resort es una magnífica elección para descansar. Conocido por su ambiente tranquilo y su proximidad a fantásticos restaurantes, Venice Resort te ayuda a disfrutar de lo mejor de Tessera.'
     ),

    Popular(image: 'assets/japan.jpg', 
    country: 'Japan', 
    descri: '8 nights for two/ all inclusive', 
    price: '470.00',
    hotel: 'Miyakojima Tokyu Hotel & Resorts', 
      city: 'Okinawa',
      rating: 5,
      review: 'The Tokyu Hotel Miyakojima is an incredible top end hotel, combining a tropical resort with Japanese standards in hospitality. Rooms are bright and spacious, staff are helpful and attentive, and being a resort destination, a wide range of activities are offered to keep everyone well entertained.'
    ),

    Popular(image: 'assets/india.jpg', 
    country: 'India', 
    descri: '6 nights for two/ all inclusive', 
    price: '260.99',
    hotel: 'The Fern Creek', 
    city: 'India',
    rating: 5,
    review: 'Beyond hectic schedules and robotic routines there is a world where time stands still and life is all about rediscovering intimacy with all the five senses or celebrating with a special someone.'
    ),

];







class Carousel {

  String image;


  Carousel({this.image});
}

var carousel = [

    Carousel(image: 'assets/ca1.jpg'),
    Carousel(image: 'assets/ca2.jpg'),
    Carousel(image: 'assets/ca3.jpg'),
    Carousel(image: 'assets/ca4.jpg'),
    Carousel(image: 'assets/ca5.jpg')
];

