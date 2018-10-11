import UIKit

class QuestionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var askedByLabel: UILabel!
    @IBOutlet weak var askedByNameLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    
    private func updateViews() {
        questionLabel?.text = question?.question
        askedByNameLabel?.text = question?.asker
        answerLabel?.text = question?.answer
    }
    
    
    var question: Question? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
