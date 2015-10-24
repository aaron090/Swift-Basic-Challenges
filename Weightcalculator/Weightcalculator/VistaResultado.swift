//
//  VistaResultado.swift
//  Weightcalculator
//
//  Created by Aaron Delgado on 10/23/15.
//  Copyright © 2015 Aaron Delgado. All rights reserved.
//

import UIKit

class VistaResultado: UIViewController {

    var indiceIM:Double=0
    @IBOutlet weak var resultadoIMC: UILabel!
    override func viewWillAppear(animated: Bool) {
        resultadoIMC.text=String(indiceIM)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
