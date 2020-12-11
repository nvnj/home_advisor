import 'package:get_it/get_it.dart';
import 'package:home_advisor/core/api/api.dart';

import '../core/services/profile_service.dart';
import '../ui/chatlist/chatlist_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ProfileService());
  locator.registerLazySingleton(() => ChatListModel());
  locator.registerLazySingleton(() => Api());
}