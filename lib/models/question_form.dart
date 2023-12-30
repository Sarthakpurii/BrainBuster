class QuestionForm{
  const QuestionForm(this.question,this.ansList);

  final String question;
  final List<String> ansList;

  List<String> getShuffledAns(){
    final shuffledAnswers=List.of(ansList);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}