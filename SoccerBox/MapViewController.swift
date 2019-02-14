//
//  MapViewController.swift
//  SoccerBox
//
//  Created by Antonio Di Maio on 12/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    

    
    

    @IBOutlet var Mappa: MKMapView!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Place"
        let posizioneIniziale = CLLocation(latitude: 40.9669329, longitude: 14.198512)
        let raggio: CLLocationDistance = 1500
        impostaRegione(posizione: posizioneIniziale, ampiezza: raggio)
        
        let marioFiore = CLLocationCoordinate2D(latitude: 40.9685493, longitude: 14.2001372)
        aggiungiAnnotazione(titolo: "Campetto Mario Fiore", sottotitolo: "costo: 5$", coordinate: marioFiore)
        
        let pts = CLLocationCoordinate2D(latitude: 40.9686493, longitude: 14.2041372)
        aggiungiAnnotazione(titolo: "Pts", sottotitolo: "costo: 4$", coordinate: pts)
        
       
        
        Mappa.delegate = self
    }
    
    func impostaRegione(posizione: CLLocation, ampiezza: CLLocationDistance) -> Void {
        let regione = MKCoordinateRegion(center: posizione.coordinate, latitudinalMeters: ampiezza, longitudinalMeters: ampiezza)
        Mappa.setRegion(regione, animated: true)
    }
    
    func aggiungiAnnotazione(titolo: String, sottotitolo: String, coordinate: CLLocationCoordinate2D) -> Void {
        let annotazione = MKPointAnnotation()
        annotazione.title = titolo
        annotazione.subtitle = sottotitolo
        annotazione.coordinate = coordinate
        
        Mappa.addAnnotation(annotazione)
        
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
                performSegue(withIdentifier: "segue", sender: nil)
                Mappa.selectedAnnotations.removeAll()
    }
    
//    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
//        performSegue(withIdentifier: "segue2", sender: nil)
//        Mappa.selectedAnnotations.removeAll()
//    }
    
}
