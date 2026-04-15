import 'package:flutter/material.dart';

class UiControlsScrren extends StatelessWidget {
  const UiControlsScrren({super.key});

  static const name = 'ui_controls_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ui controls')),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({super.key});

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Tranportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Tranportation selectedTransportation = Tranportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('developer mode'),
          subtitle: const Text('controles adicionales'),
          value: isDeveloper,
          onChanged: (valule) {
            isDeveloper = valule;
            setState(() {});
          },
        ),

        ExpansionTile(
          title: const Text('vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
              title: const Text('car'),
              value: Tranportation.car,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = value!;
              }),
            ),
            RadioListTile(
              title: const Text('plane'),
              value: Tranportation.plane,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = value!;
              }),
            ),
            RadioListTile(
              title: const Text('boat'),
              value: Tranportation.boat,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = value!;
              }),
            ),
            RadioListTile(
              title: const Text('submarine'),
              value: Tranportation.submarine,
              groupValue: selectedTransportation,
              onChanged: (value) => setState(() {
                selectedTransportation = value!;
              }),
            ),
          ],
        ),

        CheckboxListTile(
          title: const Text('desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = value!;
          }),
        ),
        CheckboxListTile(
          title: const Text('comida?'),
          value: wantsLunch,
          onChanged: (value) => setState(() {
            wantsLunch = value!;
          }),
        ),
        CheckboxListTile(
          title: const Text('desayuno?'),
          value: wantsDinner,
          onChanged: (value) => setState(() {
            wantsDinner = value!;
          }),
        ),
      ],
    );
  }
}
