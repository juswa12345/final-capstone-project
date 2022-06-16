import 'package:flutter/material.dart';

class AddNewProject extends StatelessWidget {
  const AddNewProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 2,
      insetPadding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 70.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Add New Project',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'Name',
              ),
            ),
            TextFormField(
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: 'Description',
              ),
            ),
            const SizedBox(height: 35.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop('cancel'),
                  child: Container(
                    height: 35.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xff112B44), width: 2.0),
                      borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: const Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5.0),
                Container(
                  height: 35.0,
                  width: 80.0,
                  decoration: const BoxDecoration(
                    color: Color(0xffE02818),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                  child: const Center(
                    child: Text(
                      'Add',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
