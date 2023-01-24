import 'package:flutter/material.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/presentation/views/message/message_tile.dart';

class MessageView extends StatefulWidget {
  const MessageView({Key? key}) : super(key: key);

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesan'),
      ),
      body: ListView(
        children: [
          MessageTile(
            image: Assets.images.surat1.path,
            title:
                'Selamat Tahun Baru 2023! Ciptakan revolusi mu dengan tetap jaga kesehatan!',
            description: 'Awali tahun baru mu dengan jaga kesehatan',
          ),
          MessageTile(
            image: Assets.images.surat2.path,
            title: 'Awali tahun baru mu dengan jaga kesehatan',
            description: 'Buruan cek kesehatanmu! Kuota terbatas loh!',
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
