// login form validation

function validateForm() {
    let x = document.forms["loginform"]["username"].value;
    let y = document.forms["loginform"]["password"].value;
    if (x == "") {
    alert("Please enter username");
    return false;
    }

    if (y == "") {
    alert("Please enter password");
    return false;
    }
}



