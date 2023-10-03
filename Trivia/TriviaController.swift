//
//  TriviaController.swift
//  Trivia
//
//  Created by Abe on 10/2/23.
//

import UIKit

class TriviaController: UIViewController {

    var score = 0
    
    @IBOutlet weak var questionNum: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var question: UILabel!
    
    
    @IBAction func didTapOpt1(_ sender: UIButton) {
        if (CheckAns(a: 0, b: mockData.soln)) {
            score += 1
        }
    }
    
    @IBAction func didTapOpt2(_ sender: UIButton) {
        if (CheckAns(a: 1, b: mockData.soln)) {
            score += 1
        }
    }
    
    @IBAction func didTapOpt3(_ sender: UIButton) {
        if (CheckAns(a: 2, b: mockData.soln)) {
            score += 1
        }
    }
    
    @IBAction func didTapOpt4(_ sender: UIButton) {
        if (CheckAns(a: 3, b: mockData.soln)) {
            score += 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mockData1 = TriviaQuestion(question: "What is the largest ocean in the world?",category: "Geography",op1: "Pacific Ocean",op2: "Atlantic Ocean",op3: "Indian Ocean",op4: "Arctic Ocean",soln: 1)
        let mockData2 = TriviaQuestion(question: "What is the capital of France?",category: "Capitals",op1: "Paris",op2: "London",op3: "Rabat",op4: "Rome",soln: 0)
        let mockData3 = TriviaQuestion(question: "What is the speed of light?",category: "Crazy Numbers",op1: "186,282 miles per second",op2: "670,616,629 miles per hour",op3: "1,079,252,849 kilometers per hour",op4: "All of the above",soln: 3)
        
        let mockQuestions = [mockData1, mockData2, mockData3]
        configure(with: mockQuestions[2])
    }
    
    private func configure(with q: TriviaQuestion) {
        question.text = q.question
        category.text = q.category
        didTapOpt1.setTitle("test", for: .normal)
        didTapOpt2.setTitle("test", for: .normal)
        didTapOpt3.setTitle("test", for: .normal)
        didTapOpt4.setTitle("test", for: .normal)
//        
    }
    
    private func CheckAns(a: Int, b:Int) -> Bool {
        if a == b {
            return true
        }
        else {
            return false
        }
    }
}
