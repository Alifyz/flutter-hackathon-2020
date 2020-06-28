import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/request_model.dart';

class ApplicationModel with ChangeNotifier {
  List requests = List<RequestModel>();

  void addRequest(RequestModel model) {
    requests.add(model);
    notifyListeners();
  }

  RequestModel getCurrentRequest(int index) {
    return requests[index];
  }
}
