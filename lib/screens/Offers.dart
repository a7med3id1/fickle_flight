import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Offers"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
        centerTitle: true,
        elevation: 1.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(
                    'images/Offer card.png',
                    height: 200,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(
                    'images/Offer card1.png',
                    height: 200,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(
                    'images/Offer card1.png',
                    height: 200,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Image.asset(
                    'images/Offer card1.png',
                    height: 200,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
