import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let question = question else { return }
        questionLabel.text = question.question
        askerLabel.text = question.asker
        
        if question.answer == nil && question.answerer == nil {
            canYouAnswerLabel.text = "Can you answer this?"
        } else {
            canYouAnswerLabel.text = "Tap to view answer."
        }
    }
        
        
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askerLabel: UILabel!
    @IBOutlet weak var canYouAnswerLabel: UILabel!
    


}
