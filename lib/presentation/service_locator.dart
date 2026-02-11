import 'package:get_it/get_it.dart';
import 'package:myecomerceapp/data/auth/reopositry/auth_firebase_service.dart';
import 'package:myecomerceapp/data/auth/reopositry/auth_repository_impl.dart';
import 'package:myecomerceapp/domain/auth/repository/atuh.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
}
