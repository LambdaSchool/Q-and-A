import Foundation

class QuestionController {
    private(set) var questions: [Question] = []
    
    func createQuestion (question:String, asker:String) {
        let question = Question(question: question, asker: asker)
        questions.append(question)
    }
    
    // UPDATE
    // Update func that takes in answer string, and answerer string to add to the question
    
    func updateQuestion(question: Question, answer:String, answerer: String){
        guard let index = questions.index(of: question) else {return}
        
        // Trying to grab the initial and replace question
        questions[index].answer = answer
        questions[index].answerer = answerer
        
    }
    
    // DELETE
    
    func deleteQuestion (question: Question) {
        guard let index = questions.index(of: question) else {return}
        questions.remove(at: index)
    }
    
    
    
    
    
}
