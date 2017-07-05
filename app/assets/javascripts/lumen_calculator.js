// function showMoney(){
//     var ow = Number(document.getElementById("wattageOrg").value);
//     var n = Number(document.getElementById("numOfLig").value);
//     var e = document.getElementById("newLight");
//     var rw = Number(e.options[e.selectedIndex].value);
//     var h = Number(document.getElementById("hourrange").value);
//     var d = Number(document.getElementById("dayrange").value);
//     var c = Number(document.getElementById("costPerKwh").value);
//     var cu = document.getElementById("currency").value;
//     var res = h*d*n*(ow-rw)*c/1000;
//     if(isNaN(res))
//         document.getElementById("savedmoney").innerHTML = "<br />Sorry! We can't do the calculation! Please check if there is anything wrong with your input!<br />";
//     else
//         document.getElementById("savedmoney").innerHTML = "<br />Congrats! You will save " + cu + ' '+res + " on power supply every year with this purchase!<br />";
// }
function showBeamValue(newValue){
    document.getElementById("beamValue").innerHTML=newValue;
    document.getElementById("beam-angle").value = newValue;
    calculate_spread()
    calculateLux()
}
function showLightDistance(newValue){
    document.getElementById("lightValue").innerHTML=newValue;
    document.getElementById("lightDistance").value = newValue;
    calculate_spread()
    calculateLux()
}

function format_number (number, precision) {
    if (number > Math.pow(10, precision)) {
        return number.toFixed(0);
    } else if (number == 1) {
        return number;
    } else {
        return number.toPrecision(precision);
    }
} 
function calculateLumens () {
    var angle = Number(document.getElementById("beam-angle").value);
        if (angle > 180) angle = NaN;
    if (isNaN(angle)) {
      alert ("The Beam Angle value is invalid! Make sure it is a valid number no greater than 180 degrees.");
    }
    var distance = Number(document.getElementById("lightDistance").value);
    if (isNaN(distance)) {
      alert ("The Distance value is invalid!");
    }
    var lux = Number(document.getElementById("lux").value);
    if (isNaN(lux)) {
      alert ("The Lumens value is invalid!");
    }
        var lumens_value = lux * 2 * Math.PI * Math.pow(distance, 2) * (1 - Math.cos(angle/2 * Math.PI/180));
    document.getElementById("lumens").value = ""+format_number(lumens_value,4);
  }
    
    // The calculate lux function:
  function calculateLux () {
    var angle = Number(document.getElementById("beam-angle").value);
        if (angle > 180) angle = NaN;
    if (isNaN(angle)) {
      alert ("The Beam Angle value is invalid! Make sure it is a valid number no greater than 180 degrees.");
    }
    var distance = Number(document.getElementById("lightDistance").value);
    if (isNaN(distance)) {
      alert ("The Distance value is invalid!");
    }
    var lumens = Number(document.getElementById("lumens").value);
    if (isNaN(lumens)) {
      alert ("The Lumens value is invalid!");
    }       
        var lux_value = lumens / (2 * Math.PI * Math.pow(distance, 2) * (1 - Math.cos(angle/2 * Math.PI/180)));
    document.getElementById("lux").value = ""+format_number(lux_value,4);
  }
    
    // The calculate spread function:
  function calculate_spread () {
    var angle = Number(document.getElementById("beam-angle").value);
        if (angle >= 180) angle = NaN;
    if (isNaN(angle)) {
      alert ("The Beam Angle value is invalid! Make sure it is a valid number less than 180 degrees.");
    }
    var distance = Number(document.getElementById("lightDistance").value);
    if (isNaN(distance)) {
      alert ("The Distance value is invalid!");
    }
        var beam_width = 2 * distance * Math.tan(angle/2 * Math.PI/180);
    document.getElementById("beamWidth").innerHTML  = format_number(beam_width,3)
  }