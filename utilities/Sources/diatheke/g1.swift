/* ? Once only var text was recognized by another package that imported all this  */
public class g1 {
    public var texttwo = "Five"
    //public private(set) var text = "Hello, World!"
    public var text = "Hello, World!"
    
    private var xValue = 12
    //public var x: Int {
    //        get { print("Getter was called"); return xValue }
    //        set { print("Setter was called"); xValue = newValue }
    //}
    
    //public func message(msg: String) -> String {
    //    let result = "Hello, " + msg + "!"
    //    return result
    //}

    public init() { //like a C++ constructor
        xValue = 10
    }

    //deinit { //like a C++ destructor
    //}
}
