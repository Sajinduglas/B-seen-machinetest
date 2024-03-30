//
// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
//
// class CarouselWithIconsAndDots extends StatefulWidget {
//   @override
//   _CarouselWithIconsAndDotsState createState() =>
//       _CarouselWithIconsAndDotsState();
// }
//
// class _CarouselWithIconsAndDotsState extends State<CarouselWithIconsAndDots> {
//   int _currentIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Stack(
//       children: [
//         CarouselSlider(
//           options: CarouselOptions(
//             height: 150.0, // Adjust the height
//             viewportFraction: 1.0,
//             enableInfiniteScroll: false,
//             onPageChanged: (index, _) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//             autoPlay: true,
//             autoPlayInterval: Duration(seconds: 5),
//             autoPlayAnimationDuration: Duration(milliseconds: 800),
//             autoPlayCurve: Curves.fastOutSlowIn,
//           ),
//           items: [
//             _buildCarouselItem(
//               'assets/images/aiimage.jpg',
//               Colors.blue,
//             ),
//             _buildCarouselItem(
//               'assets/images/aiimage2.jpg',
//               Colors.green,
//             ),
//             _buildCarouselItem(
//               'assets/images/ai image3.jpg',
//               Colors.orange,
//             ),
//           ],
//         ),
//         Positioned(
//           top: 20,
//           left: 20,
//           child: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: () {
//               // Go to the previous slide
//               if (_currentIndex > 0) {
//                 setState(() {
//                   _currentIndex--;
//                 });
//               }
//             },
//           ),
//         ),
//         Positioned(
//           top: 20,
//           right: 20,
//           child: Row(
//             children: [
//               _buildDot(_currentIndex == 0),
//               SizedBox(width: 5),
//               _buildDot(_currentIndex == 1),
//               SizedBox(width: 5),
//               _buildDot(_currentIndex == 2),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildCarouselItem(
//       String imagePath,
//       Color color,
//       ) {
//     return Container(
//       width: 400, // Adjust the width
//       height: 150, // Adjust the height
//       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: color,
//         image: DecorationImage(
//           image: AssetImage(imagePath),
//           fit: BoxFit.cover, // Ensure the image fits within the container
//         ),
//       ),
//     );
//   }
//
//   Widget _buildDot(bool isActive) {
//     return Container(
//       width: 10,
//       height: 10,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: isActive ? Colors.white : Colors.white54,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWithIconsAndDots extends StatefulWidget {
  @override
  _CarouselWithIconsAndDotsState createState() =>
      _CarouselWithIconsAndDotsState();
}

class _CarouselWithIconsAndDotsState extends State<CarouselWithIconsAndDots> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var devHeight = MediaQuery.of(context).size.height;
    var devWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
           // Adjust the height
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            onPageChanged: (index, _) {
              setState(() {
                _currentIndex = index;
              });
            },
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
          items: [
            _buildCarouselItem(
              'assets/images/aiimage.jpg',
              Colors.blue,
            ),
            _buildCarouselItem(
              'assets/images/aiimage2.jpg',
              Colors.green,
            ),
            _buildCarouselItem(
              'assets/images/ai image3.jpg',
              Colors.orange,
            ),
          ],
        ),
        Positioned(
          top: 25,
          left: 50,
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Go to the previous slide
              if (_currentIndex > 0) {
                setState(() {
                  _currentIndex--;
                });
              }
            },
          ),
        ),
        Positioned(
          top: 25,
          right: 50,
          child: Row(
            children: [
              _buildDot(_currentIndex == 0),
              SizedBox(width: 5),
              _buildDot(_currentIndex == 1),
              SizedBox(width: 5),
              _buildDot(_currentIndex == 2),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCarouselItem(

      String imagePath,
      Color color,
      ) {
    return Container(
      width: MediaQuery.of(context).size.width*0.9, // Adjust the width
      height: MediaQuery.of(context).size.height*0.6, // Adjust the height

      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
   padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover, // Ensure the image fits within the container
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      // width: 10,
      // height: 10,
      width: MediaQuery.of(context).size.width*0.01, // Adjust the width
      height: MediaQuery.of(context).size.height*0.01,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.white : Colors.white54,
      ),
    );
  }
}


