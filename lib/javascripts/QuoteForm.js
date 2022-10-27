// get the building type selected
function comeback() {
    var build = document.getElementById("buildingType"),
    type = build.value;
    return type;
}
//
// get the commercial cage number
function getCommercialCage(){
    var numTotal = document.getElementById("commercial-cage").value;
    return numTotal;
}
//
// get the residential cage number
function getResidentialCage(){
    var resApart = document.getElementById("residential-apartment").value;
    var resFloor = document.getElementById("residential-floor").value;
    var resAverage = (resApart/resFloor);
    var round = (resAverage/6)
    var ave = Math.ceil(round)
    var resFinal = ave
    var addExtra = (resFloor/20)
    var roundExta = Math.ceil(addExtra)
    if (roundExta > 1){
        var numTotal = (resFinal * roundExta)
    }
    else{
        var numTotal = resFinal
    }
    return numTotal
};
//
// get the corporate cage number
function getCorporateCage(){
    var corporateoccupant = document.getElementById("corporate-occupant").value;
    var corporatebasement = document.getElementById("corporate-basement").value;
    var corporatefloor = document.getElementById("corporate-floor").value;
    var numFloor = (parseInt(corporatefloor) + parseInt(corporatebasement))
    var numOccu = (numFloor * corporateoccupant)
    var numElevator = Math.ceil(numOccu/1000)
    var numColumn = Math.ceil(numFloor/20)
    var NumElevatorPerColumn = Math.ceil(numElevator/numColumn)
    var numTotal =(NumElevatorPerColumn*numColumn);
    return numTotal
}
//
//get the hybrid cage number
function getHybridCage(){
    var hybridoccupant = document.getElementById("hybrid-occupant").value;
    var hybridbasement = document.getElementById("hybrid-basement").value;
    var hybridfloor = document.getElementById("hybrid-floor").value;
    var numFloor = (parseInt(hybridfloor) + parseInt(hybridbasement))
    var numOccu = (numFloor * hybridoccupant)
    var numElevator = Math.ceil(numOccu/1000)
    var numColumn = Math.ceil(numFloor/20)
    var NumElevatorPerColumn = Math.ceil(numElevator/numColumn)
    var numTotal =(NumElevatorPerColumn*numColumn);
    return numTotal
}
//
// get the option chosen for radio button
function checkRadio(){
    var radioAnswer = $('input[name="radio-btn"]:checked').val(); 
    return radioAnswer;
}
//
// return radio to empty
$(document).ready(function(){
    $('#buildingType').change(function(){
        $("input[type=text],textarea,input[type=email],input[type=number]").val('');
        $('[type="radio"]').prop('checked',false);
});
});

