import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0x00CFB398),
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _Header(),
              Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Text(
                  "A highly competent individual who is dedicated, enthusiastic and hardworking with a proven ability to work proactively in a complex and busy environment. \nA reliable employee who can demonstrate effective communication and multi-tasking skills in the workplace. \nA quick learner with a highly organised personality who can absorb new tasks and take on new challenges with a positive attitude.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              _buildCVTitle("Skills"),
              SizedBox(height: 5.0),
              _buildSkillRow("React JS", 0.65),
              SizedBox(height: 5.0),
              _buildSkillRow("Flutter", 0.4),
              SizedBox(height: 30.0),
              _buildCVTitle("Projects"),
              Container(
                height: 200,
                padding: EdgeInsets.only(right: 20, left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildProjects(),
                      SizedBox(width: 12),
                      _buildProjects(),
                      SizedBox(width: 12),
                      _buildProjects(),
                      SizedBox(width: 12),
                      _buildProjects(),
                      SizedBox(width: 12),
                      _buildProjects(),
                      SizedBox(width: 12),
                      _buildProjects(),
                      SizedBox(width: 12),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              _buildCVTitle("Experience"),
              _buildExperienceRow(
                  company: "Arcadis",
                  position: "Administration Assistant/Reception ",
                  duration: "2019 - 2021",
                  tasks: "\n\n- Answering incoming phone calls"
                      "\n- Responding to incoming emails"
                      "\n- Arranging interstate/overseas travel and employee relocations"
                      "\n- Internal and external event management"
                      "\n- Arranging meeting rooms, monthly morning teas and all catering requests"
                      "\n- Processing credit card reconciliations and expense claims"
                      "\n- Formatting CV’s, Project Data Sheets, Org Charts and Tender Submission Reports"
                      "\n- Timecard management"
                      "\n- Stock control"
                      "\n- Minute taking"
                      "\n- IT stock management & IT assistance"
                      "\n- New employee start ups"),
              _buildExperienceRow(
                  company: "Hillary’s / Kingsley Village Dental Centre",
                  position: "Dental Nurse",
                  duration: "2014 - 2019",
                  tasks: "\n\n- Daily nursing duties"
                      "\n- Stock management "
                      "\n- Monthly day surgery visits to Westminster Theatres"
                      "\n- Preparing research for new products/machines"
                      "\n- End of day banking/petty cash reconciliation"
                      "\n- Processing patient accounts – HICAPS/EFT"
                      "\n- Booking/managing patient appointments"
                      "\n- Responding to emails and answering phone calls"
                      "\n- Social media management"
                      "\n- Organising social work events"),
              SizedBox(height: 20.0),
              _buildCVTitle("Education"),
              SizedBox(height: 5.0),
              _buildEducationRow(
                  company: "University of Western Australia",
                  qualification:
                      "Certificate of Coding Completion / Full Stack Developer ",
                  duration: "2021 - 2022"
                      ")\n\nA 24-week intensive program focused on gaining technical programming skills in HTML5 | CSS3 | JavaScript | jQuery | Bootstrap | NodeJS | MySQL | MongoDB | Express | HandlebarsJS & React"),
              _buildEducationRow(
                  company: "Open College Online Courses",
                  qualification:
                      "Cert IV in Business Administration & Cert IV in Leadership and Management",
                  duration: "2017 - 2019"),
              _buildEducationRow(
                  company: "Dental Nursing Australia",
                  qualification: "Cert III & IV Dental Assisting",
                  duration: "2012 - 2013"),
              SizedBox(height: 20.0),
              _buildCVTitle("Contact"),
              SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 30.0),
                  Icon(
                    Icons.mail,
                    color: Color(0xFF1671BB),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "liz.mackle@outlook.com",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: <Widget>[
                  SizedBox(width: 30.0),
                  Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "0426 239 870",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              _buildSocialsRow(),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Row _Header() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20.0),
        Container(
            width: 130.0,
            height: 130.0,
            child: CircleAvatar(
                radius: 40,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                    radius: 62.0,
                    backgroundImage: AssetImage('assets/LMCVimg.jpg')))),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Elizabeth Mackle",
              style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              "Full Stack Developer",
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.locationPin,
                  size: 13.0,
                  color: Colors.black54,
                ),
                SizedBox(width: 4.0),
                Text(
                  "Perth, WA",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

Widget _buildCVTitle(String title) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title.toUpperCase(),
          style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
        ),
        Divider(
          color: Colors.black54,
        ),
      ],
    ),
  );
}

Row _buildSkillRow(String skill, double level) {
  return Row(
    children: <Widget>[
      SizedBox(width: 16.0),
      Expanded(
          flex: 2,
          child: Text(
            skill.toUpperCase(),
            textAlign: TextAlign.right,
          )),
      SizedBox(width: 10.0),
      Expanded(
        flex: 5,
        child: LinearProgressIndicator(
          value: level,
        ),
      ),
      SizedBox(width: 16.0),
    ],
  );
}

Widget _buildProjects() => Container(
      width: 250,
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFFC7BEC1),
      ),
      child: Column(
        children: [
          Image.network('https://i.ibb.co/rvkpNkH/Wander-View.jpg'),
          const SizedBox(height: 8),
          Text(
            'WanderView',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );

ListTile _buildExperienceRow(
    {required String company,
    String? position,
    String? duration,
    String? tasks}) {
  return ListTile(
    leading: Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 20.0),
      child: Icon(
        FontAwesomeIcons.solidCircle,
        size: 8.0,
        color: Colors.black54,
      ),
    ),
    title: Text(
      company,
      style: TextStyle(
          fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
    ),
    subtitle:
        Text(style: TextStyle(fontSize: 15), "$position ($duration) $tasks"),
  );
}

ListTile _buildEducationRow(
    {required String company, String? qualification, String? duration}) {
  return ListTile(
    leading: Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 20.0),
      child: Icon(
        FontAwesomeIcons.solidCircle,
        size: 8.0,
        color: Colors.black54,
      ),
    ),
    title: Text(
      company,
      style: TextStyle(
          fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
    ),
    subtitle:
        Text(style: TextStyle(fontSize: 15), "$qualification ($duration)"),
  );
}

Row _buildSocialsRow() {
  return Row(
    children: <Widget>[
      SizedBox(width: 20.0),
      IconButton(
        color: Colors.black,
        icon: Icon(FontAwesomeIcons.solidUser),
        onPressed: () {
          _launchURL("https://lizmackle.github.io/React_Portfolio/");
        },
      ),
      SizedBox(width: 0),
      IconButton(
        color: Colors.black,
        icon: Icon(FontAwesomeIcons.github),
        onPressed: () {
          _launchURL("https://github.com/LizMackle");
        },
      ),
      SizedBox(width: 0),
      IconButton(
        color: Color(0xFF1671BB),
        icon: Icon(FontAwesomeIcons.linkedin),
        onPressed: () {
          _launchURL("https://www.linkedin.com/in/liz-mackle/");
        },
      ),
      SizedBox(width: 10.0),
    ],
  );
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
