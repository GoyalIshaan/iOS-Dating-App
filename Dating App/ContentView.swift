//
//  ContentView.swift
//  Dating App
//
//  Created by Ishaan Goyal on 05/06/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ZStack() {
      Rectangle()
        .foregroundColor(.clear)
        .frame(width: 430, height: 512)
        .background(
          AsyncImage(url: URL(string: "https://via.placeholder.com/430x512"))
        )
        .cornerRadius(40)
        .offset(x: 0, y: -244)
      HStack(spacing: 0) {
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 134, height: 5)
          .background(.black)
          .cornerRadius(100)
      }
      .padding(EdgeInsets(top: 21, leading: 121, bottom: 8, trailing: 120))
      .frame(width: 375, height: 34)
      .offset(x: 0.50, y: 449)
      Text("Say Hello To\nYour New Partner")
        .font(Font.custom("Satoshi", size: 36).weight(.black))
        .lineSpacing(22)
        .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
        .offset(x: -7.50, y: 93.50)
      Text("Find People Looking For What You Are Looking For\nNear You")
        .font(Font.custom("Satoshi", size: 16).weight(.medium))
        .lineSpacing(22)
        .foregroundColor(Color(red: 0.50, green: 0.49, blue: 0.49))
        .offset(x: 0, y: 178)
      Text("👋🏻")
        .font(Font.custom("Satoshi", size: 96).weight(.black))
        .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
        .offset(x: 209.90, y: -5)
        .rotationEffect(.degrees(-70))
      Text("🎉")
        .font(Font.custom("Satoshi", size: 96).weight(.black))
        .foregroundColor(Color(red: 0.09, green: 0.09, blue: 0.09))
        .offset(x: -145, y: 12)
        .rotationEffect(.degrees(90))
      ZStack() {
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 378, height: 69)
          .background(Color(red: 1, green: 0.84, blue: 0.69))
          .cornerRadius(60)
          .overlay(
            RoundedRectangle(cornerRadius: 60)
              .inset(by: 0.50)
              .stroke(
                Color(red: 0.43, green: 0.43, blue: 0.43).opacity(0.40), lineWidth: 0.50
              )
          )
          .offset(x: 0, y: 0)
        Text("Joining The PARTYYYYYY 🥳")
          .font(Font.custom("Satoshi", size: 20).weight(.bold))
          .lineSpacing(22)
          .foregroundColor(.black)
          .offset(x: 1.28, y: 0)
      }
      .frame(width: 378, height: 69)
      .offset(x: -1, y: 272.50)
      ZStack() {
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 384, height: 69)
          .background(Color(red: 0.09, green: 0.09, blue: 0.09))
          .cornerRadius(60)
          .overlay(
            RoundedRectangle(cornerRadius: 60)
              .inset(by: 0.50)
              .stroke(Color(red: 0.67, green: 0.67, blue: 0.67), lineWidth: 0.50)
          )
          .offset(x: 0, y: 0)
        Text("Coming Back 😎")
          .font(Font.custom("Satoshi", size: 20).weight(.bold))
          .lineSpacing(22)
          .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.96))
          .offset(x: -0.17, y: 0)
      }
      .frame(width: 384, height: 69)
      .offset(x: 0, y: 359.50)
    }
    .frame(width: 430, height: 932)
    .background(Color(red: 0.98, green: 0.98, blue: 0.96));
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
