import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart'; // Import the generated file

final GetIt getIt = GetIt.instance;

@InjectableInit(preferRelativeImports: false)
void configureInjection(String environment) =>
    getIt.init(environment: environment);
