//
//  ViewController.swift
//  XCode9Features
//
//  Created by Dipesh Wadekar on 10/08/17.
//  Copyright © 2017 Sureel Bhurat. All rights reserved.
//

import UIKit
//test.
class ViewController: UIViewController {
    
    var dinesh:Person?
    var macBook:Laptop?
    
    fileprivate func runForLoop() {
        for i in 0...10 {
            if i%2 == 0 {
                print("ODD")
            }
            else {
                print("EVEN")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //****ARC Demonstration.****
        dinesh = Person(nm: "dipesh", lap: nil)
        macBook = Laptop(nm: "macBook", own: nil)
        
        dinesh?.laptop = macBook
        macBook?.owner = dinesh
        
        dinesh = nil
        macBook = nil
        
        //****SearchBar.****
        let searchBar = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchBar
        navigationItem.hidesSearchBarWhenScrolling = false
        
        runForLoop()
        
        let prices = [22.3, 36.1, 69.4, 11.3, 45.2, 74.6, 66.3, 45.2]
        let filteredArray = prices.filter({return $0 < 50})
        print(filteredArray)
      
        let mapArray:[Double] = prices.map({return $0 * 2.0})
        print(mapArray)

        let reducedArray:Double = mapArray.reduce(0.0, +)
        print(reducedArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    //****XCODE 9 FEATURES***********************************************************//
 
    //1.Protocol stubs on single click.
    
    //2. Manage same folder/files hierarcy/Order.
    
    //3. Breakpoints with options.
    
    //4.Rename in all places at once (Refactor->Rename).
    
    //5. Method refactoring.
    
    //6. Easy to find scope of variable/function.
    
    //7. Now support zoom in-out on screen.
    
    //8. In-build git.
    
    //9. Wireless build/debugging.
    
    
    //****iOS 11 FEATURES***********************************************************//

    //1. Strings now array of characters.
    
    //2. Multi-line string.
    
    //3. Fixed private variable accessing issue in class extension.
    
    //4. Inferring at the begining and the end of array.
    
    //5. Introduced Codable (encode and decode in single line).
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        cell.selectionStyle = .none
        return cell
    }
}

