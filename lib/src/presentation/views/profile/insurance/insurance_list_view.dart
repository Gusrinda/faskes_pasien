import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/presentation/blocs/profile/insurance/insurance_bloc.dart';
import 'package:pasien/src/presentation/widgets/empty_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'insurance_form.dart';
import 'insurance_list_widget.dart';

class InsuranceListView extends StatefulWidget {
  static const String routeName = '/profile/insurance';

  const InsuranceListView({super.key});

  @override
  State<InsuranceListView> createState() => _InsuranceListViewState();
}

class _InsuranceListViewState extends State<InsuranceListView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<InsuranceBloc>().add(const FetchInsuranceList());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Asuransi'),
      ),
      body: const _ContentView(),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: OutlinedButton(
          onPressed: () async {
            final bloc = context.read<InsuranceBloc>();
            final ok =
                await Navigator.pushNamed(context, InsuranceForm.routeName);
            if (ok == true) {
              bloc.add(const FetchInsuranceList());
            }
          },
          child: const Text('+ Asuransi'),
        ),
      ),
    );
  }
}

class _ContentView extends StatelessWidget {
  const _ContentView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InsuranceBloc, InsuranceState>(
      builder: (context, state) {
        final data = state.insuranceList;
        final error = state.error;

        if (data == null && error == null) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }

        if (error != null) {
          return EmptyWidget(image: '', title: error);
        }

        if (data!.isEmpty) {
          return EmptyWidget(
            image: Assets.images.verification.path,
            title: 'Detail asuransi belum ditambahkan',
          );
        }

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HeaderLabel('Detail Asuransi'),
              ...data.map((insurance) {
                return InsuranceCard(
                  name: insurance.name,
                  status: insurance.status,
                  insurance: '${insurance.caraBayar} - ${insurance.grade}',
                );
              }),
            ],
          ),
        );
      },
    );
  }
}
