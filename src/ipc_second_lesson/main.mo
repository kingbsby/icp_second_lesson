import Int "mo:base/Int";
import Nat "mo:base/Nat";
import quicksort "sort_module";
import Array "mo:base/Array";
import Debug "mo:base/Debug";



actor Main {

    public func qsort(arr : [Int]) : async [Int] {
        var arr_var : [var Int] = Array.thaw(arr);
        quicksort.quicksort(arr_var);
        return Array.freeze(arr_var);
    };
    // var a:[var Int] = [var 8,5,10,-9,2,45,0,1];
    // quicksort.quicksort(a);

    // for (i:Int in Array.vals(Array.freeze(a))){
    //     Debug.print(Int.toText(i));
    // };
};


