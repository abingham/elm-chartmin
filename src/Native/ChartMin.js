function extend(obj/*, …*/) {
    for (var i=1; i<arguments.length; i++) {
        for (var prop in arguments[i]) {
            var val = arguments[i][prop];
            if (typeof val == "object") // this also applies to arrays or null!
                update(obj[prop], val);
            else
                obj[prop] = val;
        }
    }
    return obj;
}

var setGlobalConfig = function(c) {
    extend(Chart.defaults.global, c);
    return Chart.defaults.global;
};

var createChart = function(id, h, w, data) {

}

var make = function make(elm) {
    elm.Native = elm.Native || {};
    elm.Native.ChartMin = elm.Native.ChartMin || {};

    if (elm.Native.ChartMin.values) return elm.Native.ChartMin.values;

    return elm.Native.ChartMin.values = {
        'setGlobalConfig' : setGlobalConfig
    };
};

Elm.Native.ChartMin = {};
Elm.Native.ChartMin.make = make;
