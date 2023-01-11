import 'package:bouncing_cards/widgets/book_card.dart';
import 'package:flutter/material.dart';

import 'data/books.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  Animation? animationController;
  PageController? pageController;

  var currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController =
        PageController(initialPage: currentPageIndex, viewportFraction: 0.7);
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: books.length,
        controller: pageController,
        itemBuilder: (context, index) => BookCard(book: books[index]),
      ),
    );
  }
}
