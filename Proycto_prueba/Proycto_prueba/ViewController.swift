//
//  ViewController.swift
//  Proycto_prueba
//
//  Created by ESTUDIANTE on 27/2/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BotonCalculo: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var imageView: UIImageView!
    let years = Array(1900...2099)
    let zodiacSigns = ["Rata", "Buey", "Tigre", "Conejo", "Dragon", "Serpiente", "Caballo", "Cabra", "Mono", "Gallo", "Perro", "Cerdo"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.delegate = self
        pickerView.dataSource = self
    }
  
    @IBAction func btnCalcular(_ sender: Any) {
        let row = pickerView.selectedRow(inComponent: 0)
                let year = years[row]
                let sign = zodiacSigns[(year - 1900) % 12]
                resultLabel.text = "El signo es: \(sign)"
        imageView.image = UIImage(named: sign)
            
    }
    
    

}
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return years.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(years[row])
    }
    
}

