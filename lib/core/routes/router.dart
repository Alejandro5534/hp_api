import 'package:flutter/material.dart';
import 'package:hp_api/features/home/aplication/home_screen.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(routes: [
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation.drive(CurveTween(
                curve:
                    Curves.easeInOut)), // Personalizar la curva de la animación
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 1000),
      ),
    ),
    // GoRoute(
    //     path: '/comic/:id',
    //     pageBuilder: (context, state) {
    //       final id = int.parse(state.pathParameters['id']!);
    //       return CustomTransitionPage<void>(
    //         key: state.pageKey,
    //         child: CustomScaffoldLayout(widget: DetailComicLayout(id: id)),
    //         transitionsBuilder:
    //             (context, animation, secondaryAnimation, child) {
    //           return FadeTransition(
    //             opacity: animation.drive(CurveTween(
    //                 curve: Curves
    //                     .easeInOut)), // Personalizar la curva de la animación
    //             child: child,
    //           );
    //         },
    //         transitionDuration: const Duration(milliseconds: 1000),
    //       );
    //     }),
  ]);
}
