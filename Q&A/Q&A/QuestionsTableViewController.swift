import UIKit

class QuestionsTableViewController: UITableViewController {

   let questionController = QuestionController()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as? QuestionTableViewCell else { return UITableViewCell() }
        
        let question = questionController.questions[indexPath.row]
        cell.question = question
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let question = questionController.questions[indexPath.row]
            questionController.delete(question: question)
            
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "askQuestion" {
            guard let destinationVC = segue.destination as? AskQuestionViewController else { return }
            destinationVC.questionController = questionController
        } else if segue.identifier == "answerQuestion" {
            guard let destinationVC = segue.destination as? AnswerViewController,
                let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let question = questionController.questions[indexPath.row]
            destinationVC.questionController = questionController
            destinationVC.question = question
        }
    }
    
    

}
