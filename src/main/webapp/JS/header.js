// Function to toggle the dropdown visibility
function toggleDropdown() {
    var dropdown = document.getElementById("prof_dropdown");
    if (dropdown.style.display === "block") {
        dropdown.style.display = "none";
    } else {
        dropdown.style.display = "block";
    }
}

// Close the dropdown if a click occurs outside the profile section
window.onclick = function (event) {
    var dropdown = document.getElementById("prof_dropdown");
    var profile = document.querySelector('.profile'); // Reference to the profile div

    // Check if the click is outside the profile or dropdown
    if (!profile.contains(event.target) && dropdown.style.display === "block") {
        dropdown.style.display = "none";
    }
};
