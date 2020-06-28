import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/request_model.dart';

class ApplicationModel with ChangeNotifier {
  List requests = List<RequestModel>();
  final completedMissions = [
    RequestModel(
      title: 'Buy medicine for my children',
      description:
          'Since the crisis, I am unable to buy medicine for my two kids.',
      type: 'MEDICINE',
    )
  ];

  void addRequest(RequestModel model) {
    requests.add(model);
    notifyListeners();
  }

  RequestModel getCurrentRequest(int index) {
    return requests[index];
  }
}
