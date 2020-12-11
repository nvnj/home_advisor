import 'package:get_it/get_it.dart';
import 'package:home_advisor/core/api/api.dart';
import 'package:home_advisor/services/auth/firebase_auth_service.dart';

import '../core/services/profile_service.dart';
import '../ui/chatlist/chatlist_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ProfileService());
  locator.registerLazySingleton(() => ChatListModel());
  locator.registerLazySingleton(() => Api());
  locator
      .registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
}
