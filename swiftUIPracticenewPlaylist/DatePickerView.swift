//
//  DatePickerView.swift
//  swiftUIPracticenewPlaylist
//
//  Created by Tejasv Singh on 11/9/25.
//
import SwiftUI
struct DatePickerView : View{
    @State var date: Date = Date.now
    var body: some View{
        List{
            DatePicker("Select a date",selection: $date, in: Date.now...threeMonthsFromNow, displayedComponents: .date).labelsHidden()
        }
    }
    var threeMonthsFromNow: Date{
        return Calendar.current.date(byAdding: .month, value: 3, to: .now)!
    }
}
#Preview{
    DatePickerView()
}
