//
//  ViewController.swift
//  demoGMaps
//
//  Created by fredy asencios instructor on 2/14/21.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    @IBOutlet weak var miSwitch: UISwitch!
    @IBOutlet weak var miMapa: GMSMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        generarMapa()
    }
    @IBAction func gotoFullScreen(_ sender: Any) {
        if miSwitch.isOn{
            performSegue(withIdentifier: "gotoFull", sender: sender)
        }
        
    }
    
    func generarMapa(){
        //camara
        let camera = GMSCameraPosition.camera(withLatitude: -12.1319502, longitude: -77.0305149, zoom: 14.0)
        //viewMap
//        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
//        self.view.addSubview(mapView)
        miMapa.camera = camera
       //marker
        // Creates a marker in the center of the map.
               let marker = GMSMarker()
               marker.position = CLLocationCoordinate2D(latitude: -12.1319502, longitude: -77.0305149)
               marker.title = "Larco Mar"
               marker.snippet = "Mi Restaurante"
               marker.icon = UIImage(named: "iconRt.png")
               marker.map = miMapa
        
    }

}

