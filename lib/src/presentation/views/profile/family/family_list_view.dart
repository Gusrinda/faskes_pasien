import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasien/src/core/assets/assets.gen.dart';
import 'package:pasien/src/presentation/blocs/profile/family/family_bloc.dart';
import 'package:pasien/src/presentation/widgets/empty_widget.dart';
import 'package:pasien/src/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'family_form.dart';
import 'family_list_widget.dart';

class FamilyListView extends StatefulWidget {
  static const String routeName = '/profile/family';

  const FamilyListView({super.key});

  @override
  State<FamilyListView> createState() => _FamilyListViewState();
}

class _FamilyListViewState extends State<FamilyListView> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<FamilyBloc>().add(const FetchFamilyList());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Keluarga'),
      ),
      body: const _ContentView(),
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.fromLTRB(16, 8, 16, 12),
        child: OutlinedButton(
          onPressed: () async {
            final bloc = context.read<FamilyBloc>();
            final ok = await Navigator.pushNamed(context, FamilyForm.routeName);
            if (ok == true) {
              bloc.add(const FetchFamilyList());
            }
          },
          child: const Text('+ Daftar Keluarga'),
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
    return BlocBuilder<FamilyBloc, FamilyState>(
      builder: (context, state) {
        final data = state.familyList;
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
            title: 'Detail keluarga belum ditambahkan',
          );
        }

        return SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const HeaderLabel('Detail Keluarga'),
              ...data.map((family) {
                return FamilyCard(
                  name: family.name,
                  status: family.status,
                  address: family.address,
                );
              }),
            ],
          ),
        );
      },
    );
  }
}
