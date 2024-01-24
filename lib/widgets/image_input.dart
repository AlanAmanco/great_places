import 'package:flutter/material.dart';

class ImageInputState extends StatefulWidget {
  const ImageInputState({super.key});

  @override
  State<ImageInputState> createState() => _ImageInputStateState();
}

class _ImageInputStateState extends State<ImageInputState> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 180,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          alignment: Alignment.center,
          child: const Text('nenhuma imagem!'),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.camera),
            label: const Text('Tirar Foto'),
          ),
        )
      ],
    );
  }
}
