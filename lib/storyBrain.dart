import 'story.dart';
class StoryBrain {

  //Story storyObj = Story();

  int _storyNum = 0;
  List<Story> _storyData = [
    Story(
      'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      'I\'ll hop in. Thanks for the help!',
      'Better ask him if he\'s a murderer first.'
    ),
    Story(
      'He nods slowly, unphased by the question.',
      'At least he\'s honest. I\'ll climb in.',
      'Wait, I know how to change a tire.'
    ),
    Story(
      'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      'I love Elton John! Hand him the cassette tape.',
        'It\'s him or me! You take the knife and stab him.'
    ),
    Story(
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        'Restart',
        ''
    ),
    Story(
        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        'Ridoy Paul',
        ''
    ),

  ];

  void nextStory(int choiceNum){
    if(_storyNum == 0 && choiceNum == 1){
      _storyNum = _storyNum + 2;
    }
    else if(_storyNum == 0 && choiceNum == 2){
      _storyNum = _storyNum + 1;
    }
    else if(_storyNum == 1 && choiceNum == 1){
      _storyNum = _storyNum + 1;
    }
    else if(_storyNum == 1 && choiceNum == 2){
      _storyNum = _storyNum + 2;
    }
    else if(_storyNum == 2 && choiceNum == 1){
      _storyNum = _storyNum + 3;
    }
    else if(_storyNum == 2 && choiceNum == 2){
      _storyNum = _storyNum + 2;
    }
    else if(_storyNum == 5 || _storyNum == 4 || _storyNum == 3 && choiceNum == 1 || choiceNum ==2 ){
      _storyNum = 0;
    }
    getStory();
  }

  String getStory(){
    //return storyObj.storyTitle;
    return _storyData[_storyNum].storyTitle;
  }
  String getChoice1(){
    return _storyData[_storyNum].choice1;
  }
  String getChoice2(){
    return _storyData[_storyNum].choice2;
  }
}

