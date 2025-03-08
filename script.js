function toggleForm() {    
    const formTitle = document.getElementById("formTitle");    
    const authForm = document.getElementById("authForm");    
    const toggleText = document.getElementById("toggleText");

    if (formTitle.innerText === "Login") {        
        formTitle.innerText = "Sign Up";        
        authForm.querySelector("button").innerText = "Sign Up";        
        toggleText.innerHTML = "Already have an account? <a href='#' onclick='toggleForm()'>Login</a>";    
    } else {        
        formTitle.innerText = "Login";        
        authForm.querySelector("button").innerText = "Login";        
        toggleText.innerHTML = "Don't have an account? <a href='#' onclick='toggleForm()'>Sign Up</a>";    
    }
}

function showPopup() {    
    document.getElementById("popup").style.display = "block";
}

function hidePopup() {    
    document.getElementById("popup").style.display = "none";
}
