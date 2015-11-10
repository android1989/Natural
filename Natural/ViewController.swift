//
//  ViewController.swift
//  Natural
//
//  Created by Andrew Hulsizer on 11/1/15.
//  Copyright © 2015 Swift Yeti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    var dataController: DataController<Day>;
    var collectionController: CollectionController<Day>;
    let dayCellConfiguration = DayCellConfiguration<DayCell>(cellIdentifier: "DayCell", nibName: "DayCell")
    init(request: Request<Day>)
    {
        dataController = DataController<Day>(request: request)
        collectionController = CollectionController<Day>(cellConfiguration: dayCellConfiguration, dataController: dataController)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        let request = Request<Day>(url: "temp")
        dataController = DataController<Day>(request: request)
        collectionController = CollectionController<Day>(cellConfiguration: dayCellConfiguration, dataController: dataController)
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        self.dayCellConfiguration.addAction = { cell in
            cell.backgroundColor = UIColor.blackColor()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

