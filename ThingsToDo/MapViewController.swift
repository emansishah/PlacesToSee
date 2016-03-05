//
//  MapViewController.swift
//  ThingsToDo
//
//  Created by Mansi Shah on 3/3/16.
//  Copyright © 2016 Mansi Shah. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MapView.mapType = .Standard
        var span = MKCoordinateSpanMake(0.09, 0.09)
        var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.869405, longitude: -122.259315), span: span)
        MapView.setRegion(region, animated: true)
        
        let annotationCampanile = MKPointAnnotation()
        annotationCampanile.coordinate = CLLocationCoordinate2D(
            latitude: 37.872299,
            longitude: -122.257802)
        annotationCampanile.title = "Campanile"
        MapView.addAnnotation(annotationCampanile)
        
        let annotationAsianGhetto = MKPointAnnotation()
        annotationAsianGhetto.coordinate = CLLocationCoordinate2D(
            latitude: 37.868222,
            longitude: -122.258104)
        annotationAsianGhetto.title = "Asian Ghetto"
        MapView.addAnnotation(annotationAsianGhetto)
        
        let annotationMemorialGlade = MKPointAnnotation()
        annotationMemorialGlade.coordinate = CLLocationCoordinate2D(
            latitude: 37.873288,
            longitude: -122.259436)
        annotationMemorialGlade.title = "MemorialGlade"
        MapView.addAnnotation(annotationMemorialGlade)
        
        let annotationTildenPark = MKPointAnnotation()
        annotationTildenPark.coordinate = CLLocationCoordinate2D(
            latitude: 37.886093,
            longitude: -122.236204)
        annotationTildenPark.title = "TildenPark"
        MapView.addAnnotation(annotationTildenPark)
        
        let annotationMarina = MKPointAnnotation()
        annotationMarina.coordinate = CLLocationCoordinate2D(
            latitude: 37.869124,
            longitude: -122.306935)
        annotationMarina.title = "Berkeley Marina"
        MapView.addAnnotation(annotationMarina)
        
        let annotationSproul = MKPointAnnotation()
        annotationSproul.coordinate = CLLocationCoordinate2D(
            latitude: 37.869405,
            longitude: -122.259315)
        annotationMarina.title = "Sproul Plaza"
        MapView.addAnnotation(annotationSproul)
        
        let annotationLawrenceHOS = MKPointAnnotation()
        annotationLawrenceHOS.coordinate = CLLocationCoordinate2D(
            latitude: 37.879467,
            longitude: -122.246850)
        annotationLawrenceHOS.title = "Lawrence Hall of Science"
        MapView.addAnnotation(annotationLawrenceHOS)
        
        
        
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
