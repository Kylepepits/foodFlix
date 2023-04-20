import 'package:flutter/material.dart';

class NavigationItem {
  IconData iconData;

  NavigationItem(this.iconData);
}

List<NavigationItem> getNavigationItemList() {
  return <NavigationItem>[
    NavigationItem(Icons.home),
    NavigationItem(Icons.shopping_cart),
    NavigationItem(Icons.person),
  ];
}

class Book {
  String title;
  String image;

  Book(this.title, this.image);
}

List<Book> getBookList() {
  return <Book>[
    Book(
      "Tita Pinks",
      "assets/concessionaires/tapinks.jpg",
    ),
    Book(
      "Coronel",
      "assets/concessionaires/coronel.jpg",
    ),
    Book(
      "JavaTeen",
      "assets/concessionaires/javateen.jpg",
    ),
    Book(
      "Porkchopty",
      "assets/concessionaires/porkchop.jpg",
    ),
    Book(
      "Blue Chairs",
      "assets/concessionaires/bluechairs.jpg",
    ),
    Book(
      "Waffle Time",
      "assets/concessionaires/waffletime.jpg",
    ),
    Book(
      "Angel's Burger",
      "assets/concessionaires/angels.jpg",
    ),
  ];
}

class Foods {
  String fullname;
  int price;
  String image;
  String description;

  Foods(this.fullname, this.price, this.image, this.description);
}

List<Foods> getAuthorList() {
  return <Foods>[
    Foods(
      "3x Pinkish Lumpia",
      20,
      "assets/foods/lumpia.jpg",
      "basta mao nani ang description ilisanan pani",
    ),
    Foods(
      "Chicken Curry",
      35,
      "assets/foods/chickencurry.jpg",
      "basta mao nani ang description ilisanan pani",
    ),
    Foods(
      "Meatballs",
      10,
      "assets/foods/meatballs.jpg",
      "basta mao nani ang description ilisanan pani",
    ),
    Foods(
      "3 Siomai",
      20,
      "assets/foods/siomai.jpg",
      "basta mao nani ang description ilisanan pani",
    ),
    Foods(
      "Humba",
      35,
      "assets/foods/humba.jpg",
      "basta mao nani ang description ilisanan pani",
    ),
    Foods(
      "Bam-i",
      20,
      "assets/foods/bami.jpg",
      "basta mao nani ang description ilisanan pani",
    ),
    Foods(
      "Buko Juice",
      35,
      "assets/foods/bukojuice.jpg",
      "basta mao nani ang description ilisanan pani",
    ),
    Foods(
      "Calamansi Juice",
      25,
      "assets/foods/calamansi.jpg",
      "basta mao nani ang description ilisanan pani",
    ),
  ];
}

class Filter {
  String name;

  Filter(this.name);
}

List<Filter> getFilterList() {
  return <Filter>[
    Filter(""),
    Filter(""),
    Filter(""),
  ];
}
