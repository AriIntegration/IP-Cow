function getScreenSize() {
    var x = 'Screen Size &#61; <strong>' + screen.width + ' x ' + screen.height + '</strong><br />';
    var y = 'Browser Size &#61; <strong>' + window.innerWidth + ' x ' + window.innerHeight + '</strong>';
    document.getElementById("ScreenSize").innerHTML = x + y;
}