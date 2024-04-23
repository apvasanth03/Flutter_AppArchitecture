import 'package:app/src/data/sl/data_service_locator.dart';
import 'package:app/src/domain/si/domain_service_locator.dart';
import 'package:app/src/ui/sl/ui_service_locator.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void slSetup() {
  // Data
  dataSLSetup();

  // Domain
  domainSLSetup();

  // UI
  uiSLSetup();
}
