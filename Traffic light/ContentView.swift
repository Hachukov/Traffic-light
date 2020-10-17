//
//  ContentView.swift
//  Traffic light
//
//  Created by Arsen Hachuk on 15.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    enum lightAlpha: Double {
        
        case redLight
        case yellowLight
        case greenLight
    }
    
    @State private var currentLight = lightAlpha.redLight

    var body: some View {
        
        ZStack {
            Color(.gray)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Color(.red)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .opacity(redLight)
                    .shadow(radius: 20 )
                
                Color(.yellow)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .opacity(yellowLight)
                    .shadow(radius: 20 )
                    
                
                Color(.green)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .opacity(greenLight)
                    .shadow(radius: 20 )
          
            Spacer()
            
                Button("TapMy") {
                    
                    switch currentLight {
                    
                    case .redLight:
                        redLight = 1.0
                        currentLight = .yellowLight
                        greenLight = 0.3
          
                    case .yellowLight:
                        redLight = 0.3
                        yellowLight = 1.0
                        currentLight = .greenLight
                
                    case .greenLight:
                        currentLight = .redLight
                        yellowLight = 0.3
                        greenLight = 1.0
                    }
                }
                            
                .frame(width: 300, height: 100, alignment: .center)
                .foregroundColor(.black)
                .font(.largeTitle)
                .background(Color.blue)
                .clipShape(Capsule(), style: FillStyle())
            
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()

    }
}
