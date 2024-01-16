import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals_app/widgets/filter_switch_tile.dart';
import 'package:meals_app/providers/filters_provider.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilter = ref.watch(filtersProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: Column(
        children: [
          FilterSwitchTile(
              value: activeFilter[Filter.glutenFree]!,
              title: 'Glutten-free',
              subtitle: 'Only include gluten-free meals.',
              onSwitchTile: (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.glutenFree, isChecked);
              }),
          FilterSwitchTile(
            value: activeFilter[Filter.lactoseFree]!,
            title: 'Lactose-free',
            subtitle: 'Only include lactose-free meals.',
            onSwitchTile: (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.lactoseFree, isChecked);
              },
          ),
          FilterSwitchTile(
            value: activeFilter[Filter.vegetarian]!,
            title: 'Vegetarian',
            subtitle: 'Only include vegetarian meals.',
            onSwitchTile: (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.vegetarian, isChecked);
              },
          ),
          FilterSwitchTile(
            value: activeFilter[Filter.vegan]!,
            title: 'Vegan',
            subtitle: 'Only include vegan meals.',
            onSwitchTile: (isChecked) {
                ref
                    .read(filtersProvider.notifier)
                    .setFilter(Filter.vegan, isChecked);
              },
          ),
        ],
      ),
    );
  }
}
