import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/request_model.dart';

class ApplicationModel with ChangeNotifier {
  List requests = List<RequestModel>();
  final completedMissions = [
    RequestModel(
      title: 'Buy medicine for my children',
      description: 'Buy medicine for those in need.',
      type: 'MEDICINE',
    ),
    RequestModel(
      title: 'Buy food for poor families',
      description: 'Help poor families to afford basic food and suppliers.',
      type: 'FOOD',
    ),
    RequestModel(
      title: 'Buy clothe for homeless',
      description:
          'Help homeless people to afford clothe to support the winter.',
      type: 'CLOTHE',
    ),
  ];

  void addRequest(RequestModel model) {
    requests.add(model);
    notifyListeners();
  }

  RequestModel getCurrentRequest(int index) {
    return requests[index];
  }
}
