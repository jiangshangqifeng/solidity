contract C {
    function f() pure public {
        address x = address('lat1pg9le9lys3vyjnxdslp4pwuj8mlqprwguzs9m');
        x;
    }
}
// ----
// TypeError 9640: (64-116): Explicit type conversion not allowed from "literal_string "lat1pg9le9lys3vyjnxdslp4pwuj8mlqprwguzs9m"" to "address".
