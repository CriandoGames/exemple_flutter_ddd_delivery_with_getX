import 'package:flutter/material.dart';
import 'package:theme_dark_light_ddd_tdd_stud/theme/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Profile'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 30),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: ThemeColor.green),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: CircleAvatar(
                        radius: 50,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'Username',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Card(
                      color: Theme.of(context).canvasColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text('Informaçoes Pessoais',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Email@Email.com',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Dark Mode',
                                    style: TextStyle(fontSize: 14)),
                                Switch(
                                  value: true,
                                  onChanged: (value) {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120.0),
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Theme.of(context).primaryColor,
                        onPressed: () {},
                        child: const Text(
                          'Logout',
                          style: TextStyle(color: ThemeColor.white),
                        )),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
