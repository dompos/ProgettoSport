//
//  MapViewController.swift
//  SoccerBox
//
//  Created by Antonio Di Maio on 12/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, CLLocationManagerDelegate,MKMapViewDelegate {

    @IBOutlet var Mappa: MKMapView!
    //var posizioneUtente = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Place"
        Mappa.mapType = .hybrid
        Mappa.showsUserLocation = true
        Mappa.userLocation.title = "My location"
        let coordinate = Mappa.userLocation.coordinate
        let raggio = 2000
        let regione = MKCoordinateRegion(center: coordinate, latitudinalMeters: CLLocationDistance(raggio), longitudinalMeters: CLLocationDistance(raggio))
        Mappa.setRegion(regione, animated: true)
        
        //POSIZIONE UTENTE
//        self.posizioneUtente.requestWhenInUseAuthorization()
//
//        if CLLocationManager.locationServicesEnabled() {
//            posizioneUtente.delegate = self
//            posizioneUtente.desiredAccuracy = kCLLocationAccuracyBest
//            posizioneUtente.startUpdatingLocation()
//        }
//
//        Mappa.delegate = self
//        Mappa.mapType = .standard
//        Mappa.isZoomEnabled = true
//        Mappa.isScrollEnabled = true
//
//        if let coordinate = Mappa.userLocation.location?.coordinate {
//            Mappa.setCenter(coordinate, animated: true)
//        }
        
    }
    //POSIZIONE UTENTE
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
//
//        Mappa.mapType = MKMapType.standard
//
//        let raggio = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
//        let regione = MKCoordinateRegion(center: locValue, span: raggio)
//        Mappa.setRegion(regione, animated: true)
//
////        let annotazione = MKPointAnnotation()
////        annotazione.coordinate = locValue
////        annotazione.title = "Javed Multani"
////        annotazione.subtitle = "current location"
////        Mappa.addAnnotation(annotazione)
//
//        //centerMap(locValue)
//    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
