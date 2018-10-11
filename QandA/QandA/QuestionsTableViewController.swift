import UIKit

class QuestionsTableViewController: UITableViewController {
    
    var questionController = QuestionController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "questionCell", for: indexPath) as? QuestionTableViewCell else { return UITableViewCell() }
        
        let question = questionController.questions[indexPath.row]
        cell.question = question
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            
            let question = questionController.questions[indexPath.row]
            questionController.deleteQuestion(q: question)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "answerQuestionSegue") {
            
            guard let answerQuestionViewController = segue.destination as? AnswerViewController else { return }
            
            answerQuestionViewController.questionController = questionController
            
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            answerQuestionViewController.question = questionController.questions[indexPath.row]
        } else if(segue.identifier == "askQuestionSegue") {
            
            guard let askQuestionViewController = segue.destination as? AskQuestionViewController else { return }
            
            askQuestionViewController.questionController = questionController
        }
    }
}
