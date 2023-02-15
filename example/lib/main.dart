import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin_example/app.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart'
      show ArCoreController;
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async

{
  try
  {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  }
  catch (errorMsg)
  {
   print("Error:: " + errorMsg.toString());
  }

  WidgetsFlutterBinding.ensureInitialized();

  print('ARCORE IS AVAILABLE?');
  print(await ArCoreController.checkArCoreAvailability());

  print('\nAR SERVICES INSTALLED?');
  print(await ArCoreController.checkIsArCoreInstalled());

  runApp(
      App(),
  );
}



