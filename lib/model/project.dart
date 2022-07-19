class Project {
  String title;
  String imageUrl;
  double height;

  Project(this.title, this.imageUrl, this.height);

  static List<Project> generateProject() {
    return [
      Project("Wanderview", "assets/projects/WanderView.jpg", 250),
      Project("Build A Page", "assets/projects/BuildAPage.jpg", 200),
      Project("Comet Watch", "assets/projects/CometWatch.jpg", 230),
      Project("Code Quiz", "assets/projects/CodeQuiz.jpg", 120),
      Project("Note Taker", "assets/projects/NoteTaker.jpg", 200),
      Project("Weather Dashboard", "assets/projects/WeatherDashboard.jpg", 230),
      Project("Workday Scheduler", "assets/projects/WorkdayScheduler.jpg", 250),
      Project(
          "Password Generator", "assets/projects/PasswordGenerator.jpg", 120),
      Project("Tech Blog", "assets/projects/TechBlog.jpg", 200),
      Project("Text Editor", "assets/projects/TextEditor.jpg", 160),
    ];
  }
}
