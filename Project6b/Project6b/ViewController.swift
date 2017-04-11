//
//  ViewController.swift
//  Project6b
//
//  Created by Macbook on 11/04/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

     

     override func viewDidLoad() {
          super.viewDidLoad()
          
     
          
     let label1 = UILabel()
     label1.translatesAutoresizingMaskIntoConstraints = false
     label1.backgroundColor = UIColor.red
     label1.text = "THESE"
     
     let label2 = UILabel()
     label2.translatesAutoresizingMaskIntoConstraints = false
     label2.backgroundColor = UIColor.cyan
     label2.text = "ARE"
     
     let label3 = UILabel()
     label3.translatesAutoresizingMaskIntoConstraints = false
     label3.backgroundColor = UIColor.yellow
     label3.text = "SOME"
     
     let label4 = UILabel()
     label4.translatesAutoresizingMaskIntoConstraints = false
     label4.backgroundColor = UIColor.green
     label4.text = "AWESOME"
     
     let label5 = UILabel()
     label5.translatesAutoresizingMaskIntoConstraints = false
     label5.backgroundColor = UIColor.orange
     label5.text = "LABELS"
     
     view.addSubview(label1)
     view.addSubview(label2)
     view.addSubview(label3)
     view.addSubview(label4)
     view.addSubview(label5)
     
     let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
     
     let metrics = ["labelHeight": 72]
     
//     view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label1]|", options: [], metrics: nil, views: viewsDictionary))
//     view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label2]|", options: [], metrics: nil, views: viewsDictionary))
//     view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label3]|", options: [], metrics: nil, views: viewsDictionary))
//     view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label4]|", options: [], metrics: nil, views: viewsDictionary))
//     view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label5]|", options: [], metrics: nil, views: viewsDictionary))

     

//     for label in viewsDictionary.keys {
//               view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: metrics, views: viewsDictionary))
//               
//          }
//
//     view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]->=10-|", options: [], metrics: metrics, views: viewsDictionary))


     var previous: UILabel!

     for label in [label1, label2, label3, label4, label5] {
          label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
          label.heightAnchor.constraint(equalToConstant: 88).isActive = true
          
          if previous != nil {
               // we have a previous label - create a height constraint
               label.topAnchor.constraint(equalTo: previous.bottomAnchor).isActive = true
          }
          
               // set the previous label to be the current one, for the next loop iteration
          previous = label
          
          }


     }
     
     override var prefersStatusBarHidden: Bool {
          return true
     }

     
}

