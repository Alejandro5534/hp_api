import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hp_api/core/routes/router.dart';
import 'package:hp_api/features/home/aplication/providers/users_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userFetch = ref.watch(userFetchProvider);
    final router = ref.watch(routerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Harry Potter API',
          style: TextStyle(fontSize: 13),
        )),
      ),
      body: userFetch.when(
        data: (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final user = data[index];
            return ListTile(
              leading: user.image == ''
                  ? const Icon(Icons.people)
                  : Image.network(user.image),
              title: Text('Character: ${user.name} Actor name: ${user.actor}'),
              subtitle: Text(
                  '${user.house} ${user.ancestry == '' ? 'Ancestry Undefinded' : user.ancestry}'),
              onTap: () {
                router.go('/detail/${user.id}');
              },
            );
          },
        ),
        error: (error, stackTrace) => Text('Error: $error'),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
