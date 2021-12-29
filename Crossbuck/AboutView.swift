//
//  AboutView.swift
//  Crossbuck
//
//  Created by Other user on 12/28/21.
//

import SwiftUI

struct AboutView: View {
    var move = -150.0
    var body: some View {
        ScrollView{
            VStack {
                Image("brisket")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .offset(y: -50)
                    .frame(height: 150)
                    .ignoresSafeArea()
                topper(head: "About us", move: move)
                Group {
                    form(head: "The Crossroads of American BBQ", data: "Crossbuck BBQ is a new generation of smokehouse specializing in craft American barbecue inspired from styles all across our continent. Barbecue that honors tradition while infusing the wide array of tastes that America has to offer. \n\nOur goal is to not just create, but to continually innovate - to combine “bold, punch-you-in-the-face, memorable flavors” with innovative smoking techniques,artistic culinary practices and a facility designed for creativity and experimentation.")
                    Divider()
                    form(head: "Chef-Pitmasters", data: "It’s not often that a culinary artist leaves a successful career in the pretentious world of fine dining to become a BBQ Pitmaster, but that is exactly what our founder, Tim McLaughlin, did several years ago. He immersed himself in the BBQ world…training, absorbing and experimenting with all things “smoked”, while continuing to use his background, knowledge and experience in the culinary arts to perfect the flavors and enhance the BBQ experience. He has a passion for crafting unique foods that are more than just satisfying…they’re memorable. \n\nAlong with his talented friend and fellow Chef-Pitmaster, Damian Avila, they lead a team whose focus is on blending tradition and technique with creative expression. ")
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
                }
                .offset(y: move)
                Group {
                    Divider()
                    HStack {
                        person(name: "Tim McLaughlin", pic: "tim", url: "https://www.crossbuckbbq.com/tim-mclaughlin.html")
                        person(name: "Damian Avila", pic: "dam", url: "https://www.crossbuckbbq.com/damian-avila.html")
                    }
                    Divider()
                    form(head: "Perfected & Enhanced “Low ‘n Slow”", data: "One of the keys to great BBQ is the low-and-slow cooking technique that naturally produces juicy, tender and flavorful meats. It’s a process that can take 16 to 18 hours for meats like brisket and pork butt and often takes years of practice and precision-crafted smokers to perfect. We have not only perfected this process, but we have enhanced the process with innovative rubs, marinades and bastes. This fusion of tried-and-true BBQ smoking techniques with classical French and Asian cooking techniques, create the perfect marriage. Besides offering traditional BBQ meats like brisket, ribs and turkey; Crossbuck will bring you everyday options like salmon and prime rib as well as an array of specials, and expanded catering and online shipping options.")
                    Divider()
                    form(head: "Delectable Sides", data: "We think it’s safe to say that no chef on the planet ever said, “your dish will include some macaroni made with color-added processed cheese and a slice of white bread.” At Crossbuck BBQ, we focus as much on our sides as we do our meats.\n\nUsing fresh, quality ingredients and letting our minds wander a bit from the traditional BBQ fare, we aim to please with an array of options that will truly delight the senses.")
                    Divider()
                    form(head: "A New Approach to Service", data: "Finally, in a world where the quality of a restaurant’s BBQ is often measured by the length of its line or how quickly it runs out of meat, we want to take a different approach – just because it takes a long time to smoke the meat, does not mean it should take forever to serve it.")
                }
                .offset(y: move)
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

struct form: View {
    let head: String
    let data: String
    
    var body: some View {
        VStack{
            Text(head)
                .bold()
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
                .padding()
            Text(data)
                .frame(width: 300)
            
        }
    }
}
struct topper: View {
    let head: String
    let move: CGFloat
    var body: some View {
        HStack {
            Text(head)
                .foregroundColor(.white)
                .bold()
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.leading, 75)
                .padding()
                .offset( y: move)
            Spacer()
        }
    }
}
