import 'package:get_it/get_it.dart';
import 'package:home_advisor/services/profile_service.dart';
import 'package:home_advisor/ui/chatlist/chatlist_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ProfileService());
  locator.registerLazySingleton(() => ChatListModel());
}
