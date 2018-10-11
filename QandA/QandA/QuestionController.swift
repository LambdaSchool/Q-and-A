import UIKit

class QuestionController {
    
    //CRUD -- Create, Read, Update, Delete
    // Read first, then Create
    
    
    // READ, reading variable
    var questions = [Question]()
    
    
    // CREATE
    func createQuestion(question: String, asker: String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    
    // UPDATE
    func updateQuestion(q: Question, answer: String?, answerer: String?) {
        guard let index = questions.index(of: q) else {return}
        
        questions[index].answer = answer
        questions[index].answerer = answerer
            
        }
   
    //DELETE
    func deleteQuestion(q: Question) {
        guard let index = questions.index(of: q) else {return}
        questions.remove(at: index)
        
    }
}
