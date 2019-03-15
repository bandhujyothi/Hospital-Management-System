function formValidation()
{
var uid = document.registration.uname;
var passid = document.registration.pwd;
var uname = document.registration.fname;
var uadd = document.registration.add;
var uemail = document.registration.mail;
var umsex = document.registration.gn;
var ufsex = document.registration.gn;
 if(userid_validation(uid,4,10))
{
if(passid_validation(passid,4,8))
{
if(allLetter(uname))
{
if(alphanumeric(uadd))
{ 
if(ValidateEmail(uemail))
{
if(validsex(umsex,ufsex))
{
}
} 
}
} 
}
}
return false;
} 
function userid_validation(uid,mx,my)
{
var uid_len = uid.value.length;
if (uid_len == 0 || uid_len >= my || uid_len < mx)
{
alert("User name should not be empty  or length is between"+mx+" to "+my);
uid.focus();
return false;
}
return true;
}
function passid_validation(passid,mx,my)
{
var passid_len = passid.value.length;
if (passid_len == 0 ||passid_len >= my || passid_len < mx)
{
alert("Password should not be empty or length be between "+mx+" to "+my);
passid.focus();
return false;
}
return true;
}
function allLetter(uname)
{ 
var letters = /^[A-Za-z]+$/;
if(uname.value.match(letters))
{
return true;
}
else
{
alert('Username must have alphabet characters only');
uname.focus();
return false;
}
}
function alphanumeric(uadd)
{ 
var letters = /^[0-9a-zA-Z]+$/;
if(uadd.value.match(letters))
{
return true;
}
else
{
alert('User address must have alphanumeric characters only');
uadd.focus();
return false;
}
}
function ValidateEmail(uemail)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(uemail.value.match(mailformat))
{
return true;
}
else
{
alert("invalid email address!");
return false;
}
} 
function validsex(umsex,ufsex)
{
x=0;

if(umsex.checked) 
{
x++;
}
if(ufsex.checked)
{
x++; 
}

if (x==2)
{
alert('Both Male/Female are checked');
ufsex.checked=false
umsex.checked=false
umsex.focus();
return false;
}

if(x==0)
{
alert('Select Male/Female');
umsex.focus();
return false;
}
else
{
alert('you have registered Succesfully ');
window.location.reload()
return true;
}
}