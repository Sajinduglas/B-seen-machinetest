import 'package:b_seen_machinetest/dummy_data.dart';
import 'package:b_seen_machinetest/model/model.dart';
import 'package:flutter/material.dart';

class NomadicController extends ChangeNotifier {
  late NomadicModel nomadicModel = NomadicModel();
  fetchNomadicData(){
    nomadicModel=NomadicModel.fromJson(nomadicData);
    notifyListeners();
  }
}
