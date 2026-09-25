import 'package:flutter/material.dart';
import 'package:groceries_app_ui/constants/app_colors.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int currentIndex = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
           
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: const AssetImage(
                      'assets/images/male.png',
                    ),
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Ahmed hassan',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(width: 8),

                            const Icon(
                              Icons.edit_outlined,
                              color: AppColors.primary,
                              size: 18,
                            ),
                          ],
                        ),

                        const SizedBox(height: 5),

                        Text(
                          'ahmedhassan@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Divider(
              height: 1,
               indent: 25,
          endIndent: 25,
            ),

            
            Expanded(
              child: ListView(
                children: [
                  _buildAccountItem(
                    icon: Icons.shopping_bag_outlined,
                    title: 'Orders',
                  ),

                  _buildAccountItem(
                    icon: Icons.credit_card_outlined,
                    title: 'My Details',
                  ),

                  _buildAccountItem(
                    icon: Icons.location_on_outlined,
                    title: 'Delivery Address',
                  ),

                  _buildAccountItem(
                    icon: Icons.payment_outlined,
                    title: 'Payment Methods',
                  ),

                  _buildAccountItem(
                    icon: Icons.local_offer_outlined,
                    title: 'Promo Code',
                  ),

                  _buildAccountItem(
                    icon: Icons.notifications_none_outlined,
                    title: 'Notifications',
                  ),

                  _buildAccountItem(
                    icon: Icons.help_outline,
                    title: 'Help',
                  ),

                  _buildAccountItem(
                    icon: Icons.info_outline,
                    title: 'About',
                  ),

                  const SizedBox(height: 30),

                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                         
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade100,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.logout,
                              color: AppColors.primary,
                            ),

                            const SizedBox(width: 10),

                            Text(
                              'Log Out',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),

      
  
    );
  }

  Widget _buildAccountItem({
    required IconData icon,
    required String title,
  }) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),

          leading: Icon(
            icon,
            color: Colors.black87,
            size: 22,
          ),

          title: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),

          trailing: const Icon(
            Icons.chevron_right,
            color: Colors.black87,
          ),

          onTap: () {
            
          },
        ),

        const Divider(
          height: 1,
          indent: 25,
          endIndent: 25,
        ),
      ],
    );
  }
}