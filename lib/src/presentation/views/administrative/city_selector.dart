import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/presentation/blocs/administrative/administrative_bloc.dart';

class CitySelector extends SearchDelegate<CityModel?> {
  CitySelector({required this.provinceCode})
      : super(searchFieldLabel: 'Pilih Kota/Kabupaten');

  final String provinceCode;

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
    return _buildCityList(context, query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isNotEmpty) {
      return _buildCityList(context, query: query);
    }

    return _buildCityList(context);
  }

  Widget _buildCityList(BuildContext context, {String? query}) {
    return BlocBuilder<AdministrativeBloc, AdministrativeState>(
      buildWhen: (previous, current) =>
          previous.mapCityList != current.mapCityList,
      builder: (context, state) {
        List<CityModel>? data = state.mapCityList[provinceCode];
        if (data == null) {
          return const Center(child: CircularProgressIndicator.adaptive());
        }

        if (data.isEmpty) {
          return const Center(child: Text('Data kota tidak ditemukan'));
        }

        if (query != null) {
          data = data
              .where((city) =>
                  city.name.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }

        return ListView(
          children: ListTile.divideTiles(
            context: context,
            tiles: data.map((city) {
              return ListTile(
                dense: true,
                visualDensity: VisualDensity.compact,
                title: Text(city.name),
                onTap: () => Navigator.pop(context, city),
              );
            }),
          ).toList(),
        );
      },
    );
  }
}
