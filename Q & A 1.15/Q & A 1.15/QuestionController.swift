
import Foundation


class QuestionController {
    
    var questions: [Question] = []
    
    //var question = questions[IndexPath.row]
    
    func createQuestion(question: Question) {
        questions.append(question)
    }
    
    func update(question: Question) {
     
    }
    
    func delete(indexPath: IndexPath) {
        questions.remove(at: indexPath.row)
  //      remove[IndexPath.row]
    }
    
}
