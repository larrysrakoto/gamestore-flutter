import 'package:finalgamestore/views/home/widgets/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
            transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset((150), 50),
               child: Image.asset('assets/images/bg_liquid.png', width: 200,)
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(180, 100),
                  child: Image.asset('assets/images/bg_liquid.png', width: 200,)
            )
            ),
            Column(
              children: [
                HeaderSections(),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

Widget NavigationBar () {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
        label: 'Home',
          icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: 'Application',
        icon: Icon(Icons.home),
      ),
      BottomNavigationBarItem(
        label: 'Film',
        icon: Icon(Icons.movie),
      ),
      BottomNavigationBarItem(
        label: 'Book',
        icon: Icon(Icons.book),
      ),
    ],
  );
}
