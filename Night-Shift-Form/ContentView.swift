//
//  ContentView.swift
//  Night-Shift-Form
//
//  Created by icelkas on 21/10/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var scheduled: Bool = false
    @State private var manuallyEnabledTilltomorrow: Bool = false
    @State private var colorTemperature: CGFloat = 0
    var body: some View {
        
        NavigationView {
            
            Form {
                Section(header: Text("Night shift automatically Night shift automatically Night shift automatically").padding(5).lineLimit(nil)){
                       
                    Toggle(isOn: $scheduled){
                        Text("Scheduled")
                    }
                    
                    HStack {
                        VStack{
                            Text("From")
                            Text("To")
                        }
                        Spacer()
                        NavigationLink(
                            destination: Text("Scheduled Settings")){
                            VStack{
                                Text("Sunset").foregroundColor(.blue)
                                Text("Sunrise").foregroundColor(.blue)
                            }
                        }.fixedSize()
                      }
                }
                Section(header: Text("").padding()){
                    Toggle(isOn: $manuallyEnabledTilltomorrow) {
                        Text("Manually Enabled if till tomorrow")
                    }
                }
                
                Section(header: Text("COLOR TEMPERATURE").padding()){
                    
                    HStack {
                        Text("Less Warm")
                        Slider(value: $colorTemperature)
                        Text("More Warm")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
