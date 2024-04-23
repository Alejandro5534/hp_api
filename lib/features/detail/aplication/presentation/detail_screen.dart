import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hp_api/features/detail/aplication/providers/detail_provider.dart';

class DetailScreen extends ConsumerWidget {
  final String idUser;
  const DetailScreen({super.key, required this.idUser});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(detailProvider(idUser));
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: user.when(
          data: (data) {
            final studentHowarts =
                data.hogwartsStudent ? 'Howarts student' : '';
            final hairColor = data.hairColour != ''
                ? 'hair color is ${data.hairColour}'
                : data.hairColour;
            final eyesColor = data.eyeColour != ''
                ? 'eyes color is ${data.eyeColour}'
                : data.eyeColour;
            final wandWood = data.wand.wood != ''
                ? 'The wood is ${data.wand.wood}'
                : data.wand.wood;
            return SizedBox(
              width: 400,
              child: Card(
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
                          'General characteristics: $studentHowarts, $hairColor, $eyesColor.'),
                      Text('Wand charecteristics: $wandWood')
                    ],
                  ),
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
