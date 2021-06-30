//
//  PageView.swift
//  Landmarks
//
//  Created by Max Karl on 30.06.21.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]

    var body: some View {
        PageViewController(pages: pages)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
                .aspectRatio(3 / 2, contentMode: .fit)
        }
    }
}
