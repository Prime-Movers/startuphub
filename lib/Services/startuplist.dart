import 'package:flutter/material.dart';
import 'package:startup_hub/Widgets/patentContainer.dart';
import 'form.dart';

class startuplist extends StatelessWidget {
  const startuplist({super.key});

  @override
  Widget build(BuildContext context) {
    int index = formData().i;
    final startup = formData().startup[index];
    return patentContainer(
        teamName: startup.startupname, description: startup.description);
  }
}
