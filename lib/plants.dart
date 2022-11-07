class Plant {
  final String title;
  final String discription;
  final String price;
  final String height;
  final String image;
  final String temprature;
  final String pot;

  Plant({
    required this.title,
    required this.discription,
    required this.price,
    required this.height,
    required this.image,
    required this.temprature,
    required this.pot,
  });
}

List<Plant> plants = [
  Plant(
      title: "Turf Pot Plant",
      discription: "Big leaf plant for your home and office decoration",
      height: "40.0 cm to 50cm",
      temprature: "18c to 25c",
      image: "https://media.istockphoto.com/id/166678607/photo/top-view-of-palm-tree-in-pot-isolated-on-white.jpg?s=612x612&w=0&k=20&c=YAyumJHIX58SeFQ1eha9TbEylIdL8h26XKPLohl2xAI=",
      pot: "Self Growing pot",
      price: "\$59.00"),
  Plant(
      title: "Scandinavain plant",
      discription: "Low maintenance flower in a white ceramic pot.",
      height: "40.0 cm to 50cm",
      temprature: "18c to 25c",
      image:
          "https://www.kindpng.com/picc/m/476-4767987_indoor-plant-png-transparent-png-download.png",
      pot: "Self Growing pot",
      price: "\$69.00"),
];