var firstName = document.querySelectorAll("#firstName")[0];
var lastName = document.querySelectorAll("#lastName")[0];
var emailAddress = document.querySelectorAll("#emailAddress")[0];
var lifeStyle = document.querySelectorAll("#lifeStyle")[0];
var form = document.querySelectorAll("div.form")[0];
var explore = document.querySelectorAll("div.explore")[0];
var message = document.querySelectorAll("#message")[0];
var link = document.querySelectorAll("#link")[0];
var submit = document.querySelectorAll("#submit")[0];

submit.addEventListener("click", insertdata, false);
function insertdata(event){
    event.preventDefault();
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function(e){
        console.log(xhr.readyState);
            if(xhr.readyState === 4){
            console.log("{'success':'true'}");
            form.remove()
            explore.remove()
            submit.removeEventListener("click", insertdata, false);
            message.innerHTML = "Thank you for contacting cookdeck, we will get back to you!";
            link.innerHTML = "explore recipes on cookdeck";
            link.href = "http://localhost/cookdeck/explore-page.php";
}
};
    xhr.open("POST","process-contact-page.php",true);
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhr.send(`firstName=${firstName.value}&lastName=${lastName.value}&emailAddress=${emailAddress.value}&lifeStyle=${lifeStyle.value}`);
}
