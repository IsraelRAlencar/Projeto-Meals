import 'package:flutter/material.dart';
import 'package:meals/models/settings.dart';
import '../components/main_drawer.dart';

class SettingsScreen extends StatefulWidget {
  final Function(Settings) onSettingsChanged;
  final Settings settings;

  const SettingsScreen(this.onSettingsChanged, this.settings, {super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Settings settings;

  @override
  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile.adaptive(
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.grey),
      ),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingsChanged(settings);
      },
      trackColor: value
          ? MaterialStatePropertyAll(Theme.of(context).colorScheme.primary)
          : MaterialStatePropertyAll(Colors.grey[300]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Configurações',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        drawer: const MainDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                'Filtros',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _createSwitch(
                    'Sem Glúten',
                    'Só exibe refeições sem glúten!',
                    settings.isGlutenFree,
                    (value) => setState(
                      () => settings.isGlutenFree = value,
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  _createSwitch(
                    'Sem Lasctose',
                    'Só exibe refeições sem lactose!',
                    settings.isLactoseFree,
                    (value) => setState(
                      () => settings.isLactoseFree = value,
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  _createSwitch(
                    'Sem Vegana',
                    'Só exibe refeições sem veganas!',
                    settings.isVegan,
                    (value) => setState(
                      () => settings.isVegan = value,
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  _createSwitch(
                    'Vegetariana',
                    'Só exibe refeições vegetarianas!',
                    settings.isVegetarian,
                    (value) => setState(
                      () => settings.isVegetarian = value,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
