import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../controllers/c_user.dart';

class FormUserEdit extends StatelessWidget {
  const FormUserEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // create provider
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      // * card
      child: Center(
        child: SizedBox(
          height: 230.h,
          width: 200.h,
          child: Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                // * image
                Container(
                  width: 120.h,
                  height: 120.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile1.jpeg'),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 10.h),
                // * user Name
                Text('Abdeljalil Kchih'),
                //  * button
                ElevatedButton(
                    onPressed: () {}, child: const Text('Change Data'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}