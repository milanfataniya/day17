import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uncanny_day17/l10n/app_localizations.dart';
import 'package:uncanny_day17/providers/locale_provider.dart';
class Dashboard extends ConsumerStatefulWidget {
  const Dashboard({super.key});

  @override
  ConsumerState<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends ConsumerState<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title:  Text(loc.home),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text(loc.text1),
            SizedBox(height:10,),
            Text(loc.text2),

            SizedBox(height:10,),
            Text(loc.text3),

            SizedBox(height:10,),
            Text(loc.text4),

            SizedBox(height:10,),
            Text(loc.text5),
            SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 ElevatedButton(
                   onPressed: () {
                     ref.read(localeProvider.notifier).state = const Locale('gu');
                   },
                   child: const Text("Gujrati"),
                 ),
                 SizedBox(width: 20,),
                 ElevatedButton(
                   onPressed: () {
                     ref.read(localeProvider.notifier).state = const Locale('hi');
                   },
                   child: const Text("Hindi"),
                 ),

                 SizedBox(width: 20,),
                 ElevatedButton(
                   onPressed: () {
                     ref.read(localeProvider.notifier).state = const Locale('en');
                   },
                   child: const Text("English"),
                 ),
               ],
             )
          ],
        ),
      ),
    );
  }
}
