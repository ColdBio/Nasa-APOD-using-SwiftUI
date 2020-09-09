//
//  APODView.swift
//  Nasa-APOD-in-SwiftUI
//
//  Created by Yunis Farah on 09/09/2020.
//

import SwiftUI
import UIKit
import KingfisherSwiftUI

struct APODView: View {
    @State var apodData: DataModel?
    @State var showDescriptionSheet = false
    var body: some View {
        NavigationView {
            let image = URL(string: "\(self.apodData?.url ?? "")")

            ZStack {

                VStack(alignment: .center) {
                    Text("\(apodData?.title ?? "")")
                        .padding()
                    GeometryReader { geo in
                        NavigationLink(
                            destination: ImageDescriptionView(),
                            label: {
                                KFImage(image)
                                    .resizable()
                                    .padding()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geo.size.width, height: geo.size.height) })
                    }
                    Text("By \(apodData?.copyright ?? "")")
                        .padding()
                    /*
                    ScrollView {
                        Text("\(apodData?.explanation ?? "")")
                            .padding()
                            .lineLimit(.max)
                    }
                    */
                        .navigationTitle("APOD")
                        .navigationBarItems(trailing:
                                Image("nasalogo")
                                .resizable()
                                .frame(width: 50, height: 40)

                        )
                }
            }
        }
            .onAppear() {
                NasaAPI().loadData() { (info) in
                    self.apodData = info
                }
        }
    }
}

struct APODView_Previews: PreviewProvider {
    static var previews: some View {
        APODView()
            .colorScheme(.light)
    }
}
