import 'package:b_seen_machinetest/controller/controller.dart';
import 'package:b_seen_machinetest/view/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NomadicController()),
        // ChangeNotifierProvider(create: (_) => YourSecondProvider()),
        // Add more providers if needed
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    ),
  );
}


