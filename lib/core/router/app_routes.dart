import 'package:flutter/material.dart';
import 'package:orion_commons/core/router/route_config.dart';
import 'package:orion_commons/features/auth/presentation/pages/login_page.dart';
import 'package:orion_commons/shared/presentations/main_view.dart';

class AppRoutes {
  AppRoutes._();

  static const String splash = '/';
  static const String onboarding = '/onboarding';

  // Authentication
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String emailVerification = '/email-verification';


  // Main Navigation
  static const String home = '/home';
  static const String discover = '/discover';
  static const String learn = '/learn';
  static const String profile = '/profile';

  // Create
  static const String create = '/create';
  static const String createOffer = '/create-offer';
  static const String createRequest = '/create-request';

  // Offers / Requests
  static const String offers = '/offers';
  static const String requests = '/requests';

  static const String offerDetails = '/offers/details';
  static const String requestDetails = '/requests/details';


  // Profile
  static const String editProfile = '/profile/edit';
  static const String myOffers = '/profile/offers';
  static const String myRequests = '/profile/requests';
  static const String saved = '/profile/saved';

  // Settings
  static const String settings = '/settings';
  static const String notifications = '/settings/notifications';
  static const String privacy = '/settings/privacy';
  static const String appearance = '/settings/appearance';

  // Support
  static const String helpCenter = '/help';
  static const String communityGuidelines = '/community-guidelines';

  // States
  static const String emptyState = '/empty';
  static const String errorState = '/error';




  static Route<dynamic> onGenerateRoute(RouteSettings routesettings) {
    switch (routesettings.name) {

      case login:
        return MaterialPageRoute(
          settings: routesettings,
          builder: (_) => const LoginPage(),
        );


      case home:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: true,
            appBar: null,
            body: Center(
              child: Text('Home'),
            ),
          ),
        );

      case discover:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: true,
            appBar: null,
            body: Center(
              child: Text('Discover'),
            ),
          ),
        );

      case learn:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: true,
            appBar: null,
            body: Center(
              child: Text('Learn'),
            ),
          ),
        );

      case profile:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: true,
            appBar: null,
            body: Center(
              child: Text('Profile'),
            ),
          ),
        );



      case create:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Create'),
            ),
          ),
        );

      case createOffer:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Create Offer'),
            ),
          ),
        );

      case createRequest:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Create Request'),
            ),
          ),
        );



      case offers:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Offers'),
            ),
          ),
        );

      case offerDetails:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Offer Details'),
            ),
          ),
        );



      case requests:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Requests'),
            ),
          ),
        );

      case requestDetails:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Request Details'),
            ),
          ),
        );



      case editProfile:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Edit Profile'),
            ),
          ),
        );

      case myOffers:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('My Offers'),
            ),
          ),
        );

      case myRequests:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('My Requests'),
            ),
          ),
        );

      case saved:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Saved'),
            ),
          ),
        );



      case settings:
        return _mainRoute(
          settings:routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Settings'),
            ),
          ),
        );

      case notifications:
        return _mainRoute(
          settings:routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Notifications'),
            ),
          ),
        );

      case privacy:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Privacy'),
            ),
          ),
        );

      case appearance:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Appearance'),
            ),
          ),
        );



      case helpCenter:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Help Center'),
            ),
          ),
        );

      case communityGuidelines:
        return _mainRoute(
          settings: routesettings,
          config: const ShellRouteConfig(
            showBottomBar: false,
            appBar: null,
            body: Center(
              child: Text('Community Guidelines'),
            ),
          ),
        );



      default:
        return MaterialPageRoute(
          settings: routesettings,
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Route Not Found'),
            ),
          ),
        );
    }
  }



  static Route<dynamic> _mainRoute({
    required RouteSettings settings,
    required ShellRouteConfig config,
  }) {
    return MaterialPageRoute(
      settings: settings,
      builder: (_) => MainView(
        config: config,
      ),
    );
  }
}