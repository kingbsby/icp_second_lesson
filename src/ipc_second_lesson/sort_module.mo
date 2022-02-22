import Array "mo:base/Array";
import Debug "mo:base/Debug";
import Int "mo:base/Int";
import Nat "mo:base/Nat";


/*
 * 快速排序
 *
 * 参数说明：
 *     a -- 待排序的数组
 *     l -- 数组的左边界(例如，从起始位置开始排序，则l=0)
 *     r -- 数组的右边界(例如，排序截至到数组末尾，则r=a.length-1)
 */
module sort_module {
    func sort_by_rang(a:[var Int], l:Int, r:Int) {
        Debug.print("asdasda");
        if (l < r) {

            var i = l;
            var j = r;
            let x = a[Int.abs(i)];
            while (i < j)
            {
                while(i < j and a[Int.abs(j)] > x)
                    j -= 1; // 从右向左找第一个小于x的数
                if(i < j) {
                    a[Int.abs(i)] := a[Int.abs(j)];
                    i += 1;
                };

                while(i < j and a[Int.abs(i)] < x)
                    i += 1; // 从左向右找第一个大于x的数
                if(i < j) {
                    a[Int.abs(j)] := a[Int.abs(i)];
                    j -= 1;
                }

            };
            a[Int.abs(i)] := x;
            Debug.print(Int.toText(l) # "--" # Int.toText(i) # "--" # Int.toText(r));
            for (sdf:Int in Array.vals(Array.freeze(a))){
                Debug.print(Int.toText(sdf));
            };
            sort_by_rang(a, l, i-1); /* 递归调用 */
            sort_by_rang(a, i+1, r); /* 递归调用 */
        }
    };

    public func quicksort(a:[var Int]){
        if (a.size() > 1){
            let s:Nat = a.size() - 1;
            sort_by_rang(a, 0, s);
        }
    };
};

