import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'document_form.dart';
import 'document_list_widget.dart';

class DocumentListView extends StatefulWidget {
  static const String routeName = '/profile/documents';

  const DocumentListView({super.key});

  @override
  State<DocumentListView> createState() => _DocumentListViewState();
}

class _DocumentListViewState extends State<DocumentListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Dokumen'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16.sp, 0, 16.sp, 16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Divider(),
            DocumentTile(
              name: 'Kartu Tanda Penduduk',
              value: '31255107960002',
              uploaded: true,
            ),
            Divider(),
            DocumentTile(
              name: 'Kartu BPJS',
              value: '0001484066777',
            ),
            Divider(),
            DocumentTile(
              name: 'Lampiran Rekam Medis Terakhir',
              value: 'RM689689',
              uploaded: true,
            ),
            Divider(),
            DocumentTile(name: 'Surat Kontrol'),
            Divider(),
            DocumentTile(name: 'Surat Rujukan'),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: OutlinedButton(
          onPressed: () {
            Navigator.pushNamed(context, DocumentForm.routeName);
          },
          child: const Text('Upload Dokumen Baru'),
        ),
      ),
    );
  }
}
