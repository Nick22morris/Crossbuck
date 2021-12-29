//
//  AboutView.swift
//  Crossbuck
//
//  Created by Other user on 12/28/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Image("brisket")
                .offset(y: -50)
            Text("The Crossroads of American BBQ")
                .bold()
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            Text("Crossbuck BBQ is a new generation of smokehouse specializing in craft American barbecue inspired from styles all across our continent. Barbecue that honors tradition while infusing the wide array of tastes that America has to offer. Our goal is to not just create, but to continually innovate - to combine “bold, punch-you-in-the-face, memorable flavors” with innovative smoking techniques,artistic culinary practices and a facility designed for creativity and experimentation.")
            
            Spacer()
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
