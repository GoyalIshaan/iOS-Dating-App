import SwiftUI

struct PhoneVerification: View {
    // State properties to hold the text inputs
    @State private var phoneNumber: String = ""
    @State private var countryCode: String = "+1"

    var body: some View {
        ZStack { // ZStack to overlay all the elements
            Group {
                // Decorative ellipses with images
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 60, height: 60)
                    .background(
                        Image("ellipse-1")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                    )
                    .offset(x: -170.50, y: -343.50)
                
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 50, height: 50)
                    .background(
                        Image("ellipse-2")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                    )
                    .offset(x: -110, y: -310)
                
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 110, height: 110)
                    .background(
                        Image("ellipse-3")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                    )
                    .offset(x: -20, y: -300)
                
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 140, height: 140)
                    .background(
                        Image("ellipse-4")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                    )
                    .offset(x: 130, y: -322)
                
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 110, height: 110)
                    .background(
                        Image("ellipse-5")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                    )
                    .offset(x: -165, y: -215)
                
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 71, height: 71)
                    .background(
                        Image("ellipse-6")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                    )
                    .offset(x: -60.50, y: -200.50)
                
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 120, height: 120)
                    .background(
                        Image("ellipse-7")
                            .resizable()
                            .aspectRatio(contentMode:.fill)
                    )
                    .offset(x: 65, y: -185)
            }
            
            Group { // Grouping functional elements
                // Emoji illustration
                Text("🤙")
                    .font(Font.custom("Satoshi", size: 80).weight(.black))
                    .lineSpacing(22)
                    .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
                    .offset(x: -144, y: -61.50)
                
                // Main title text
                Text("What’s Your Phone \nNumber?")
                    .font(Font.custom("Satoshi", size: 28).weight(.black))
                    .lineSpacing(8)
                    .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
                    .offset(x: 45, y: -51.50)

                // Divider lines and input boxes for phone number input
                VStack {
                    HStack {
                        // Country code input field
                        TextField("+1", text: $countryCode)
                            .font(Font.custom("Satoshi", size: 30).weight(.black))
                            .lineSpacing(22)
                            .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
                            .multilineTextAlignment(.center)
                            .opacity(0.70)
                            .frame(width: 55)
                            .offset(x: -10, y: 79)

                        // Phone number input field
                        TextField("Enter Your Number Here", text: $phoneNumber)
                            .font(Font.custom("Satoshi", size: 22).weight(.black))
                            .lineSpacing(22)
                            .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
                            .multilineTextAlignment(.center)
                            .opacity(0.70)
                            .frame(width: 279)
                            .offset(x: 10, y: 79)
                    }

                    // Divider lines below each text field
                    HStack {
                        Rectangle()
                            .frame(width: 50, height: 1)
                            .foregroundColor(.black)
                            .offset(x: -7.5, y: 75)

                        Rectangle()
                            .frame(width: 265, height: 1)
                            .foregroundColor(.black)
                            .offset(x: 10, y: 75)
                    }
                }
                .padding(.bottom, 10) // Add downward margin
               
                // Verification message
                Text("We will send you a text with a verification code. \nMessage and data rates may apply.")
                    .font(Font.custom("Satoshi", size: 10))
                    .lineSpacing(5)
                    .foregroundColor(.black)
                    .offset(x: -67, y: 129)
                    .opacity(0.50)

                // Send button with ellipses
                ZStack {
                    // Inner filled ellipse
                    Ellipse()
                        .fill(Color(red: 0.09, green: 0.09, blue: 0.09))
                        .frame(width: 70, height: 70)

                    // Outer stroked ellipse
                    Ellipse()
                        .stroke(Color(red: 0.09, green: 0.09, blue: 0.09).opacity(0.10), lineWidth: 2)
                        .frame(width: 90, height: 90)

                    // Arrow icon in the center
                    Image(systemName: "arrow.right")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                }
                .frame(width: 117.04, height: 117.04)
                .offset(x: -0.48, y: 291.52)
            }
        }
        .frame(width: 430, height: 932)
        .background(Color(red: 0.98, green: 0.98, blue: 0.96)) // Background color for the entire ZStack
        .navigationBarBackButtonHidden(true) // Hide the default back button
    }
}

struct PhoneVerification_Previews: PreviewProvider {
    static var previews: some View {
        PhoneVerification()
    }
}
