import 'package:flutter/material.dart';
import 'package:taskito/views/add_service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:taskito/views/email_verification.dart';
import 'package:taskito/views/about_us.dart';
import 'package:taskito/views/id_verification.dart';
import 'package:taskito/views/privacy_policy.dart';
import 'package:taskito/views/profile/account_settings.dart';
import 'package:taskito/views/profile/contact.dart';
import 'package:taskito/views/profile/edit_profile.dart';
import 'package:taskito/views/profile/profile_details.dart';
import 'package:taskito/views/profile/see_all_reviews.dart';
import 'package:taskito/views/service/service_uploaded_successfully.dart';
import 'package:taskito/views/successfull_upload.dart';
import 'package:taskito/views/terms_conditions.dart';
import 'package:taskito/views/userProfile/profile.dart';
import 'package:taskito/views/welcome_back.dart';
import 'package:taskito/views/layout/layout.dart';
import 'package:taskito/views/layout/servies_layout.dart';
import 'package:taskito/views/service/physical_service.dart';
import 'package:taskito/views/service/service_details.dart';
import 'package:taskito/views/widgets/splash.dart/splash.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({super.key});
  @override


  Widget build(BuildContext context) {    
    return MaterialApp(
      
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: MyLayout(ind: 0, page: 0,),
      routes: {
        "chat": (context)=>Contact(),
        "seeAll": (context)=> const SeeAllReviews(),
        "service_details": (context)=> const ServiceDetails(),
        "service_uploaded_successfully": (context)=> const ServiceUploadedSuccessfully(),
        "about_us": (context)=> const AboutUs(),
        "terms_conditions": (context)=> const TermsConditions(),
        "privacy_policy": (context)=> const PrivacyPolicy(),
        "account_settings": (context)=> const AccountSettings(),
        "edit_profile": (context)=> EditProfile(),
        "id_verification": (context)=> const IdVerification(),
        "email_verification" : (context)=> const EmailVerification(),
        "successfull_uplaod" : (context)=> const SuccessfullUpload(),
        "welcome_back": (context)=>const WelcomeBack(),
        "add_service": (context)=> const AddService()
      }
    );
}
}