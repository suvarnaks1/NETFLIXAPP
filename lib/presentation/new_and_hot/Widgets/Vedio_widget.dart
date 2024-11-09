import 'package:flutter/material.dart';

class VedioWidget extends StatelessWidget {
  const VedioWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
              fit: BoxFit.cover,
              "https://media.themoviedb.org/t/p/w355_and_h200_multi_faces/iQslVnGFJWQzz5kGTvOhU85656f.jpg"),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.black.withOpacity(0.1),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.volume_up,
                    color: Colors.white,
                  ))),
        ),
      ],
    );
  }
}
