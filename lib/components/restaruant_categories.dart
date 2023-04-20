import 'package:flutter/material.dart';

import '../models/menu.dart';

class RestaurantCategories extends SliverPersistentHeaderDelegate {
  final ValueChanged<int> onChanged;
  final int selectedIndex;

  RestaurantCategories({required this.onChanged, required this.selectedIndex});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: 52,
      color: Colors.white,
      child: Categories(
        onChanged: onChanged,
        selectedIndex: selectedIndex,
      ),
    );
  }

  @override
  double get maxExtent => 52;

  @override
  double get minExtent => 52;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
    required this.onChanged,
    required this.selectedIndex,
  }) : super(key: key);

  final ValueChanged<int> onChanged;
  final int selectedIndex;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late ScrollController controller;

  late ScrollController _controller;
  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant Categories oldWidget) {
    controller.animateTo(
      120.0 * widget.selectedIndex,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          demoCategoryMenus.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 8),
            child: TextButton(
              onPressed: () {
                widget.onChanged(index);
              },
              style: TextButton.styleFrom(
                  primary: widget.selectedIndex == index
                      ? Colors.black
                      : Colors.black45),
              child: Text(
                demoCategoryMenus[index].category,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
