//
//  MapViewController.swift
//  SoccerBox
//
//  Created by Antonio Di Maio on 12/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, {
    
    

    
    

    @IBOutlet var Mappa: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.title = "Place"
        let posizioneIniziale = CLLocation(latitude: 40.9669329, longitude: 14.198512)
        let raggio: CLLocationDistance = 1000
        impostaRegione(posizione: posizioneIniziale, ampiezza: raggio)
        
        let marioFiore = CLLocationCoordinate2D(latitude: 40.9685493, longitude: 14.2001372)
        aggiungiAnnotazione(titolo: "Campetto Mario Fiore", sottotitolo: "costo: 5$", coordinate: marioFiore)
        
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
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        print(#function)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
