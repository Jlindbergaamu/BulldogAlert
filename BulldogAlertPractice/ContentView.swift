//
//  ContentView.swift
//  BulldogAlertPractice
//
//  Created by Justin Lindberg on 6/9/20.
//  Copyright © 2020 Justin Lindberg. All rights reserved.
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    
    @ObservedObject private var locationManager = LocationManager()
    
    var body: some View {
        
        let coordinate = self.locationManager.location != nil ? self.locationManager.location!.coordinate :CLLocationCoordinate2D()
        
        return ZStack{
            Button(action : {
                 print("\(coordinate.latitude), \(coordinate.longitude)")
            }) {
            Text("Get Location")
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
