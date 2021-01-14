
import UIKit


extension Array {
    
    func myMap<T>(_ transform:(_ a:Element) -> T) -> [T] {
        var resultArr = Array<T>();
        for element in self {
            resultArr.append(transform(element))
        }
        return resultArr;
    }
}




let block = { (a:Int, b: Int) -> Int in
    return a*b;
}
func mybolckFun(block: (Int, Int) -> Int) -> Int{
    return block(1, 3);
}

let res = mybolckFun { (a, b) -> Int in
    return a-b
}


let arr = [1, 2, 3];

let arr1 = arr.myMap { (a) -> String in
   return "\(a)"
}
print(arr1)


func find(num: Int) -> Int {
    let arr = [1, 3, 4 , 5, 7]
    
    var l: Int = 0
    var h: Int = arr.count
    var m: Int = 0

    while (l <= h) {
        m = (l + h) / 2
        let number = arr[m]
        if num < number {
            h = m - 1
        } else if num > number {
             l = m + 1
        } else if num == number {
            return m;
        }
    }
    return -1
}

find(num: 7)

func sort1() {
    
    // 升序排列
    var nums = [8, 7, 6, 1, 2, 3, 4, 5]
    let length = nums.count - 1
    for i in 0..<length {
        for j in 0..<length - i {
            if nums[j] > nums[j+1] {
                let tmp = nums[j]
                nums[j] = nums[j+1]
                nums[j+1] = tmp
            }
        }
    }
}

func sort2() {
    var min = Int.max
    var minIndex = 0
    var nums = [3,5,3,11]
    
    for i in 0..<nums.count - 1 {
        let k = i
        for j in k..<nums.count {
            if nums[j] < min {
                min = nums[j]
                minIndex = j
            }
        }
        
        print("循环次数 === i = \(i)")
        print("最小数值的索引值 minIndex= \(minIndex)")
        
        //在这里进行替换
        let tmp = nums[i]
        nums[i] = min
        nums[minIndex] = tmp
        
        // 交换完成记得修改min
        min = Int.max
        
    }
    
}


