import 'package:flutter/material.dart';
import 'package:taskito/views/add_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:taskito/views/email_verification.dart';
import 'package:taskito/views/id_verification.dart';
import 'package:taskito/views/successfull_upload.dart';
import 'package:taskito/views/welcome_back.dart';

import 'package:taskito/views/layout/layout.dart';
import 'package:taskito/views/layout/servies_layout.dart';
import 'package:taskito/views/service/physical_service.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    
    return const MaterialApp(
      
      color: Colors.white,
      debugShowCheckedModeBanner: false,

      home: MyLayout(page: 0,ind: 0,),


=======
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: AddService()
>>>>>>> 1888a1a4a3e70acc1edf677cf5bd89c26dc4d486
    );
  }
}