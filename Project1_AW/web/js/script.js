function validateFeedBack() {
    //validate feedback form
    let isValid = true;
    const nameInput = document.getElementById("nameInput");
    const nameMsg = document.getElementById("nameMsg");

    const emailInput = document.getElementById("emailInput");
    const emailMsg = document.getElementById("emailMsg");

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
        nameMsg.innerHTML =
                "The name must consist of at least 3 characters to 50 and do not contain symbols or numbers";
        nameMsg.style.display = "inline";
        isValid = false;
    } else {
        nameMsg.innerHTML = "";
        nameMsg.style.display = "none";
    }

    // here we check email less than 50
    if (!emailInput.value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
        isValid = false;
        emailMsg.innerHTML =
                "ERROR: Provide a correct email address ! most be Less than 50 characters ";
        emailMsg.style.display = "inline";
    } else {
        emailMsg.innerHTML = "";
        emailMsg.style.display = "none";
    }

    // check number eg 05**********
    //0534889865  or   966534889865
    if (phoneNumberInput.value.search(/^(05\d{8}|9665\d{8})$/) !== 0) {
        isValid = false;
        phoneNumberMsg.innerHTML =
                "ERROR: Phone number is wrong ! eg:0534889865 or 966534889865";
        phoneNumberMsg.style.display = "inline";
    } else {
        phoneNumberMsg.innerHTML = "";
        phoneNumberMsg.style.display = "none";
    }

    // here we check request must consist 3-50 letters only
    if (requestInput.value.search(/^[A-Za-z'\-\._ ]{3,50}$/) !== 0) {
        isValid = false;
        requestMsg.innerHTML =
                "The request type must consist of at least 3 characters to 50 and do not contain symbols or numbers";
        requestMsg.style.display = "inline";
    } else {
        requestMsg.innerHTML = "";
        requestMsg.style.display = "none";
    }

    // here we check Subject must consist 3-50 letters only
    if (requestInput.value.search(/^[A-Za-z'\-\._ ]{3,50}$/) !== 0) {
        isValid = false;
        subjectMsg.innerHTML =
                "The subject must consist of at least 3 characters to 50 and do not contain symbols or numbers";
        subjectMsg.style.display = "inline";
    } else {
        subjectMsg.innerHTML = "";
        subjectMsg.style.display = "none";
    }

    // here we check feedback must consist 10-255
    if (feedbackInput.value.length < 10 || feedbackInput.value.length > 255) {
        isValid = false;
        feedbackMsg.innerHTML =
                "The message must consist of at least 10 characters to 255 ";
        feedbackMsg.style.display = "inline";
    } else {
        feedbackMsg.innerHTML = "";
        feedbackMsg.style.display = "none";
    }

    return isValid;
}
const feedbackForm = document.getElementById("feedbackForm");
if (feedbackForm)
    feedbackForm.addEventListener("submit", (form) => {
        form.preventDefault();
        if (validateFeedBack())
            feedbackForm.submit();
    });

function validateAddItem() {
    // validate Add form
    const typeInput = document.getElementById("typeInput");
    const typeMsg = document.getElementById("typeMsg");

    const modelInput = document.getElementById("modelInput");
    const modelMsg = document.getElementById("modelMsg");

    const yearInput = document.getElementById("yearInput");
    const yearMsg = document.getElementById("yearMsg");

    const manufacturerInput = document.getElementById("manufacturerInput");
    const manufacturerMsg = document.getElementById("manufacturerMsg");

    const descriptionInput = document.getElementById("descriptionInput");
    const descriptionMsg = document.getElementById("descriptionMsg");

    const countInput = document.getElementById("countInput");
    const countMsg = document.getElementById("countMsg");

    const priceInput = document.getElementById("priceInput");
    const priceMsg = document.getElementById("priceMsg");

    var isValid = true;
    // here we check type must consist 2-50 letters only
    if (typeInput.value.search(/^[A-Za-z'\-\._ ]{2,50}$/) !== 0) {
        typeMsg.innerHTML =
                "The type must consist of at least 2 characters to 50 and do not contain symbols or numbers";
        typeMsg.style.display = "inline";
        isValid = false;
    } else {
        typeMsg.innerHTML = "";
        typeMsg.style.display = "none";
    }

    // here we check model must consist 2-50
    if (modelInput.value.search(/^[A-Za-z0-9'\-\._ ]{2,50}$/) != 0) {
        modelMsg.innerHTML =
                "The model must consist of at least 2 characters to 50";
        modelMsg.style.display = "inline";
        isValid = false;
    } else {
        modelMsg.innerHTML = "";
        modelMsg.style.display = "none";
    }

    // here we check year The year must be 2-4 digit
    if (yearInput.value.search(/^[0-9]{2,4}$/) != 0) {
        yearMsg.innerHTML = "The year must be 2-4 digit";
        yearMsg.style.display = "inline";
        isValid = false;
    } else {
        yearMsg.innerHTML = "";
        yearMsg.style.display = "none";
    }

    // here we check manufacturer must consist 2-50

    if (manufacturerInput.value.search(/^[A-Za-z0-9'\-\._ ]{2,50}$/) != 0) {
        manufacturerMsg.innerHTML =
                "The manufacturer must consist of at least 2 characters to 50 ";
        manufacturerMsg.style.display = "inline";
        isValid = false;
    } else {
        manufacturerMsg.innerHTML = "";
        manufacturerMsg.style.display = "none";
    }

    if (descriptionInput.value.search(/^[A-Za-z0-9'\-\._ ]{3,255}$/) != 0) {
        descriptionMsg.innerHTML =
                "The description must consist of at least 3 characters to 255 ";
        descriptionMsg.style.display = "inline";
        isValid = false;
    } else {
        descriptionMsg.innerHTML = "";
        descriptionMsg.style.display = "none";
    }

    // here we check count must be digit
    if (countInput.value.search(/^[0-9]{1,}$/) != 0) {
        countMsg.innerHTML = "The count must be digit";
        countMsg.style.display = "inline";
        isValid = false;
    } else {
        countMsg.innerHTML = "";
        countMsg.style.display = "none";
    }

    // here we check price must be digit
    if (priceInput.value.search(/^[0-9]+([.][0-9]+)?$/) != 0) {
        priceMsg.innerHTML = "The price must be digit";
        priceMsg.style.display = "inline";
        isValid = false;
    } else {
        priceMsg.innerHTML = "";
        priceMsg.style.display = "none";
    }

    return isValid;
}

const ProdcutForm = document.getElementById("ProdcutForm");
if (ProdcutForm)
    ProdcutForm.addEventListener("submit", (e) => {
        e.preventDefault();
        if (validateAddItem())
            ProdcutForm.submit();
    });


function validateRegister() {
    let isValid = true;
    const nameInput = document.getElementById("nameInput");
    const nameMsg = document.getElementById("nameMsg");

    const emailInput = document.getElementById("emailInput");
    const emailMsg = document.getElementById("emailMsg");

    const passwordInput = document.getElementById("passwordInput");
    const passwordMsg = document.getElementById("passwordMsg");
    
    const repaetPasswordInput = document.getElementById("repaetPasswordInput");
    const repaetPasswordMsg = document.getElementById("repaetPasswordMsg");

    // here we check name must consist 3-50 letters only
    if (nameInput.value.search(/^[A-Za-z'\-\._ ]{3,50}$/) !== 0) {
        nameMsg.innerHTML =
                "The name must consist of at least 3 characters to 50 and do not contain symbols or numbers";
        nameMsg.style.display = "inline";
        isValid = false;
    } else {
        nameMsg.innerHTML = "";
        nameMsg.style.display = "none";
    }

    // here we check email less than 50
    if (!emailInput.value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
        isValid = false;
        emailMsg.innerHTML =
                "ERROR: Provide a correct email address ! and most be Less than 51 characters";
        emailMsg.style.display = "inline";
    } else {
        emailMsg.innerHTML = "";
        emailMsg.style.display = "none";
    }

    // here we check the validity of the password
    if (!passwordInput.value.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,15}$/)) {
        isValid = false;
        passwordMsg.innerHTML =
                "ERROR: Provide a correct password with at least 8 characters that contains at least one capital letter and one small letter and a digit";
        passwordMsg.style.display = "inline";
    } else {
        passwordMsg.innerHTML = "";
        passwordMsg.style.display = "none";
    }
    
    // here we check the if the passwords area matched
    if (passwordInput.value !== repaetPasswordInput.value) {
        isValid = false;
        repaetPasswordMsg.innerHTML =
                "ERROR: the second password does not match the first password";
        repaetPasswordMsg.style.display = "inline";
    } else {
        repaetPasswordMsg.innerHTML = "";
        repaetPasswordMsg.style.display = "none";
    }

    return isValid;
}
const regsiterForm = document.getElementById("registerForm");
if (regsiterForm)
    regsiterForm.addEventListener("submit", (e) => {
        e.preventDefault();
        if (validateRegister())
            regsiterForm.submit();
    });


function validateLogin() {
    let isValid = true;

    const emailInput = document.getElementById("emailInput");
    const emailMsg = document.getElementById("emailMsg");

    const passwordInput = document.getElementById("passwordInput");
    const passwordMsg = document.getElementById("passwordMsg");

    // here we check email less than 50
    if (!emailInput.value.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/)) {
        isValid = false;
        emailMsg.innerHTML =
                "ERROR: Provide a correct email address ! and most be Less than 51 characters";
        emailMsg.style.display = "inline";
    } else {
        emailMsg.innerHTML = "";
        emailMsg.style.display = "none";
    }
    
    // here we check the validity of the password
    if (passwordInput.value.length <= 7) {
        isValid = false;
        passwordMsg.innerHTML =
                "ERROR: Provide a correct password with at least 8 characters";
        passwordMsg.style.display = "inline";
    } else {
        passwordMsg.innerHTML = "";
        passwordMsg.style.display = "none";
    }

    return isValid;
}
const loginForm = document.getElementById("loginForm");
if (loginForm)
    loginForm.addEventListener("submit", (e) => {
        e.preventDefault();
        if (validateLogin())
            loginForm.submit();
    });
