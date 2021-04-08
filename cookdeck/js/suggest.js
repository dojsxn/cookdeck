var recipeName = document.querySelectorAll("#recipeName")[0];
var recipeIng = document.querySelectorAll("#recipeIng")[0];
var emailAddress = document.querySelectorAll("#emailAddress")[0];
var lifeStyle = document.querySelectorAll("#lifeStyle")[0];
var image = document.getElementById("#image").files[0].name;
var form = document.querySelectorAll("div.form")[0];
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
            submit.removeEventListener("click", insertdata, false);
            message.innerHTML = "Thank you for your recipe suggestion!";
            link.innerHTML = "find your next meal with cookdeck";
            link.href = "http://localhost/cookdeck/explore-page.php";
}
};
    xhr.open("POST","process-suggest-page.php",true);
    xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    xhr.send(`recipeName=${recipeName.value}&recipeIng=${recipeIng.value}&emailAddress=${emailAddress.value}&lifeStyle=${lifeStyle.value}&image=${image.value}`);
    //couldn't figure out how to upload image with AJAX, used processing page instead.
}
