//
//  SmallLargeView.swift
//  QizKid
//
//  Created by Rajesh Mani on 03/12/23.
//

import SwiftUI

struct SmallBox:View {
    let color:Color
    var body: some View {
        color.frame(width: 50, height: 50)
            .cornerRadius(5)
    }
}
struct LargeBox:View {
    let color:Color
    var body: some View {
        color.frame(width: 100, height: 100)
            .cornerRadius(5)
    }
}

struct SmallLargeView: View {
    var body: some View {
        Grid(alignment:.topTrailing, horizontalSpacing: 40, verticalSpacing: 40) {
            GridRow {
                SmallBox(color: .red)
                LargeBox(color: .green)
                SmallBox(color: .red)
            }
            .gridCellAnchor(.bottomLeading)
            GridRow {
                LargeBox(color: .yellow)
                Color.clear
                    .gridCellUnsizedAxes([.horizontal, .vertical])
                LargeBox(color: .yellow)
            }
            .gridCellAnchor(.center)
            GridRow {
                Color.yellow
                    .gridCellUnsizedAxes([.horizontal])
                    .gridCellColumns(3)
                    .cornerRadius(5)
            }
            GridRow {
                LargeBox(color: .yellow)
                SmallBox(color: .red)
                    .gridCellAnchor(.bottomLeading)
                LargeBox(color: .yellow)
            }
            GridRow {
                SmallBox(color: .red)
                    .gridCellAnchor(.bottomTrailing)
                LargeBox(color: .green)
                SmallBox(color: .red)
                    .gridCellAnchor(.bottomLeading)
            }
            GridRow {
                LargeBox(color: .yellow)
                SmallBox(color: .red)
                LargeBox(color: .yellow)
            }

        }
    }
}

#Preview {
    SmallLargeView()
}
