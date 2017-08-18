//
//  ViewController.swift
//  appWebView
//
//  Created by Alejandro Agudo on 8/18/17.
//  Copyright © 2017 Alejandro Agudo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var txtSearch: UITextField!
    var palabra:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // generar objeto URL
        //let google = URL(string:"http://www.alexagudo.com")
        
        // cargar en memoria
        //webView.loadRequest(URLRequest(url:google!))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func search(_ sender: Any) {
        palabra = txtSearch.text!.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let urlCompleto = "https://es.wikipedia.org/w/api.php?action=query&prop=extracts&format=json&exintro=&titles=\(palabra!)"
        let objetoUrl = URL(string:urlCompleto)
        
        // Peticion realizar tarea
        let tarea = URLSession.shared.dataTask(with: objetoUrl!) {(datos, respuesta, error) in
            if error != nil{
                print(error!)
            } else {
                do {
                    // se obtiene objeto json dentro de la app
                    let json  = try JSONSerialization.jsonObject(with: datos!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String:Any]
                    print(json)
                    let querySubjson = json["query"] as! [String:Any]
                    print(querySubjson)
                    let pageSubjson = querySubjson["pages"] as! [String:Any]
                    print(pageSubjson)
                    let idSubJson = pageSubjson.first?.value as! [String:Any]
                    print(idSubJson)
                    let extractStringHtml = idSubJson["extract"] as! String
                    print(extractStringHtml)
                    
                    DispatchQueue.main.sync(execute: {
                        self.webView.loadHTMLString(extractStringHtml, baseURL: nil)
                    })
                    
                } catch {
                    print("El procesamiento del json tuvo un error")
                }
            }
        }
    
    tarea.resume()
        
    }

}
