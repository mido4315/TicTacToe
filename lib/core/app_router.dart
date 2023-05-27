import 'package:go_router/go_router.dart';
import '../features/coming soon/presentation/coming_soon.dart';
import '../features/game/presentation/game_page.dart';
import '../features/home/presentation/home_page.dart';
import '../features/result/presentation/result_page.dart';
import '../features/select game/presentation/select_game.dart';

abstract class AppRouter {
  static const kSelectGame = '/SelectGame';
  static const kGamePage = '/GamePage';
  static const kResultPage = '/ResultPage';
  static const kComingSoonPage = '/ComingSoonPage';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: kSelectGame,
        builder: (context, state) => const SelectGame(),
      ),
      GoRoute(
        path: kGamePage,
        builder: (context, state) => const GamePage(),
      ),
      GoRoute(
        path: kResultPage,
        builder: (context, state) => const ResultPage(),
      ),
      GoRoute(
        path: kComingSoonPage,
        builder: (context, state) => const ComingSoonPage(),
      ),
    ],
  );
}
