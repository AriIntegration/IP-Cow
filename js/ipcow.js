if (window.addEventListener) {
    window.addEventListener("load", getIPCowInfo);
    window.addEventListener("resize", getIPCowInfo);
} else if (window.attachEvent) {
    window.attachEvent("onresize", getIPCowInfo);
}
function getIPCowInfo() {
    var x = 'Screen size &#61; <strong>' + screen.width + ' x ' + screen.height + '</strong><br />';
    var y = 'Web browser size &#61; <strong>' + window.innerWidth + ' x ' + window.innerHeight + '</strong><br />';
    document.getElementById("ScreenSize").innerHTML = x + y;
}