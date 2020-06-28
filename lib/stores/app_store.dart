import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

class AppStore = BaseAppStorage with _$AppStore;

abstract class BaseAppStorage with Store {}
