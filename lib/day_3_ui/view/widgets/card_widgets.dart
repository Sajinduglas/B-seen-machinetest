// import 'package:flutter/material.dart';
//
// class CustomCard extends StatelessWidget {
//   const CustomCard({
//     Key? key,
//     required this.firstText,
//     required this.secondText,
//     this.imageUrl,
//     required this.borderColor,
//     this.iconData,
//   }) : super(key: key);
//
//   final String firstText;
//   final String secondText;
//   final String? imageUrl;
//   final Color borderColor;
//   final IconData? iconData;
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       width: 400,
//       curve: Curves.fastOutSlowIn,
//       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       height: 150,
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.black,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(
//           width: 2.5,
//           color: borderColor, // Set border color to transparent
//         ),
//         gradient: LinearGradient(
//           colors: [
//             Colors.black.withOpacity(0.5), // Adjust the gradient colors
//             Colors.black.withOpacity(0.2), // Adjust the gradient colors
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.blue.withOpacity(0.10), // Adjust the shadow color
//             spreadRadius: 4,
//             blurRadius: 4,
//
//             offset: Offset(1, 3),
//           ),
//         ],
//       ),
//       duration: Duration(seconds: 10),
//       child: Row(
//         children: [
//           SizedBox(
//             width: 40,
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: 15,
//                 ),
//                 Text(
//                   firstText,
//                   style: const TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//                 Text(
//                   secondText,
//                   style: const TextStyle(
//                     fontSize: 17,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.white70,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             width: 150,
//             height: 150,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(8),
//
//               // border: borderColor != null ? Border.all(color: borderColor!) : null,
//             ),
//             child: imageUrl != null && imageUrl!.isNotEmpty
//                 ? Image.asset(
//                     imageUrl!,
//                     fit: BoxFit.cover,
//                   )
//                 : iconData != null
//                     ? Icon(
//                         iconData,
//                         size: 70,
//                         color: Colors.grey,
//                       )
//                     : const SizedBox(), // If neither image nor icon is provided, return an empty SizedBox
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({
    Key? key,
    required this.firstText,
    required this.secondText,
    this.imageUrl,
    required this.borderColor,
    this.iconData,
  }) : super(key: key);

  final String firstText;
  final String secondText;
  final String? imageUrl;
  final Color borderColor;
  final IconData? iconData;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _colorAnimation = ColorTween(begin: Colors.transparent, end: widget.borderColor).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _colorAnimation,
      builder: (context, child) {
        return AnimatedContainer(
          width: 400,
          curve: Curves.fastOutSlowIn,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          height: 150,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 2.5,
              color: _colorAnimation.value ?? Colors.blue, // Use animated border color or default to transparent
            ),
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.5), // Adjust the gradient colors
                Colors.black.withOpacity(0.2), // Adjust the gradient colors
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.10), // Adjust the shadow color
                spreadRadius: 4,
                blurRadius: 4,
                offset: Offset(1, 3),
              ),
            ],
          ),
          duration: Duration(seconds: 10),
          child: Row(
            children: [
              SizedBox(
                width: 40,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      widget.firstText,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      widget.secondText,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: widget.imageUrl != null && widget.imageUrl!.isNotEmpty
                    ? Image.asset(
                  widget.imageUrl!,
                  fit: BoxFit.cover,
                )
                    : widget.iconData != null
                    ? Icon(
                  widget.iconData,
                  size: 70,
                  color: Colors.grey,
                )
                    : const SizedBox(), // If neither image nor icon is provided, return an empty SizedBox
              )
            ],
          ),
        );
      },
    );
  }
}
