import UIKit

var greeting = "Hello, playground"
//kısayol sift+enter çalıştırır(run) projeyi

/*
 Closure (tek kullanımlık fonksiyonlar yada isimsiz fonksiyonlar, anonim fonsksiyonlar olarka geçer, kotlinde lamda gösterimine benzer)
 */


func sum (num1 :Int , num2: Int) -> Int {
    return num1 + num2
}
sum(num1: 5, num2: 4    )

func calculate(num1: Int, num2: Int, myFunction: (Int,Int) -> Int) -> Int {
    return myFunction(num1,num2)
}
calculate(num1: 5, num2: 4, myFunction: sum(num1:num2:))//yada aynı şeyler
calculate(num1: 5, num2: 4, myFunction: sum)
//bir fonksiyon başka bir fonksiyona parametre olarak verilebiliyor



func multiply(num1: Int,num2: Int) -> Int{
    return num1 * num2
}
multiply(num1: 5, num2: 4)

//üstteki fonksiyonunun func multiply silindi ilk { en başa kondu ve ilk satır sonuna in eklendi başka farkı yoktur
//ama tek kullanımlık bir fonksiyon verildi diyebiliriz
/*
{ (num1: Int,num2: Int) -> Int in
    return num1 * num2
}
 */

calculate(num1: 4, num2: 9, myFunction: {(num1: Int, num2: Int)-> Int in // yada böyle aynı
    return num1 * num2
})
calculate(num1: 4, num2: 9, myFunction: {(num1, num2)-> Int in // yada böylede aynı
    return num1 * num2
})
calculate(num1: 4, num2: 9, myFunction: {(num3, num4)  in // yada böylede aynı
    return num3 * num4
})
calculate(num1: 4, num2: 9, myFunction: {(num1, num2) in // yada böylede aynı
    return num1 * num2
})
calculate(num1: 4, num2: 9, myFunction: {(num1, num2) in num1 * num2 }) // yada böylede aynı
//$0 1.index $1 ise 2.index verisi anlamındadır
calculate(num1: 4, num2: 9, myFunction: { $0 * $1 })





let myArray = [10,20,30,40,50]
func test(num1: Int) -> Int {
    return num1 / 5
}
//myArray.map(test(num1:))//aynı
myArray.map(test)//yada
myArray.map({$0 / 5})



