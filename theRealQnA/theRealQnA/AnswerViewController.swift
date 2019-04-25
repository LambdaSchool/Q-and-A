//
//  AnswerViewController.swift
//  theRealQnA
//
//  Created by Diante Lewis-Jolley on 4/25/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }


    @IBAction func submitAnswer(_ sender: Any) {



        guard let answerName = answererTextField.text, !answerName.isEmpty else { return }
        guard let answer = answerTextView.text, !answer.isEmpty else { return }


        question?.answerer = answerName
        question?.answer = answer

        navigationController?.popViewController(animated: true)

    }

    private func updateViews() {

        guard isViewLoaded else { return }

        guard let questionAsked = questionAskedLabel.text,
        let askerName = askedLabel.text,
        let answerName = answererTextField.text,
            let answer = answerTextView.text else { return }

        question?.asker = askerName
        question?.question = questionAsked
        question?.answerer = answerName
        question?.answer = answer


    }

    




    @IBOutlet weak var questionAskedLabel: UILabel!
    @IBOutlet weak var askedLabel: UILabel!
    @IBOutlet weak var answererTextField: UITextField!
    @IBOutlet weak var answerTextView: UITextView!
    var questionController: QuestionController?
    var question: Question? {
        didSet {
            updateViews()
        }
    }

}
