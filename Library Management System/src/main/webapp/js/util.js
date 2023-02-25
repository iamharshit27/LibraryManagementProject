/**
 * 
 */
 function clock() {
  const date = new Date();
  let hours = date.getHours();
  let minutes = date.getMinutes();
  let seconds = date.getSeconds();
  let meridiem = "AM";

  // Convert 24-hour format to 12-hour format
  if (hours > 12) {
    hours -= 12;
    meridiem = "PM";
  }

  // Add leading zeros to single digit numbers
  hours = hours < 10 ? "0" + hours : hours;
  minutes = minutes < 10 ? "0" + minutes : minutes;
  seconds = seconds < 10 ? "0" + seconds : seconds;

  // Display the time in HH:MM:SS AM/PM format
  const time = hours + ":" + minutes + ":" + seconds + " " + meridiem;
  document.getElementById("clock").innerHTML = time;
}

// Update the clock every second
setInterval(clock, 1000);
