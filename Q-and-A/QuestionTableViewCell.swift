import UIKit

class QuestionTableViewCell: UITableViewCell {
    var questionController: QuestionController?
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var askByLabel: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    var question: Question?{
        didSet {
            questionLabel?.text = question?.question
            askByLabel?.text = question?.asker
            question?.answer == nil ? (answerLabel?.text = "Can you answer this"): (answerLabel?.text = "Tapped to view answer")
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
