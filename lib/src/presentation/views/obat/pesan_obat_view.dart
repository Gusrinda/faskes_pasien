import 'package:flutter/material.dart';
import 'package:pasien/src/core/config/theme_colors.dart';
import 'package:pasien/src/core/util/formatter.dart';
import 'package:pasien/src/presentation/views/resep/resep_paid_view.dart';
import 'package:pasien/src/presentation/widgets/text_field_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';

import '../payment/payment_view.dart';
import '../resep/resep_widget.dart';

class PesanObatView extends StatefulWidget {
  static const String routeName = '/pesan-obat/form';

  const PesanObatView({Key? key}) : super(key: key);

  @override
  State<PesanObatView> createState() => _PesanObatViewState();
}

class _PesanObatViewState extends State<PesanObatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: const _ContentView(),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 0, 16, 12),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              PaymentView.routeName,
              arguments: ResepPaidView.routeName,
            );
          },
          child: const Text('Lanjut Pembayaran'),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Pesan Obat'),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const RsSubtitleLabel('RSUD Srengat', big: true),
          const SizedBox(height: 8),
          const Text(
            'Jl. Raya Dandong, Dandong, Kec. Srengat, Kabupaten Blitar, Jawa Timur 66152',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: ThemeColors.greyCaption,
            ),
          ),
          const Text(
            'Telp : -',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: ThemeColors.greyCaption,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Radio(
                value: true,
                groupValue: true,
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (value) {},
              ),
              const Text('Ambil Sendiri', style: TextStyle(fontSize: 14)),
              const SizedBox(width: 8),
              Radio(
                value: false,
                groupValue: true,
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (value) {},
              ),
              const Text('Kirim', style: TextStyle(fontSize: 14)),
            ],
          ),
          const SizedBox(height: 16),
          const FormTextLabel(label: 'Tanggal Pengambilan', mandatory: true),
          const SizedBox(height: 4),
          FormzTextField(
            leading: const Icon(Icons.calendar_month_outlined),
            textEditingController: TextEditingController(
              text: kDayFullDate2Format.format(DateTime.now()),
            ),
          ),
          const SizedBox(height: 16),
          const FormTextLabel(label: 'Upload Resep', mandatory: true),
          const SizedBox(height: 4),
          const _FormUploadCardField(),
          const SizedBox(height: 16),
          Row(
            children: const [
              Expanded(
                flex: 5,
                child: FormTextLabel(label: 'Obat', mandatory: true),
              ),
              SizedBox(width: 8),
              Expanded(
                flex: 2,
                child: FormTextLabel(label: 'Qty', mandatory: true),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: FormzTextField(
                  textEditingController:
                      TextEditingController(text: 'Aspirin 50mg'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 3,
                child: FormzTextField(
                  textEditingController: TextEditingController(text: '123'),
                  leading: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const Icon(
                      Icons.remove,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                  trailing: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  contentPadding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          const ResepTileCheckBox(
            selected: null,
            title: 'Aspirin 50mg',
            qty: 2,
            price: 25000,
            description: 'Minum sebelum makan',
          ),
          const Divider(),
          Row(
            children: [
              const Text('Total'),
              const Spacer(),
              Text(
                kRupiahFormat.format(50000),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FormUploadCardField extends StatelessWidget {
  const _FormUploadCardField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      decoration: const BoxDecoration(
        color: ThemeColors.backgroundField,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Center(
        child: Icon(
          Icons.add,
          color: ThemeColors.backgroundFieldDark,
        ),
      ),
    );
  }
}
