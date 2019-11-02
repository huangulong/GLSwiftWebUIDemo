//
//  MainPage.swift
//  SwiftWebUIDemo
//
//  Created by admin on 2019/11/2.
//  Copyright © 2019 历山大亚. All rights reserved.
//

import SwiftWebUI

struct MainPage: View {
    var body: some View {
        TabView {
            OrderPage().tabItem(Text("Order"))
            OrderHistory(previousOrders: previousOrders).tabItem(Text("History"))
        }.padding().relativeWidth(0.95).relativeHeight(0.95)
    }
}

struct MainPage_SUICards : View{
    var body: some View {
        SUICards{
            SUICard(Image.unsplash(size: UXSize(width: 200, height: 200), "Zebra","Animal"), Text("Some Zebra"), meta: Text("Roaming the world since 1976")) {
                Text("A striped animal.")
            }
            SUICard(Image.unsplash(size: UXSize(width: 200, height: 200), "Cow","Animal"), Text("Some Cow"), meta: Text("Milk it")) {
                Text("Holy cow!.")
            }
        }
        
    }
}

struct MainPage_SUILabel: View {
    var body: some View {
        SUILabel(Image(systemName: "mail")) {
            Text("42")
        }
        
    }
}

struct MainPage_HTML: View {
    
    func decrement() {
        
    }
    
    func increment() {
        
    }
    
    var body: some View {
        HStack {
            HTMLContainer(classes: ["ui","icon","buttons","small"]) {
                Button(action: self.decrement) {
                    HTMLContainer("i", classes: ["minus","icon"], body: {
                        Text("")
                    })
                }
                Button(action: self.increment) {
                    HTMLContainer("i", classes: ["plus","icon"], body:{
                        Text("")
                    })
                }
            }
        }
    }
    
}


struct MainPage_Demo: View {
    @State var counter = 0
    func countUp() -> Void {
        counter += 1
    }
    
    var body: some View {
        Text("🥑🍞 #\(counter)")
            .padding(.all)
            .background(.green, cornerRadius: 12)
            .foregroundColor(.white)
            .onTapGesture(self.countUp)
    }
    
}
