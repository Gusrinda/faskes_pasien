import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/presentation/blocs/administrative/administrative_bloc.dart';

class DistrictSelector extends SearchDelegate<DistrictModel?> {
  DistrictSelector({required this.cityCode})
      : super(searchFieldLabel: 'Pilih Kecamatan');

  final String cityCode;

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
    return _buildDistrictList(context, query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      return _buildDistrictList(context, query: query);
    }

    return _buildDistrictList(context);
  }

  Widget _buildDistrictList(BuildContext context, {String? query}) {
    return BlocBuilder<AdministrativeBloc, AdministrativeState>(
      buildWhen: (previous, current) =>
          previous.mapDistrictList != current.mapDistrictList,
      builder: (context, state) {
        List<DistrictModel>? data = state.mapDistrictList[cityCode];
        if (data == null) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }

        if (data.isEmpty) {
          return const Center(child: Text('Data kecamatan tidak ditemukan'));
        }

        if (query != null) {
          data = data
              .where((district) =>
                  district.name.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }

        return ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: data.map((district) {
              return ListTile(
                dense: true,
                visualDensity: VisualDensity.compact,
                title: Text(district.name),
                onTap: () => Navigator.pop(context, district),
              );
            }),
          ).toList(),
        );
      },
    );
  }
}
