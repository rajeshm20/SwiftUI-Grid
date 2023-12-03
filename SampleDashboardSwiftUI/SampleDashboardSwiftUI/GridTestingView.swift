//
//  GridTestingView.swift
//  QizKid
//
//  Created by Rajesh Mani on 03/12/23.
//

import SwiftUI

struct GridTestingView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("This is VStack")
                    .font(.title)
                HStack {
                    Text("Hello")
                    Text("World")
                }
                Divider()
                HStack {
                    Text("This is new Grid API for SwiftUI")
                    Text("Hope you like it")
                }
                Text("This is Grid")
                    .font(.title)
                Grid{
                    GridRow {
                        Text("Hello")
                        Text("World")
                    }
                    Divider()
                        .gridCellUnsizedAxes(.horizontal)
                    GridRow {
                        Text("This is new Grid API for SwiftUI")
                        Text("Hope you like it")
                    }
                }
            }
        }
    }
}

#Preview {
    GridTestingView()
}
