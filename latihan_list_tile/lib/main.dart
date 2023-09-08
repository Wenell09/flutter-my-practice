import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Widget list tile"),
        ),
        body: ListView(
          children: const <Widget>[
            ChatItem(
              assetImage: "image/pp.jpg",
              nama: "Wenell",
              subtitle:
                  "ini adalah pesan chat nya... fkusgkfgufbsfwegifgsufbweiofjhsgfusagfiwgwogifwgriwggwuioghriufsdffwf",
              time: "10.00 AM",
            ),
            Divider(
              color: Colors.black,
            ),
            ChatItem(
              assetImage: "image/lambo1.png",
              nama: "Budi",
              subtitle:
                  "ini adalah pesan chat nya... fkusgkfgufbsfwegifgsufbweiofjhsgfusagfiwgwogifwgriwggwuioghriufsdffwf",
              time: "11.00 PM",
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String? assetImage;
  final String? nama;
  final String? subtitle;
  final String? time;

  const ChatItem(
      {super.key, this.assetImage, this.nama, this.subtitle, this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      leading: CircleAvatar(
        backgroundImage: AssetImage(assetImage!),
      ),
      title: Text(nama.toString()),
      subtitle: Text(
        subtitle.toString(),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(time.toString()),
      onTap: () {},
    );
  }
}
