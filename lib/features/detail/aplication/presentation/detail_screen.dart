import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hp_api/core/routes/router.dart';
import 'package:hp_api/features/detail/aplication/providers/detail_provider.dart';

import '../../../../core/domain/user_model.dart';

class DetailScreen extends ConsumerWidget {
  final String idUser;
  const DetailScreen({super.key, required this.idUser});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(detailProvider(idUser));
    final router = ref.watch(routerProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              router.go('/');
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: user.when(
          data: (data) {
            return SizedBox(
              width: 400,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      child: data.image == ''
                          ? const Icon(Icons.people)
                          : Image.network(data.image),
                    ),
                    Card(
                      child: ListTile(
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Character: ${data.name}'),
                            Text('Actor name: ${data.actor}'),
                            Text('Acestry: ${data.ancestry}'),
                            Text('House: ${data.house}'),
                            Text(
                                'General characteristics: ${_formatStudentStatus(data.hogwartsStudent)}, ${_formatHairColor(data.hairColour)}, ${_formatEyeColor(data.eyeColour)}.'),
                            Text(
                                'Wand charecteristics: ${_formatWandWood(data.wand)}')
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          error: (error, stackTrace) => Text('Error: $error'),
          loading: () => const CircularProgressIndicator(),
        ),
      ),
    );
  }
}

String _formatHairColor(String color) =>
    color.isNotEmpty ? 'hair color is $color' : '';

String _formatEyeColor(String color) =>
    color.isNotEmpty ? 'eyes color is $color' : '';

String _formatWandWood(Wand wand) =>
    wand.wood.isNotEmpty ? 'The wood is ${wand.wood}' : '';

String _formatStudentStatus(bool isStudent) =>
    isStudent ? 'Howarts student' : '';
