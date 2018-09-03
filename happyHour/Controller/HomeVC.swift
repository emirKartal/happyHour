//
//  ViewController.swift
//  happyHour
//
//  Created by Emir Kartal on 25.07.2018.
//  Copyright © 2018 Emir Kartal. All rights reserved.
//

import UIKit
import GoogleMaps

class HomeVC: UIViewController {

    @IBOutlet weak var mapView: GMSMapView!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var sideBar: SideBarView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    var locationManager = CLLocationManager()
    
    var isSideBarOpen : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mapView.delegate = self
        self.locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        addMarker()
        
    }
    
    
    @IBAction func menuButtonTapped(_ sender: UIButton) {
        
        if isSideBarOpen {
            
            leadingConstraint.constant = -200
            
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
            
        } else {
            leadingConstraint.constant = 0
            
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
            
        }
        
        isSideBarOpen = !isSideBarOpen
        
    }
    

}

extension HomeVC {
    
    func addMarker () {
        
        for shopMarker in Networking.instance.shopArray {
           
            let marker = GMSMarker()
            
            marker.position = CLLocationCoordinate2D(latitude: shopMarker.shopLat, longitude: shopMarker.shopLong)
            marker.title = shopMarker.shopName
            marker.snippet = "123 m."
            marker.map = mapView
            
        }
        
        
        
    }
    
    
}

extension HomeVC : CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        
        guard status == .authorizedWhenInUse else {
            return
        }
        
        locationManager.startUpdatingLocation()
        
        mapView.isMyLocationEnabled = true
        mapView.settings.myLocationButton = true
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        guard let location = locations.first else {
            return
        }
        
        mapView.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        
        locationManager.stopUpdatingLocation()
        
        
    }
    
}

extension HomeVC : GMSMapViewDelegate {
    
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        performSegue(withIdentifier: "toProductListVC", sender: nil)
    }
    
}






