import SwiftUI


struct ContentView: View {
    var body: some View {
        
        HStack(alignment: .bottom, spacing: 8){
            
            ForEach(percents){i in
                
                Bar(percent: i.percent,day: i.day)
            }
            
        }.frame(height: 250)
    }
}


struct ContentView_Preview:PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}


struct Bar : View{

    var percent : CGFloat = 0
    var day = ""

    var body: some View{

        VStack{

            Text(String(format:"%.0f",Double(percent))+"%").foregroundColor(Color.black.opacity(0.5))
            //Text(String(format: "%.0f", Double(percent)) + "%").foregroundColor(Color.black.opacity(0.5))
            
            Rectangle().fill(Color.blue).frame(width:UIScreen.main.bounds.width/7-12, height:getHeight())

            Text(day).foregroundColor(Color.black.opacity(0.5))
        }
    }

    func getHeight() -> CGFloat{

        return 200 / 100 * percent
    }
}


struct type:Identifiable {
    
    var id : Int
    var percent : CGFloat
    var day : String
}


var percents = [
type(id: 0, percent: 150, day: "Love"),
type(id: 1, percent: 55, day: "Luck"),
type(id: 2, percent: 75, day: "career"),
type(id: 3, percent: 25, day: "Work"),
type(id: 4, percent: 56, day: "Coin"),
type(id: 5, percent: 15, day: "Stock"),
type(id: 6, percent: 65, day: "Fortune")
]
