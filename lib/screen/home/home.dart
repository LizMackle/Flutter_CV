import 'package:flutter/material.dart';
import 'package:flutter_cv/screen/sections/projects/project_staggered.dart';

import '../sections/education.dart';
import '../sections/experience.dart';
import '../sections/header.dart';
import '../sections/skills.dart';
import '../sections/socials.dart';
import '../sections/titles.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.0),
            Header(),
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(color: Color(0xFFEEEEEE)),
              child: Text(
                "A passionate certified Full Stack Web Developer who is highly competent, dedicated, and hardworking with self-motivated work ethic to perform effectively in complex and busy environments, independently or in a team.\n\nA reliable individual, with a highly organised personality with strong communication and task prioritization skills, offering keen attention to detail and strong decision-making skills to manage multiple, concurrent tasks and take on challenges with a positive attitude.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            CVTitle("Skills"),
            Container(
              height: 120,
              padding: EdgeInsets.only(top: 10, right: 20, left: 20),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SkillsRow('HTML'),
                    SizedBox(width: 12),
                    SkillsRow('CSS'),
                    SizedBox(width: 12),
                    SkillsRow('Bootstrap'),
                    SizedBox(width: 12),
                    SkillsRow('Tailwind'),
                    SizedBox(width: 12),
                    SkillsRow('Javascript'),
                    SizedBox(width: 12),
                    SkillsRow('JQuery'),
                    SizedBox(width: 12),
                    SkillsRow('Git'),
                    SizedBox(width: 12),
                    SkillsRow('VScode'),
                    SizedBox(width: 12),
                    SkillsRow('Flutter'),
                    SizedBox(width: 12),
                    SkillsRow('React'),
                    SizedBox(width: 12),
                    SkillsRow('MongoDB'),
                    SizedBox(width: 12),
                    SkillsRow('NodeJS'),
                    SizedBox(width: 12),
                    SkillsRow('MySQL'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            CVTitle("Projects"),
            ProjectStaggered(),
            // SizedBox(height: 10.0),
            CVTitle("Experience"),
            Experience(
                company: "Arcadis",
                position: "Administration Assistant / Reception ",
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
            Experience(
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
            CVTitle("Education"),
            SizedBox(height: 5.0),
            Education(
                company: "University of Western Australia",
                qualification:
                    "Certificate of Coding Completion / Full Stack Developer \n\nA 24-week intensive program focused on gaining technical programming skills in HTML5 | CSS3 | JavaScript | jQuery | Bootstrap | NodeJS | MySQL | MongoDB | Express | HandlebarsJS & React",
                duration: "2021 - 2022"),
            Education(
                company: "Open College Online Courses",
                qualification:
                    "Cert IV in Business Administration & Cert IV in Leadership and Management",
                duration: "2017 - 2019"),
            Education(
                company: "Dental Nursing Australia",
                qualification: "Cert III & IV Dental Assisting",
                duration: "2012 - 2013"),
            SizedBox(height: 20.0),
            CVTitle("Contact"),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                SizedBox(width: 30.0),
                Icon(
                  Icons.mail,
                  color: Color(0xFF1671BB),
                  size: 30,
                ),
                SizedBox(width: 10.0),
                Text(
                  "liz.mackle@outlook.com",
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
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
                  size: 30,
                ),
                SizedBox(width: 10.0),
                SizedBox(height: 40.0),
                Text(
                  "0426 239 870",
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Socials(),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
