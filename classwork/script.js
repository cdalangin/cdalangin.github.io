// Practice1: log different message to console, depending on
// the case of the person, eg, the person has a driver license, not tired, 
// but doesn't have good vision etc.  

const driver = true
const tired = true
const goodVision = false

if (driver && goodVision && !tired) {
    console.log("You can drive")
} else if (driver && goodVision && tired) {
    console.log("Maybe have a rest")
} else if (driver && !goodVision && !tired) {
    console.log("See a doctor before driving")
} else if (driver && !goodVision && tired) {
    console.log("Don't drive right now. See a doctor and take a break")
} else {
    console.log("You don't know how to drive. Don't")
}

// Practice 2:
// Let user input some number from the web page
// Base on the user's input, if it's 10
// Log "Number is Matched!" to console
// If it's 8, Log "8 is also matched"
// Otherwise, Log "Sorry Number is not matched!"

const response = prompt("Give me a number from 1-10")

if (response == 10) {
    console.log("Number is matched!")
} else if (response == 8) {
    console.log("8 is also matched!")
} else {
    console.log("Sorry, number is not matched.")
}