import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/a_circular_image.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: ASizes.defaultSpace),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              /// Profile Picture
              const ACircularImage(image: AImages.user,width: 80,height: 80),
              TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),

              /// Details
              const SizedBox(height: ASizes.spaceBtwItems /2),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems),

              /// Heading Profile Info
              const ASectionHeading(title: 'Profile Information', showActionButton: false),
              const SizedBox(height: ASizes.spaceBtwItems),

              AProfileMenu(title: 'Name', value: 'App Developer', onPressed: (){}),
              AProfileMenu(title: 'Username', value: 'App Developer', onPressed: (){}),

              const SizedBox(height: ASizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems),

              /// Heading Personal Info
              const ASectionHeading(title: 'Personal Information', showActionButton: false),
              const SizedBox(height: ASizes.spaceBtwItems),

              AProfileMenu(onPressed: (){}, title: 'User ID', value: '3923',icon: Iconsax.copy,),
              AProfileMenu(onPressed: (){}, title: 'E-mail', value: 'App_developer'),
              AProfileMenu(onPressed: (){}, title: 'Phone Number', value: '+91 62365-65887'),
              AProfileMenu(onPressed: (){}, title: 'Gender', value: 'Male'),
              AProfileMenu(onPressed: (){}, title: 'Date of Birth', value: '13 Aug, 2003'),
              const Divider(),
              const SizedBox(height: ASizes.spaceBtwItems),

              Center(
                child: TextButton(onPressed: (){}, child: const Text('Close Account', style: TextStyle(color: Colors.red))),
              )
            ],

          ),
        ),
      ),)
    );
  }
}

