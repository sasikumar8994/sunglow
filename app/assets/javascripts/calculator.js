function showMoney(){
    var ow = Number(document.getElementById("wattageOrg").value);
    var n = Number(document.getElementById("numOfLig").value);
    var e = document.getElementById("newLight");
    var rw = Number(e.options[e.selectedIndex].value);
    var h = Number(document.getElementById("hourrange").value);
    var d = Number(document.getElementById("dayrange").value);
    var c = Number(document.getElementById("costPerKwh").value);
    var cu = document.getElementById("currency").value;
    var res = h*d*n*(ow-rw)*c/1000;
    if(isNaN(res))
        document.getElementById("savedmoney").innerHTML = "<br />Sorry! We can't do the calculation! Please check if there is anything wrong with your input!<br />";
    else
        document.getElementById("savedmoney").innerHTML = "<br />Congrats! You will save " + cu + ' '+res + " on power supply every year with this purchase!<br />";
}
function showValuehour(newValue){
    document.getElementById("rangehour").innerHTML=newValue;
    document.getElementById("hourrange").value = newValue;
}
function showValueday(newValue){
    document.getElementById("rangeday").innerHTML=newValue;
    document.getElementById("dayrange").value = newValue;
}
