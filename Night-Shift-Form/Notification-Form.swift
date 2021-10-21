//
//  Notification-Form.swift
//  Night-Shift-Form
//
//  Created by icelkas on 21/10/2021.
//

import SwiftUI

struct Notification_Form: View {
    var emojies = ["👀","🧠","🫀","🫁","👃🏼","👂🏼","👅","👄","🖕🏼"]
    var body: some View {
        
        NavigationView {
            Form {
                Section(header: Text("")) {
                    
                    HStack {
                        Text("Show Previews")
                        Spacer()
                        NavigationLink(
                            destination: Text("")){
                            Text("Always")
                        }.fixedSize()
                    }
                }
                Section(header: Text("Notification previews will be shown whether the iPhone is locked or unlocked").padding(10).foregroundColor(.gray).lineLimit(nil)){
                    HStack{
                        NavigationLink(destination: Text("")){
                            Text("Siri Suggestions")
                        }
                    }
                }
                
                Section(header: VStack(alignment: .leading) {
                    Text("Choose while apps can suggest shortcuts on the lock screen").padding(2).lineLimit(nil)
                    Text("NOTIFICATION STYLE").padding(2)
                }) {
                    ForEach(self.emojies, id: \.self){ em in
                        HStack{
                            Text(em).font(.largeTitle)
                            Text("Notification")
                        }
                    }
                }
                
                
            }.navigationBarTitle("Notifications", displayMode: .inline)
        }
    }
}

struct Notification_Form_Previews: PreviewProvider {
    static var previews: some View {
        Notification_Form()
    }
}
