//
//  PuntoDiInteresse.swift
//  SoccerBox
//
//  Created by Antonio Di Maio on 12/02/2019.
//  Copyright © 2019 Domenico Posillipo. All rights reserved.
//

import UIKit
import MapKit

class PuntoDiInteresse: NSObject, MKAnnotation {
    
    // This property must be key-value observable, which the `@objc dynamic` attributes provide.
    @objc dynamic var coordinate = CLLocationCoordinate2D(latitude: 40.9669329, longitude: 14.198512)
    
    // Required if you set the annotation view's `canShowCallout` property to `true`
    var title: String? = NSLocalizedString("Campetto Mario Fiore", comment: "Costo 5$")
    
    // This property defined by `MKAnnotation` is not required.
    var subtitle: String? = NSLocalizedString("Campetto Mario Fiore", comment: "Campetto annotazione")
}

