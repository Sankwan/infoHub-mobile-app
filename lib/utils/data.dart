//data for the names,locations and others
//these are a bit advanced

import 'dart:math';
Random random = Random();
List names = [
  "Eugene Pp",
  "Emma Osi",
  "Prince Kk",
  "Eugene Afful",
  "Regardless Capone",
  "Afia Fila",
  "John Doe",
  "Kurt Toms",
  "Jane Doe",
  "Kim Kay",
  "Madi Bee",
];
List location = [
  "Thailand",
  "Costa Rica",
  "Bahamas",
  "Nigeria",
  "Canada",
  "Iceland",
  "Turkey",
  "Australia",
  "Germany",
  "Saudi Arabia",
  "Ukraine",
];
List places = [
  "Blue Caves",
  "Wonder Land",
  "Magic Land",
  "Attraction Parc",
  "Waterfalls",
];
List city = [
  "New York",
  "Washington Dc",
  "Florence",
  "Madrid",
  "Barcelona",
  "Alaves",
  "Istanbul",
  "Kirklareli",
  "Ankara",
  "Porto Novo",
  "Stacy Christensen",
];
List data = List.generate(10, (index)=>{
  "name": names[random.nextInt(5)],
 "city": city[random.nextInt(5)],
 "location": location[random.nextInt(5)],
 "places": places[random.nextInt(5)],
 "dp": "assets/images/friends/dp${random.nextInt(4)}.jpg",
 "posts": "assets/images/posts/post${random.nextInt(3)}.jpg",
 "saved": "assets/images/saved/saved${random.nextInt(4)}.jpg",
 "story": "assets/images/story/cm${random.nextInt(10)}.jpeg",
});

