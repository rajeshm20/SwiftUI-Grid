//
//  BoxView.swift
//  QizKid
//
//  Created by Rajesh Mani on 03/12/23.
//

import SwiftUI

struct BoxView: View {
    @State private var rotation:CGFloat = 0.0
    var body: some View {
        Grid(verticalSpacing:-300) {
            GridRow {
                Color.clear
                Color.clear
                Color.clear
                Color.random()
                    .clipShape(Circle())
            }
            GridRow {
                Color.clear
                Color.clear
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
            }
            GridRow {
                Color.clear
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
            }
            GridRow {
                ForEach(0..<7){ _ in
                    Color.random()
                        .clipShape(Circle())
                }
            }
            GridRow {
                Color.clear
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
            }
            GridRow {
                Color.clear
                Color.clear
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
                Color.random()
                    .clipShape(Circle())
            }
            GridRow {
                Color.clear
                Color.clear
                Color.clear
                Color.random()
//                    .cornerRadius(15)
                    .clipShape(Circle())
            }
        }
        .rotationEffect(.degrees(rotation))
        .onAppear{
            withAnimation(.linear(duration: 10).repeatForever(autoreverses:false)) {
                rotation = 360
            }
            
        }
        .padding(5)
    }
}

#Preview {
    BoxView()
}
