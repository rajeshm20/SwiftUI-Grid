//
//  TopCollectionsView.swift
//  QizKid
//
//  Created by Rajesh Mani on 01/12/23.
//

import SwiftUI

struct Item: Identifiable {
    let id = UUID()
    let title:String
    let image:String
    let imageColor:Color
}

struct ProfileTestView: View {
    let items = [Item(title: "Home", image: "house.fill", imageColor: .orange), Item(title: "History", image: "timelapse", imageColor: .mint), Item(title: "Calendar", image: "calendar", imageColor: .green), Item(title: "Flight", image: "airplane.departure", imageColor: .yellow), Item(title: "Car", image: "car.rear.fill", imageColor: .cyan), Item(title: "Fitness", image: "figure.run.circle.fill", imageColor: .brown), Item(title: "Weather", image: "sun.max.circle.fill", imageColor: .red), Item(title: "Internet", image: "network", imageColor: .blue), Item(title: "Chat", image: "ellipsis.message", imageColor: .indigo)]
    var topCollections: [String] = ["Teachers","Education","Games","Art","Kids","Health","Finance","Food & Drink","Sports","Lifestyle","World", "Galaxy"]
    let spacing:CGFloat = 10
    @State private var numberOfRows = 3

    var body: some View {
        var columns = Array(repeating: GridItem(.flexible(), spacing: 10), count: numberOfRows)

        ScrollView(.vertical, showsIndicators: false) {
            headerView
            LazyVGrid(columns: columns, spacing: spacing){
                ForEach(items){ item in
                    Button(action: {}, label: {
                        ItemView(item: item)
                    })
                    .buttonStyle(ItemButtonStyle(cornerRadius: 20))
                }
            }
            .offset(y: -50)
            .padding(.horizontal)
        }
        .ignoresSafeArea()
        .background(Color.white)
    }
    
    var headerView: some View {
        VStack {
            Image("\(getRandomInt())")
                .resizable()
                .frame(width: 110, height: 110)
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 4))
                .onTapGesture {
                    numberOfRows = numberOfRows % 3 + 1
                    print("numberOfRows--\(numberOfRows)")
                }
            Text("John Appleseed")
                .foregroundStyle(.white)
                .font(.system(size: 30, weight: .medium, design: .rounded))
            Text("Change the world by being yourself")
                .foregroundStyle(.white.opacity(0.7))
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .multilineTextAlignment(.center)
        }
        .frame(height: 370)
        .frame(maxWidth: .infinity)
        .background(.purple)
        

    }
    
    func getRandomInt() -> Int {
        return .random(in: 1...9)
    }
}

struct ItemButtonStyle:ButtonStyle {
    
    let cornerRadius:CGFloat
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            configuration.label
            if configuration.isPressed {
                Color.black.opacity(0.2)
            }
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .shadow(color: .black.opacity(0.2), radius: 10, y: 8)

    }
}

struct ItemView:View {
    let item:Item
    var body: some View {
        GeometryReader { reader in
            let fontSize = min(reader.size.width * 0.2, 23)
            let imageWidth = min(50, reader.size.width * 0.6)
            VStack(spacing: 5){
                    VStack(spacing: 5){
                        Image(systemName: item.image)
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(item.imageColor)
                            .frame(width: imageWidth)
                            .padding(10)
                        Text(item.title)
                            .font(.system(size: fontSize, weight: .bold, design: .rounded))
                            .foregroundStyle(Color.black.opacity(0.5))
                    }

            }
            .frame(width:reader.size.width, height: reader.size.height)
            .background(.white)
        }
        .frame(height: 150)
//        .clipShape(RoundedRectangle(cornerRadius: 20))
//        .shadow(color: .black.opacity(0.2), radius: 10, y: 8)
    }
}

#Preview {
    ProfileTestView()
}
