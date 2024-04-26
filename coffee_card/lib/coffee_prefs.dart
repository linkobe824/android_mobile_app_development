import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  var strength = 1;
  var sugars = 1;

  void incStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void incSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            for (var i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
              onPressed: incStrength,
              style: FilledButton.styleFrom(backgroundColor: Colors.brown),
              child: const Text('+'),
            )
          ],
        ),
        Row(
          children: [
            const Text('Sugars: '),
            if (sugars == 0) const Text('No sugars...'),
            for (var i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            FilledButton(
                onPressed: incSugars,
                style: FilledButton.styleFrom(backgroundColor: Colors.brown),
                child: const Text('+'))
          ],
        )
      ],
    );
  }
}
