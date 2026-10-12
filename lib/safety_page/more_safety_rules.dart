import 'package:flutter/material.dart';

class MyAllSafetiesPage extends StatefulWidget {
  const MyAllSafetiesPage({super.key});

  @override
  State<MyAllSafetiesPage> createState() => _MyAllSafetiesPageState();
}

class _MyAllSafetiesPageState extends State<MyAllSafetiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Text(
          "Safety toolkit",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/safety_toolkit.png",
              width: double.infinity,
              height: 160,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Safety all the way",
                    style: TextStyle(
                      color: Colors.blue.shade800,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "At Rapido, your safety comes first."
                    " Here are some measures and provisions to ensure your safety, every time.",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  SizedBox(height: 14),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "What we offer?",
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 16),
                        MySafetyOffer(
                          showDivider: true,
                          subtitle:
                              "We send notifications and follow up calls in the case of :\n"
                              "- Drop at different location\n- Unplanned stops/vehicle"
                              "not moving\n- Route deviations during the ride.",
                          title: "24×7 Proactive Safety Checks",
                          image: "assets/images/proactive_safety.png",
                        ),
                        MySafetyOffer(
                          showDivider: true,
                          image: "assets/images/call_mask_safety.png",
                          title: "24×7 Call masking",
                          subtitle:
                              "We keep the identity and contact number of women customers confidential from captains",
                        ),
                        MySafetyOffer(
                          showDivider: true,
                          image: "assets/images/sos_safety.png",
                          title: "SOS button",
                          subtitle:
                              "A button that calls our Central Emergency Response Team who then guide you to onground help.",
                        ),
                        MySafetyOffer(
                          showDivider: true,
                          image: "assets/images/late_night_safety.png",
                          title: "Late night ride completion check",
                          subtitle:
                              "We call you post ride completion for feedback, each time you ride between 10pm - 5am",
                        ),
                        MySafetyOffer(
                          showDivider: false,
                          image: "assets/images/trip_insurance_safety.png",
                          title: "Trip insurance",
                          subtitle:
                              "From start to finish, all trips are insured by leading insurance players",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    "Please note, all these safety features only work in case of an "
                    "online ride through our app. Do not accept offline rides.",
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 34),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "THINGS YOU CAN DO",
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20),
                        MySafetyThings(
                          showDivider: true,
                          image: "assets/images/helmet_safety.png",
                          title: "Helmet always",
                          subtitle:
                              "While riding a Bike-Taxi, always ask for a helmet."
                              " In case you don't receive one, inform us via feedback.",
                        ),
                        MySafetyThings(
                          showDivider: true,
                          image: "assets/images/live_location_safety.png",
                          title: "Live location sharing",
                          subtitle:
                              "For friends & family to track the live status of your ride.",
                        ),
                        MySafetyThings(
                          showDivider: true,
                          image: "assets/images/ride_rules_safety.png",
                          title: "Your ride. Your rules",
                          subtitle:
                              "You have every right to ask the Captain to drive as per your comfort, within traffic rules.",
                        ),
                        MySafetyThings(
                          showDivider: true,
                          image: "assets/images/trusted_contact_safety.png",
                          title: "Add trusted contacts",
                          subtitle:
                              "Make sure to add contacts of your loved ones as "
                              "trusted contacts. This will help you reach out to them easily.",
                        ),
                        MySafetyThings(
                          showDivider: true,
                          image: "assets/images/person_info_safety.png",
                          title: "Don't share personal information",
                          subtitle:
                              "- Do not share your contact details with the Captain."
                              "\n- Do not share location via Whatsapp or any third party app."
                              "\n- Use communication methods available on the app only.",
                        ),
                        MySafetyThings(
                          showDivider: false,
                          image: "assets/images/feedback_safety.png",
                          title: "Always share feedback",
                          subtitle:
                              "After every ride, help us know about your experiences so we can make our service safer and more pleasant.",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySafetyThings extends StatefulWidget {
  const MySafetyThings({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
    required this.showDivider,
  });
  final String image;
  final String title;
  final String subtitle;
  final bool showDivider;

  @override
  State<MySafetyThings> createState() => _MySafetyThingsState();
}

class _MySafetyThingsState extends State<MySafetyThings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(widget.image, width: 32, height: 32, fit: BoxFit.cover),
            SizedBox(width: 12),
            Text(widget.title, style: TextStyle(fontWeight: FontWeight.w700)),
          ],
        ),
        SizedBox(height: 12),
        Text(widget.subtitle, style: TextStyle(color: Colors.grey.shade600)),
        SizedBox(height: 8),
        if (widget.showDivider) ...[Divider(color: Colors.grey.shade300),],
      ],
    );
  }
}

class MySafetyOffer extends StatefulWidget {
  const MySafetyOffer({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
    required this.showDivider,
  });
  final String image;
  final String title;
  final String subtitle;
  final bool showDivider;
  @override
  State<MySafetyOffer> createState() => _MySafetyOfferState();
}

class _MySafetyOfferState extends State<MySafetyOffer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12),
        Row(
          children: [
            Image.asset(widget.image, width: 32, height: 32, fit: BoxFit.cover),
            SizedBox(width: 6),
            Text(widget.title, style: TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
        SizedBox(height: 8),
        Text(widget.subtitle, style: TextStyle(color: Colors.grey.shade600)),
        if (widget.showDivider) ...[Divider(color: Colors.grey.shade300),],
      ],
    );
  }
}
