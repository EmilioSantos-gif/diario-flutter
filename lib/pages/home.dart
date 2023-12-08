import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  String homeTitle = 'My Birthday';
  String homeDescription =
      'It\'s going to be a great birthday. We are going out for'
      ' dinner at my favorite place, then watch a movie after we'
      ' go to the galleria for ice cream and espresso.';
  List<String> tags = [
    'Birthday',
    'Food',
    'Date',
    'Movie',
    'Family',
    'Home',
  ];

  List<String> footerImages = [
    'assets/images/birthday-cake.jpg',
    'assets/images/birthday-gifts.jpg',
    'assets/images/birthday-food.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/birthday-cake-cover.jpg', width: 450),
            Padding(
              padding: const EdgeInsets.all(15),
              child: SafeArea(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _homeTitle(homeTitle),
                  const SizedBox(height: 8),
                  _buildSectionBorder(),
                  const SizedBox(height: 8),
                  _homeDescription(homeDescription),
                  const SizedBox(height: 8),
                  _buildSectionBorder(),
                  const SizedBox(height: 8),
                  _weatherSection(),
                  const SizedBox(height: 8),
                  _buildSectionBorder(),
                  const SizedBox(height: 8),
                  _tags(tags),
                  const SizedBox(height: 8),
                  _buildSectionBorder(),
                  const SizedBox(height: 8),
                  _footer(footerImages),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }

  Widget _homeTitle(String homeTitle) {
    return Text(homeTitle,
        style: const TextStyle(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
        ));
  }

  Widget _homeDescription(String homeDescription) {
    return Text(
      homeDescription,
      style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
    );
  }

  Widget _weatherSection() {
    return const Row(
      children: [
        Column(
          children: [
            Icon(
              Icons.wb_sunny,
              color: Colors.orange,
            ),
          ],
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '82 Clear',
              style: TextStyle(
                  color: Colors.deepOrange, fontWeight: FontWeight.bold),
            ),
            Text('4500 San Alpho Drive, Dallas',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400))
          ],
        )
      ],
    );
  }

  Widget _tags(List<String> tags) {
    return Wrap(
        spacing: 10,
        runSpacing: 5,
        children: List.generate(
            tags.length,
            (index) => Chip(
                avatar: const Icon(Icons.label_outline),
                label: Text(tags[index]))));
  }

  Widget _footer(List<String> imagePaths) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: [
            ...List.generate(
                imagePaths.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(imagePaths[index]),
                      ),
                    )),
          ],
        ),
        const SizedBox(
            child: Column(
          children: [
            Icon(Icons.cake),
            Icon(Icons.party_mode),
            Icon(Icons.wine_bar)
          ],
        )),
      ],
    );
  }

  Widget _buildSectionBorder() {
    return Container(
      height: 1,
      width: double.infinity,
      color: Colors.grey[300],
      child: const SizedBox(height: 8), // Soft gray color for the border
    );
  }
}
