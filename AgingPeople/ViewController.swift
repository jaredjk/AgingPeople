//
//  ViewController.swift
//  AgingPeople
//
//  Created by Jared K on 11/6/17.
//  Copyright © 2017 Jared K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let people = ["Bryant","Cody","Cody","Jimmy","Courtney","Michael","Royta", "Jay","Uyanga"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return people.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath )
        cell.textLabel?.text = self.people[indexPath.row] // brings list of the people in rows.
        
        let age = arc4random_uniform(95-5) + 5
        cell.detailTextLabel?.text = "\(age) years old" //random age on teach row
        
        return cell
    }
}
