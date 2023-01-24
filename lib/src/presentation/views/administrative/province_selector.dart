import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/presentation/blocs/administrative/administrative_bloc.dart';

class ProvinceSelector extends SearchDelegate<ProvinceModel?> {
  ProvinceSelector() : super(searchFieldLabel: 'Pilih Provinsi');

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
    return _buildProvinceList(context, query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      return _buildProvinceList(context, query: query);
    }

    return _buildProvinceList(context);
  }

  Widget _buildProvinceList(BuildContext context, {String? query}) {
    return BlocBuilder<AdministrativeBloc, AdministrativeState>(
      buildWhen: (previous, current) =>
          previous.provinceList != current.provinceList,
      builder: (context, state) {
        if (state.provinceList == null) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }

        List<ProvinceModel> provinceList = state.provinceList!;
        if (provinceList.isEmpty) {
          return const Center(child: Text('Data provinsi tidak ditemukan'));
        }

        if (query != null) {
          provinceList = provinceList
              .where((province) =>
                  province.name.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }

        return ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: provinceList.map((province) {
              return ListTile(
                dense: true,
                visualDensity: VisualDensity.compact,
                title: Text(province.name),
                onTap: () => Navigator.pop(context, province),
              );
            }),
          ).toList(),
        );
      },
    );
  }
}
