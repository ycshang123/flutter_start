import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image和Container组件"),
        elevation: 8,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Wrap(
          spacing: 20,
          runSpacing: 10,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset(
                "images/jpg.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 150.0,
              height: 150.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: NetworkImage(
                        "https://git.poker/ycshang123/image-hosting/blob/master/banner3.1oldyqfip7ds.webp?raw=true"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: 150.0,
              height: 150.0,
              color: Colors.blue.shade200,
              child: ClipOval(
                clipper: _MyClipper(),
                child: Image.network(
                    "https://git.poker/ycshang123/image-hosting/blob/master/jpg3.4psuwu72r5k0.webp?raw=true"),
              ),
            ),
            GestureDetector(
              onTap: () => {Navigator.pushNamed(context, "/listview/base")},
              child: (Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: Image.network(
                  "https://git.poker/ycshang123/image-hosting/blob/master/jpg5.1zgvpi9u2zr4.webp?raw=true",
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomRight,
                  color: Colors.deepPurple,
                  colorBlendMode: BlendMode.screen,
                  repeat: ImageRepeat.repeat,
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}

class _MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return const Rect.fromLTRB(20.0, 20.0, 140, 120);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    throw false;
  }
}
