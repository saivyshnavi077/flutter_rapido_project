import 'package:flutter/material.dart';
import 'package:rapido_screen/rapido_profile/profile_faq_page.dart';

class MyRapidoProfilePage extends StatefulWidget {
  const MyRapidoProfilePage({
    super.key,
    this.initialFirstName = '',
    this.initialLastName = '',
    this.onNameChanged,
  });
  final String initialFirstName;
  final String initialLastName;
  final Function(String, String)? onNameChanged;
  @override
  State<MyRapidoProfilePage> createState() => _MyRapidoProfilePageState();
}

class _MyRapidoProfilePageState extends State<MyRapidoProfilePage> {
  String firstName = '';
  String lastName = '';

  String get name =>
      [firstName, lastName].where((value) => value.trim().isNotEmpty).join(' ');

  late final TextEditingController firstNameController;
  late final TextEditingController lastNameController;

  void goBackWithName() {
    widget.onNameChanged?.call(firstName, lastName);
    Navigator.pop(context, displayName);
  }

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController(text: firstName);
    lastNameController = TextEditingController(text: lastName);

    firstName = widget.initialFirstName;
    lastName = widget.initialLastName;
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Profile", style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          onPressed: goBackWithName,
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfileFaqPage()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Row(
                  children: [
                    Icon(Icons.help_outline),
                    SizedBox(width: 10),
                    Text("Help", style: TextStyle(fontWeight: FontWeight.w600)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          MyProfileDetails(
            onTap: showEditNamePopup,
            icon: Icons.person_outline_sharp,
            subtitle: displayName.isEmpty ? 'Required' : displayName,
            title: 'Name',
            textColor: Colors.grey.shade400,
            iconRight: Icons.chevron_right,
            showDivider: true,
          ),
          MyProfileDetails(
            onTap: () {},
            icon: Icons.phone_in_talk_outlined,
            title: "Phone Number",
            textColor: Colors.grey.shade400,
            subtitle: "+91 7382412805",
            showDivider: true,
          ),
          MyProfileDetails(
            onTap: () {},
            icon: Icons.email_outlined,
            title: "Email",
            subtitle: "Required",
            textColor: Colors.red,
            iconRight: Icons.chevron_right,
            showDivider: true,
          ),
          MyProfileDetails(
            onTap: () {},
            icon: Icons.how_to_reg_outlined,
            title: "Gender",
            textColor: Colors.grey.shade400,
            subtitle: "Female",
            showDivider: true,
          ),
          MyProfileDetails(
            onTap: () {},
            icon: Icons.calendar_month_outlined,
            title: "Date of Birth",
            subtitle: "Required",
            iconRight: Icons.chevron_right,
            textColor: Colors.red,
            showDivider: true,
          ),
          MyProfileDetails(
            onTap: () {},
            icon: Icons.workspace_premium_outlined,
            title: "Member Since",
            textColor: Colors.grey.shade400,
            subtitle: "October 2024",
            showDivider: true,
          ),
          MyProfileDetails(
            onTap: () {},
            icon: Icons.crisis_alert,
            title: "Emergency Contact",
            subtitle: "Required",
            textColor: Colors.red,
            iconRight: Icons.chevron_right,
            showDivider: false,
          ),
        ],
      ),
    );
  }

  String get displayName {
    return [
      firstName,
      lastName,
    ].where((name) => name.trim().isNotEmpty).join(' ');
  }

  void showEditNamePopup() {
    firstNameController.text = firstName;
    lastNameController.text = lastName;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.42,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      topRight: Radius.circular(26),
                    ),
                  ),
                  child: SafeArea(
                    top: false,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 30, 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Drag handle
                          Center(
                            child: Container(
                              margin: const EdgeInsets.only(
                                top: 10,
                                bottom: 28,
                              ),
                              width: 48,
                              height: 4,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(22),
                              ),
                            ),
                          ),
                          Text(
                            'Edit Name',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          buildNameField(
                            controller: firstNameController,
                            hint: 'First Name',
                            setSheetState: setSheetState,
                          ),
                          SizedBox(height: 8),
                          buildNameField(
                            controller: lastNameController,
                            hint: 'Last Name',
                            setSheetState: setSheetState,
                          ),
                          Spacer(),
                          SizedBox(
                            width: double.infinity,
                            height: 48,
                            child: ElevatedButton(
                              onPressed: () {
                                final enteredFirstName = firstNameController
                                    .text
                                    .trim();
                                final enteredLastName = lastNameController.text
                                    .trim();

                                if (enteredFirstName.isEmpty) {
                                  ScaffoldMessenger.of(
                                    sheetContext,
                                  ).showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        'Please enter your first name',
                                      ),
                                    ),
                                  );
                                  return;
                                }

                                // Update the profile on this screen.
                                setState(() {
                                  firstName = enteredFirstName;
                                  lastName = enteredLastName;
                                });
                                widget.onNameChanged?.call(firstName, lastName);
                                Navigator.pop(sheetContext);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green.shade500,
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                              child: const Text(
                                'Save Changes',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Floating close button
                Positioned(
                  right: 30,
                  top: -50,
                  child: Material(
                    color: Colors.white,
                    shape: const CircleBorder(),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () => Navigator.pop(sheetContext),
                      child: const SizedBox(
                        width: 36,
                        height: 36,
                        child: Icon(
                          Icons.close,
                          size: 22,
                          color: Color(0xFF080D20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Widget buildNameField({
    required TextEditingController controller,
    required String hint,
    required StateSetter setSheetState,
  }) {
    return SizedBox(
      height: 72,
      child: TextField(
        controller: controller,
        onChanged: (_) {
          setSheetState(() {});
        },
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          prefixIcon: Icon(Icons.person_outline, size: 22),
          suffixIcon: controller.text.isNotEmpty
              ? IconButton(
                  onPressed: () {
                    controller.clear();
                    setSheetState(() {});
                  },
                  icon: Icon(Icons.close, size: 23, color: Colors.black),
                )
              : null,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 18,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFCBD5E1)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xFFCBD5E1), width: 1.3),
          ),
        ),
      ),
    );
  }
}

class MyProfileDetails extends StatefulWidget {
  const MyProfileDetails({
    super.key,
    required this.icon,
    required this.subtitle,
    required this.title,
    this.iconRight,
    required this.textColor,
    required this.showDivider,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final String subtitle;
  final IconData? iconRight;
  final Color textColor;
  final bool showDivider;
  final VoidCallback onTap;
  @override
  State<MyProfileDetails> createState() => _MyProfileDetailsState();
}

class _MyProfileDetailsState extends State<MyProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: InkWell(
        onTap: widget.onTap,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Icon(widget.icon, color: Colors.grey.shade500),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.subtitle,
                              style: TextStyle(color: widget.textColor),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(widget.iconRight),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (widget.showDivider) ...[Divider(color: Colors.grey.shade300)],
          ],
        ),
      ),
    );
  }
}
