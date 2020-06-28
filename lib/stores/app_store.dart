import 'package:flutter_hackathon/models/request_model.dart';
import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

class AppStore = BaseAppStorage with _$AppStore;

abstract class BaseAppStorage with Store {
  @observable
  List requests = List<RequestModel>();

  @action
  void addRequest(RequestModel request) {
    requests.add(request);
  }
}
