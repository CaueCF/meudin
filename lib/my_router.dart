import 'package:go_router/go_router.dart';
import 'package:meudin/models/infos.dart';
import 'package:meudin/pages/all_pages.dart';

final myRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'HomeScreen',
      path: '/',
      builder: (context, state) => const MyHomePage(title: 'Pagina inicial'),
    ),
    GoRoute(
      name: 'addLancamento',
      path: '/addLancamento/:altura/:largura',
      builder: (context, state) => AddLancamento(
        altura: state.pathParameters['altura'] as double,
        largura: state.pathParameters['largura'] as double,
      ),
    ),
    GoRoute(
      name: 'infoPage',
      path: '/infoPage',
      builder: (context, state) {
        InfoSample infoSample = state.extra as InfoSample;
        return InfoPage(
          infoSample: infoSample,
        );
      },
    ),
  ],
);
