class Menu {
  final String title, image;
  final double price;

  Menu({required this.title, required this.image, required this.price});
}

class CategoryMenu {
  final String category;
  final List<Menu> items;

  CategoryMenu({required this.category, required this.items});
}

final List<CategoryMenu> demoCategoryMenus = [
  CategoryMenu(
    category: "Most Popular",
    items: [
      Menu(
        price: 20,
        image: "assets/foods/lumpia.jpg",
        title: "3 Lumpia",
      ),
      Menu(
        price: 20,
        image: "assets/foods/siomai.jpg",
        title: "3 Siomai",
      ),
      Menu(
        price: 25,
        image: "assets/foods/calamansi.jpg",
        title: "Calamansi Juice",
      ),
    ],
  ),
  CategoryMenu(
    category: "Breakfast",
    items: [
      Menu(
        price: 25,
        image: "assets/foods/eggrice.jpg",
        title: "Egg /w Rice",
      ),
      Menu(
        price: 35,
        image: "assets/foods/longrice.jpg",
        title: "Longanisa /w Rice",
      ),
      Menu(
        price: 30,
        image: "assets/foods/hotrice.jpg",
        title: "Hotdog /w Rice",
      ),
    ],
  ),
  CategoryMenu(
    category: "Lunch",
    items: [
      Menu(
        price: 45,
        image: "assets/foods/chickrice.jpg",
        title: "Chicken Curry /w Rice",
      ),
      Menu(
        price: 45,
        image: "assets/foods/humrice.jpg",
        title: "Humba /w Rice",
      ),
      Menu(
        price: 40,
        image: "assets/foods/sigrice.jpg",
        title: "Sisig /w Rice",
      ),
    ],
  ),
  CategoryMenu(
    category: "Appetizers",
    items: [
      Menu(
        price: 15,
        image: "assets/foods/turon.jpg",
        title: "Turon",
      ),
      Menu(
        price: 10,
        image: "assets/foods/hotcake.jpg",
        title: "Hotcake",
      ),
    ],
  ),
  CategoryMenu(
    category: "Drinks",
    items: [
      Menu(
        price: 25,
        image: "assets/foods/water.jpg",
        title: "Water",
      ),
      Menu(
        price: 25,
        image: "assets/foods/calamansi.jpg",
        title: "Calamansi Juice",
      ),
      Menu(
        price: 35,
        image: "assets/foods/bukojuice.jpg",
        title: "Buko Juice",
      ),
      Menu(
        price: 20,
        image: "assets/foods/c2.jpg",
        title: "C2-Solo",
      ),
    ],
  ),
];
