import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hp_api/features/home/aplication/providers/users_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userFetch = ref.watch(userFetchProvider);
    return Scaffold(
      body: userFetch.when(
        data: (data) => ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: data[index].image == null || data[index].image == ''
                  ? const Icon(Icons.people)
                  : Image.network(data[index].image!),
              title: Text('Character: ${data[index].name} '),
              subtitle: Text(data[index].ancestry ?? 'Ancestry Undefinded'),
              onTap: () {},
            );
          },
        ),
        error: (error, stackTrace) => Text('Error: $error'),
        loading: () => const CircularProgressIndicator(),
      ),
    );
  }
}
