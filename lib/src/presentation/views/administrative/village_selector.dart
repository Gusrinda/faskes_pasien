import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/presentation/blocs/administrative/administrative_bloc.dart';

class VillageSelector extends SearchDelegate<VillageModel?> {
  VillageSelector({required this.districtCode})
      : super(searchFieldLabel: 'Pilih Kelurahan');

  final String districtCode;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          onPressed: () => query = '',
          icon: const Icon(Icons.close),
        ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return BackButton(onPressed: () => close(context, null));
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildVillageList(context, query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      return _buildVillageList(context, query: query);
    }

    return _buildVillageList(context);
  }

  Widget _buildVillageList(BuildContext context, {String? query}) {
    return BlocBuilder<AdministrativeBloc, AdministrativeState>(
      buildWhen: (previous, current) =>
          previous.mapVillageList != current.mapVillageList,
      builder: (context, state) {
        List<VillageModel>? data = state.mapVillageList[districtCode];
        if (data == null) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }

        if (data.isEmpty) {
          return const Center(child: Text('Data kelurahan tidak ditemukan'));
        }

        if (query != null) {
          data = data
              .where((village) =>
                  village.name.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }

        return ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: data.map((village) {
              return ListTile(
                dense: true,
                visualDensity: VisualDensity.compact,
                title: Text(village.name),
                onTap: () => Navigator.pop(context, village),
              );
            }),
          ).toList(),
        );
      },
    );
  }
}
