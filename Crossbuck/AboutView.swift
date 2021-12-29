//
//  AboutView.swift
//  Crossbuck
//
//  Created by Other user on 12/28/21.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView{
            VStack {
                Image("brisket")
                    .offset(y: -50)
                
                Text("The Crossroads of American BBQ")
                    .bold()
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                    .padding()
                Text("Crossbuck BBQ is a new generation of smokehouse specializing in craft American barbecue inspired from styles all across our continent. Barbecue that honors tradition while infusing the wide array of tastes that America has to offer. \n\nOur goal is to not just create, but to continually innovate - to combine “bold, punch-you-in-the-face, memorable flavors” with innovative smoking techniques,artistic culinary practices and a facility designed for creativity and experimentation.")
                    .frame(width: 300)
                Divider()
                Text("Chef-Pitmasters")
                    .bold()
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                    .padding()
                Text("It’s not often that a culinary artist leaves a successful career in the pretentious world of fine dining to become a BBQ Pitmaster, but that is exactly what our founder, Tim McLaughlin, did several years ago. He immersed himself in the BBQ world…training, absorbing and experimenting with all things “smoked”, while continuing to use his background, knowledge and experience in the culinary arts to perfect the flavors and enhance the BBQ experience. He has a passion for crafting unique foods that are more than just satisfying…they’re memorable. \n\nAlong with his talented friend and fellow Chef-Pitmaster, Damian Avila, they lead a team whose focus is on blending tradition and technique with creative expression. ")
                    .frame(width: 300)
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 350, height: 100)
                    .foregroundColor(.blue)
                    .opacity(0)
                    .frame(width: 10, height: 40)
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .frame(width: 350, height: 100)
                    .foregroundColor(.yellow)
                    Text("'Learn the rules like a pro, so you can break them like an artist.'\n- Pablo Picasso")
                        .frame(width: 300, height: 100)
                }
                HStack {
                    person(name: "Tim McLaughlin", pic: "tim", url: "https://www.crossbuckbbq.com/tim-mclaughlin.html")
                    person(name: "Damian Avila", pic: "dam", url: "https://www.crossbuckbbq.com/damian-avila.html")
                }
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
struct person: View {
    let name: String
    let pic: String
    let url: String
    
    var body: some View {
        Link(destination: URL(string: url)!) {
            VStack {
                Image(pic)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                .frame(width: 150, height: 300)
                Text(name)
                    .bold()
                    .foregroundColor(.primary)
            }
            .padding()
        }
    }
}
