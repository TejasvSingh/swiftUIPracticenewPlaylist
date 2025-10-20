

import SwiftUI
struct TextView: View{
    var body : some View{
       
            Text("Tejasv")
        Text("Tejasv").foregroundColor(.blue).padding().background(.green).bold().font(.system(size : 25))
        Text("Tejasv").font(.largeTitle)
        Text("Hi Tejasv. How are you doing? Hope that you are enjoying swiftUI course. Its a really wonderful technology and easy to learn").lineLimit(0...5).minimumScaleFactor(0.2).baselineOffset(10).kerning(2).multilineTextAlignment(.center)
        
    }
}

#Preview {
    TextView()
}
