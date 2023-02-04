function validateFeedBack() {
//validate feedback form
    let isValid = true;
    const nameInput = document.getElementById("namInput");
    const nameMsg = document.getElementById("nameMsg");
    
    const emailInput = document.getElementById("emailInput");
    const emailMsg = document.getElementById("nameMsg");
    
    const phoneNumberInput = document.getElementById("phoneNumberInput");
    const phoneNumberMsg = document.getElementById("phoneNumberMsg");
    
    const requestInput = document.getElementById("requestInput");
    const subjectMsg = document.getElementById("subjectMsg");
    
    const subjecttInput = document.getElementById("subjecttInput");
    const requestMsg = document.getElementById("requestMsg");
    
    const feedbackInput = document.getElementById("feedbackInput");
    const feedbackMsg = document.getElementById("feedbackMsg");
    // here we check name must consist 3-50 letters only
    if (nameInput.value.search(/^[A-Za-z'\-\._ ]{3,50}$/) !== 0) {
        nameMsg.innerHTML = "The name must consist of at least 3 characters to 50 and do not contain symbols or numbers";
        nameMsg.style.display = "inline";
        isValid = false;
    } else {
        nameMsg.innerHTML = "";
        nameMsg.style.display = "none";
    }

// here we check email less than 50
    if (emailInput.value.search(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/) !== 0
            || emailInput.value.length > 50) {
        isValid = false;
        emailMsginnerHTML = "ERROR: Provide a correct email address ! most be Less than 50 characters ";
        emailMsg.style.display = "inline";
    } else {
        emailMsg.innerHTML = "";
        emailMsg.style.display = "none";
    }

// check number eg 05**********
//0534889865  or   966534889865
    if (phoneNumberInput.value.search(/^(05\d{8}|9665\d{8})$/) !== 0) {
        isValid = false;
        phoneNumberMsg.innerHTML = "ERROR: Phone number is wrong ! eg:0534889865 or 966534889865";
        phoneNumberMsg.style.display = "inline";
    } else {
        phoneNumberMsg.innerHTML = "";
        phoneNumberMsg.style.display = "none";
    }

// here we check request must consist 3-50 letters only
    if (requestInput.value.search(/^[A-Za-z'\-\._ ]{3,50}$/) !== 0) {
        isValid = false;
        requestMsg.innerHTML = "The request type must consist of at least 3 characters to 50 and do not contain symbols or numbers";
        requestMsg.style.display = "inline";
    } else {
        requestMsg.innerHTML = "";
        requestMsg.style.display = "none";
    }

// here we check Subject must consist 3-50 letters only
    if (subjecttInput.value.search(/^[A-Za-z'\-\._ ]{3,50}$/) !== 0) {
        isValid = false;
        subjectMsg.innerHTML = "The subject must consist of at least 3 characters to 50 and do not contain symbols or numbers";
        subjectMsg.style.display = "inline";
    } else {
        subjectMsg.innerHTML = "";
        subjectMsg.style.display = "none";
    }

// here we check feedback must consist 10-255
    if (feedbackInput.value.length < 10 || feedbackInput.value.length > 255) {
        isValid = false;
        feedbackMsg.innerHTML = "The message must consist of at least 10 characters to 255 ";
        feedbackMsg.style.display = "inline";
    } else {
        feedbackMsg.innerHTML = "";
        feedbackMsg.style.display = "none";
    }

    return isValid;
}

function validateAddItem() {
// validate Add form

    var isValid = true;
    // here we check type must consist 2-50 letters only
    if (
            document.getElementById("type").value.search(/^[A-Za-z'\-\._ ]{2,50}$/) != 0
            ) {
        document.getElementById("type--msg").innerHTML =
                "The type must consist of at least 2 characters to 50 and do not contain symbols or numbers";
        document.getElementById("type--msg").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("type--msg").innerHTML = "";
        document.getElementById("type--msg").style.display = "none";
    }

// here we check model must consist 2-50
    if (
            document
            .getElementById("model")
            .value.search(/^[A-Za-z0-9'\-\._ ]{2,50}$/) != 0
            ) {
        document.getElementById("model--msg").innerHTML =
                "The model must consist of at least 2 characters to 50";
        document.getElementById("model--msg").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("model--msg").innerHTML = "";
        document.getElementById("model--msg").style.display = "none";
    }

// here we check year The year must be 2-4 digit
    if (document.getElementById("year").value.search(/^[0-9]{2,4}$/) != 0) {
        document.getElementById("year--msg").innerHTML =
                "The year must be 2-4 digit";
        document.getElementById("year--msg").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("year--msg").innerHTML = "";
        document.getElementById("year--msg").style.display = "none";
    }

// here we check manufacturer must consist 2-50

    if (
            document
            .getElementById("manufacturer")
            .value.search(/^[A-Za-z0-9'\-\._ ]{2,50}$/) != 0
            ) {
        document.getElementById("manufacturer--msg").innerHTML =
                "The manufacturer must consist of at least 2 characters to 50 ";
        document.getElementById("manufacturer--msg").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("manufacturer--msg").innerHTML = "";
        document.getElementById("manufacturer--msg").style.display = "none";
    }

    if (
            document
            .getElementById("description")
            .value.search(/^[A-Za-z0-9'\-\._ ]{3,255}$/) != 0
            ) {
        document.getElementById("description--msg").innerHTML =
                "The description must consist of at least 3 characters to 255 ";
        document.getElementById("description--msg").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("description--msg").innerHTML = "";
        document.getElementById("description--msg").style.display = "none";
    }

// here we check count must be digit
    if (document.getElementById("count").value.search(/^[0-9]{1,}$/) != 0) {
        document.getElementById("count--msg").innerHTML = "The count must be digit";
        document.getElementById("count--msg").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("count--msg").innerHTML = "";
        document.getElementById("count--msg").style.display = "none";
    }

// here we check price must be digit
    if (document.getElementById("price").value.search(/^[0-9]{1,}$/) != 0) {
        document.getElementById("price--msg").innerHTML = "The price must be digit";
        document.getElementById("price--msg").style.display = "inline";
        isValid = false;
    } else {
        document.getElementById("price--msg").innerHTML = "";
        document.getElementById("price--msg").style.display = "none";
    }

    return isValid;
}