//
// change base prices to default
$(document).ready(function(){
    $('input[name="radio-btn"]').click(function(){      
        var selected = checkRadio();
        var stan = "$7565"
        var prem = "$12345"
        var exel ="$15400"
        var el = "Unit Price Of Elevator"
        if(selected === "standard"){
            document.getElementById('priceElevator').value = stan;
            }
        else if (selected === "premium"){
            document.getElementById('priceElevator').value = prem;
        }  
        else if(selected === "excelium"){
            document.getElementById('priceElevator').value = exel;
        }
        else{
            document.getElementById('priceElevator').value = el;
        }
        }
    )
});
//
//residential cal
$(document).ready(function(){
    $('input[name="radio-btn"],#residential-row').on('input',function(){      
        var radioSelected = checkRadio();
        var typeSelected = comeback();
        var resCageNumber = getResidentialCage();
        if(typeSelected === "residential" && radioSelected === "standard"){
            var resCagePrice = (resCageNumber * 7565)
            var feeCal = (resCagePrice * (10/100) )
            var feePrice = (parseFloat(resCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + resCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else if(typeSelected === "residential" && radioSelected === "premium"){
            var resCagePrice = (resCageNumber * 12345)
            var feeCal = (resCagePrice * (13/100) )
            var feePrice = (parseFloat(resCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + resCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else if(typeSelected === "residential" && radioSelected === "excelium"){
            var resCagePrice = (resCageNumber * 15400)
            var feeCal = (resCagePrice * (16/100) )
            var feePrice = (parseFloat(resCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + resCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else{
        }   
});
//
// commercial cal
$(document).ready(function(){
    $('input[name="radio-btn"],#commercial-row').on('input',function(){      
        var radioSelected = checkRadio();
        var typeSelected = comeback();
        var comCageNumber = getCommercialCage();
        if(typeSelected === "commercial" && radioSelected === "standard"){
            var comCagePrice = (comCageNumber * 7565)
            var feeCal = (comCagePrice * (10/100) )
            var feePrice = (parseFloat(comCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + comCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else if(typeSelected === "commercial" && radioSelected === "premium"){
            var comCagePrice = (comCageNumber * 12345)
            var feeCal = (comCagePrice * (13/100) )
            var feePrice = (parseFloat(comCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + comCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else if(typeSelected === "commercial" && radioSelected === "excelium"){
            var comCagePrice = (comCageNumber * 15400)
            var feeCal = (comCagePrice * (16/100) )
            var feePrice = (parseFloat(comCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + comCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else{

        }   
});
//
// corporate cal
$(document).ready(function(){
    $('input[name="radio-btn"],#corporate-row').on('input',function(){      
        var radioSelected = checkRadio();
        var typeSelected = comeback();
        var corCageNumber = getCorporateCage();
        if(typeSelected === "corporate" && radioSelected === "standard"){
            var corCagePrice = (corCageNumber * 7565)
            var feeCal = (corCagePrice * (10/100) )
            var feePrice = (parseFloat(corCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + corCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else if(typeSelected === "corporate" && radioSelected === "premium"){
            var corCagePrice = (corCageNumber * 12345)
            var feeCal = (corCagePrice * (13/100) )
            var feePrice = (parseFloat(corCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + corCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else if(typeSelected === "corporate" && radioSelected === "excelium"){
            var corCagePrice = (corCageNumber * 15400)
            var feeCal = (corCagePrice * (16/100) )
            var feePrice = (parseFloat(corCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + corCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else{
        }   
});
//
//hybrid cal
$(document).ready(function(){
    $('input[name="radio-btn"],#hybrid-row').on('input',function(){      
        var radioSelected = checkRadio();
        var typeSelected = comeback();
        var hyCageNumber = getHybridCage();
        if(typeSelected === "hybrid" && radioSelected === "standard"){
            var hyCagePrice = (hyCageNumber * 7565)
            var feeCal = (hyCagePrice * (10/100) )
            var feePrice = (parseFloat(hyCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + hyCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else if(typeSelected === "hybrid" && radioSelected === "premium"){
            var hyCagePrice = (hyCageNumber * 12345)
            var feeCal = (hyCagePrice * (13/100) )
            var feePrice = (parseFloat(hyCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + hyCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else if(typeSelected === "hybrid" && radioSelected === "excelium"){
            var hyCagePrice = (hyCageNumber * 15400)
            var feeCal = (hyCagePrice * (16/100) )
            var feePrice = (parseFloat(hyCagePrice) + parseFloat(feeCal) )
            document.getElementById('totalPrice').value = "$" + hyCagePrice.toFixed(2);
            document.getElementById('fee').value = "$" + feeCal.toFixed(2);
            document.getElementById('finlPrice').value = "$" + feePrice.toFixed(2);
        }
        else{
        }   
});
//
// go back to empty
$(document).ready(function(){
    $('#buildingType').change(function(){
    document.getElementById('cage-amount').value = "";
    })
});
//
// change residential cage number
$(document).ready(function(){
    $('#residential-floor, #residential-apartment').on('input',function(){
        var resCage = getResidentialCage();
        if (resCage > 0){
            document.getElementById('cage-amount').value = resCage;
    }
        else{
            document.getElementById('cage-amount').value = "Number Of Cages";
    };
});});
//
// change commercial cages
$(document).ready(function(){
    $('#commercial-cage').on('input',function(){
        var comCage = getCommercialCage();
        if (comCage > 0){
            document.getElementById('cage-amount').value = comCage;
    }
        else{
            document.getElementById('cage-amount').value = "Number Of Cages";
    };
});});
//
// change corporate cages
$(document).ready(function(){
    $('#corporate-floor, #corporate-basement, #corporate-occupant').on('input',function(){
        var CorCage = getCorporateCage();
        if (CorCage > 0){
            document.getElementById('cage-amount').value = CorCage;
    }
        else{
            document.getElementById('cage-amount').value = "Number Of Cages";
    };
});});
//
// change hybrid cages
$(document).ready(function(){
    $('#hybrid-floor, #hybrid-basement, #hybrid-occupant').on('input',function(){
        var hyCage = getHybridCage();
        if (hyCage > 0){
            document.getElementById('cage-amount').value = hyCage;
    }
        else{
            document.getElementById('cage-amount').value = "Number Of Cages";
    };
});});
//
// hide and show based on option
$(document).ready(function(){
    $('#residential-row, #corporate-row, #commercial-row, #hybrid-row, .answer').hide();
    $('#buildingType').click(function(){
        var service = comeback();
        if (service === "residential"){
            $('#residential-row, .answer').show();
            $('#corporate-row, #commercial-row, #hybrid-row').hide();
        }
        else if (service === "commercial"){
            $('#commercial-row, .answer').show();
            $('#residential-row, #corporate-row, #hybrid-row').hide();    

        }
        else if (service === "corporate"){
            $('#corporate-row, .answer').show();
            $('#residential-row, #commercial-row, #hybrid-row').hide();
        }
        else if (service === "hybrid"){
            $('#hybrid-row, .answer').show();
            $('#residential-row, #corporate-row, #commercial-row').hide();
        }
        else{
            $('#residential-row, #corporate-row, #commercial-row, #hybrid-row, .answer').hide();
        }
});});});});});});
//
