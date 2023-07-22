import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:menage_state/controllers/c_user.dart';
import 'package:provider/provider.dart';

class FormUser extends StatelessWidget {
  const FormUser({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ControllerUser myUser =
        Provider.of<ControllerUser>(context, listen: false);

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
          height: 170.h,
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(myUser.myImage),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(height: 10.h),
                // * user Name
                Text(myUser.myName),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
