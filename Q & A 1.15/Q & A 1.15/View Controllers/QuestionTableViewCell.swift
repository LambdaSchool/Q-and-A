
import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    var question: Question?{
    
    didSet {
            updateViews()
        }
    }
    
   func updateViews() {
        questionLabel?.text = question?.question
        askedByLabel?.text = askedByLabel?.asker
        answerLabel.text = answerLabel.answer
    }
    
    // questionTableVIEWCEll
    
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    
}
