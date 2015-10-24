//
//  ViewController.swift
//  Weightcalculator
//
//  Created by Aaron Delgado on 10/22/15.
//  Copyright © 2015 Aaron Delgado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var estatura: UITextField!
    @IBOutlet weak var scroll: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        peso.delegate=self
        estatura.delegate=self
        peso.keyboardType = UIKeyboardType.DecimalPad
        estatura.keyboardType = UIKeyboardType.DecimalPad
    }

    @IBAction func textFieldDoneEditing(sender:UITextField)
    {
        sender.resignFirstResponder() //Desaparecer el teclado
    }
    
    @IBAction func  backgroundTap(sender:UIControl)
    {
        peso.resignFirstResponder()
        estatura.resignFirstResponder()
    }
    
    @IBAction func textFieldDidBeginEditing(textField: UITextField) {
        var punto:CGPoint
        punto = CGPointMake(0, textField.frame.origin.y-50)
        self.scroll.setContentOffset(punto, animated: true)
    }
    //Cuando termine de editar
    @IBAction func textFieldDidEndEditing(textField: UITextField) {
        self.scroll.setContentOffset(CGPointZero, animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado = imc ()
        let sigvista = segue.destinationViewController as! VistaResultado
        sigvista.indiceIM = resultado
    }
    @IBAction func calcularIMC(sender: AnyObject)
    {
        imc()
    }
    func imc()->Double
    {
        var IMC:Double
        let pesoLocal:Double?
        pesoLocal = Double(self.peso.text!)!
        let estaturaLocal:Double = Double(self.peso.text!)!
        IMC = pesoLocal!/(estaturaLocal*estaturaLocal)
        print("Resultado:\(IMC)")
        return IMC
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

