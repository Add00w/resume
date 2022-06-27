import 'package:resume/models/project.dart';

class ProjectService {
  static List<Project> projects() {
    final projects = [
      Project(
        name: 'Carenal',
        logo: 'assets/images/Logo.svg',
        description:
            'Carenal is a salon app that helps salon owners reach more customers in their area by allowing the customers to see and filter their nearest salons. We used Tap for payment; Sentry for error tracking; Google Map for showing salons to users and showing the path to them; Firebase notification and integrated Apple Pay for iPhones.',
        playStoreUrl:
            'https://play.google.com/store/apps/details?id=com.carenal.app',
        appStoreUrl: '',
      ),
      Project(
        name: 'Car details',
        logo: 'assets/images/car_details_logo.svg',
        description:
            'Car Details is an advertising app for vehicles. We used online payment, Sentry for error tracking, deep-link, Firebase notification, and more.',
        playStoreUrl:
            'https://play.google.com/store/apps/details?id=com.sa.bootfi.cardetails.android',
        appStoreUrl: 'https://apps.apple.com/sa/app/car-details/id1593170098',
      ),
      Project(
        name: 'Jawhara Abaya Store',
        logo: 'assets/images/johrh_logo.jpeg',
        description:
            'Jawhara Abaya Store is the first application specialized in Abayas and Jalabiyas from the best types of Abaya cloth in the world.',
        playStoreUrl: '',
        appStoreUrl: '',
      ),
      Project(
        name: 'Dot Less',
        logo: 'assets/images/dotless.png',
        description:
            'This is a simple app that removes dots from Arabic words. It keeps your history and allows you to copy too.',
        playStoreUrl:
            'https://play.google.com/store/apps/details?id=com.bootfi.dot_less',
        appStoreUrl: '',
      ),
    ];

    return projects;
  }
}
