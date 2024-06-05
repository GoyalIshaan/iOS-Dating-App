import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView { // Wrap in NavigationView
            ZStack { // ZStack to overlay all the elements
                // Background Rectangle with an Image from assets
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 430, height: 512)
                    .background(
                        Image("on-boarding-screen") // Using the image from the assets
                            .resizable() // Make the image resizable
                            .aspectRatio(contentMode: .fill) // Aspect ratio to fill the rectangle
                    )
                    .cornerRadius(40)
                    .offset(x: 0, y: -244) // Positioning the image

                // Horizontal bar (HStack) at the bottom
                HStack(spacing: 0) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 134, height: 5)
                        .background(.black)
                        .cornerRadius(100)
                }
                .padding(EdgeInsets(top: 21, leading: 121, bottom: 8, trailing: 120))
                .frame(width: 375, height: 34)
                .offset(x: 0.50, y: 449) // Positioning the horizontal bar

                VStack(spacing: 20) {
                    // First text block
                    Text("Say Hello To\nYour New Partner")
                        .font(Font.custom("Satoshi", size: 32).weight(.black))
                        .lineSpacing(7)
                        .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
                        .multilineTextAlignment(.center) // Center align the text
                    
                    // Second text block
                    Text("Find People Looking For What You Are Looking For\nNear You")
                        .font(Font.custom("Satoshi", size: 14).weight(.medium))
                        .lineSpacing(10)
                        .foregroundColor(Color(red: 0.50, green: 0.49, blue: 0.49))
                        .multilineTextAlignment(.center) // Center align the text
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center) // Center the VStack in the available space
                .offset(y: 125.50) // Adjust the vertical position of the VStack

                // Emoji text block (waving hand)
                Text("👋🏻")
                    .font(Font.custom("Satoshi", size: 92).weight(.black))
                    .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
                    .offset(x: 40, y: -125)
                    .rotationEffect(.degrees(70)) // Positioning and rotating the emoji

                // Emoji text block (party popper)
                Text("🎉")
                    .font(Font.custom("Satoshi", size: 92).weight(.black))
                    .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
                    .offset(x: 50, y: -130)
                    .rotationEffect(.degrees(-90)) // Positioning and rotating the emoji

                // First button-like ZStack with NavigationLink
                NavigationLink(destination: PhoneVerification()) { // Wrap with NavigationLink
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 354, height: 55) // Smaller button size
                            .background(Color(red: 1, green: 0.84, blue: 0.69))
                            .cornerRadius(50)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .inset(by: 0.50)
                                    .stroke(
                                        Color(red: 0.43, green: 0.43, blue: 0.43).opacity(0.40), lineWidth: 0.50
                                    )
                            )
                            .offset(x: 0, y: 0) // Base rectangle with border
                        Text("Joining The PARTYYYYYY 🥳")
                            .font(Font.custom("Satoshi", size: 20).weight(.bold))
                            .lineSpacing(22)
                            .foregroundColor(.black)
                            .offset(x: 1.28, y: 0) // Text inside the button
                    }
                }
                .frame(width: 358, height: 59) // Smaller button frame
                .offset(x: -1, y: 262.50) // Push up by 20 pixels

                // Second button-like ZStack
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 354, height: 55) // Smaller button size
                        .background(Color(red: 0.09, green: 0.09, blue: 0.09))
                        .cornerRadius(50)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .inset(by: 0.50)
                                .stroke(Color(red: 0.67, green: 0.67, blue: 0.67), lineWidth: 0.50)
                        )
                        .offset(x: 0, y: 0) // Base rectangle with border
                    Text("Coming Back 😎")
                        .font(Font.custom("Satoshi", size: 20).weight(.bold))
                        .lineSpacing(22)
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.96))
                        .offset(x: -0.17, y: 0) // Text inside the button
                }
                .frame(width: 364, height: 59) // Smaller button frame
                .offset(x: 0, y: 339.50) // Push up by 20 pixels
            }
            .frame(width: 430, height: 932)
            .background(Color(red: 0.98, green: 0.98, blue: 0.96)) // Background color for the entire ZStack
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
