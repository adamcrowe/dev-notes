// Chaining pure (stateless) functions

function stringManipulation(value, fn) {
    var chars = value.split("");
    return chars
        .map(function (char) {
            return String.fromCharCode(fn(char.charCodeAt(0)));
        })
        .join("");
}

function plus1(value) {
    return value + 1;
}

function minus1(value) {
    return value - 1;
}

[3, 4].map(plus1); // [4, 5]
stringManipulation("ABC", plus1); // "BCD"
stringManipulation("XYZ", plus1); // "WXY"
