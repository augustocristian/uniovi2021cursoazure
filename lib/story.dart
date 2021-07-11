class Story {
  String storyTitle;
  String choice1;
  String choice2;
  String choice3;

  Story({this.storyTitle, this.choice1, this.choice2, this.choice3});

  String getstoryTitle() {
    return this.storyTitle;
  }

  String getChoice1() {
    return this.choice1;
  }

  String getChoice2() {
    return this.choice2;
  }

  String getChoice3() {
    return this.choice3;
  }
}
