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
    var userLong : CLLocationDegrees = 0.0
    var userLat : CLLocationDegrees = 0.0
    var distance : Double = 0.0
    
    var isSideBarOpen : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mapView.delegate = self
        self.locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
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
            
            distance = calculateDistance(lat1: userLat, lon1: userLong, lat2: shopMarker.shopLat, lon2: shopMarker.shopLong)
            let marker = GMSMarker()
            
            marker.position = CLLocationCoordinate2D(latitude: shopMarker.shopLat, longitude: shopMarker.shopLong)
            marker.title = shopMarker.shopName
            marker.snippet = "\(String(distance)) m."
            marker.map = mapView
            
        }
        
    }
    func rad2deg(rad:Double) -> Double {
        return rad * 180.0 / .pi
    }
    func deg2rad(deg:Double) -> Double {
        return deg * .pi / 180
    }
    
    //MARK: Calculating of distance between user location and shops
    
    func calculateDistance(lat1:Double, lon1:Double, lat2:Double, lon2:Double) -> Double {
        let theta = lon1 - lon2
        var dist = sin(deg2rad(deg: lat1)) * sin(deg2rad(deg: lat2)) + cos(deg2rad(deg: lat1)) * cos(deg2rad(deg: lat2)) * cos(deg2rad(deg: theta))
        dist = acos(dist)
        dist = rad2deg(rad: dist)
        dist = dist * 60 * 1.1515
        dist = dist * 1.609344 * 1000  // mile to meter
        dist = round(dist * 100) / 100
        return dist
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
        
        userLat = location.coordinate.latitude
        userLong = location.coordinate.longitude
        
        locationManager.stopUpdatingLocation()
        
    }
    
}

extension HomeVC : GMSMapViewDelegate {
    
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        performSegue(withIdentifier: "toProductListVC", sender: nil)
    }
    
}






