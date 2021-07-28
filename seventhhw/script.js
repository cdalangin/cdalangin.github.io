// PART A

const tempC = 0
const tempCtoF = (tempC * (9 / 5)) + 32

console.log(`${tempC}°C is ${tempCtoF}°F`)

const tempF = 32
const tempFtoC = (tempF - 32) * (5 / 9)

console.log(`${tempF}°F is ${tempFtoC}°C`)

/* PART B
Use the BMI example from Activity #1, and the code you already wrote, and improve it:
1. Print a nice output to the console, saying who has the higher BMI.The message can be either "Lucas' BMI is higher than John's!" or "John's BMI is higher than Lucas'!"
2. Use a template literal to include the BMI values in the outputs.Example: "Lucas' BMI (28.3) is higher than John's (23.9)!"
HINT: Use an if/else statement
*/

const lucasW = 78
const lucasH = 1.69

const lucasBMI = lucasW / (lucasH ** 2)

const johnW = 92
const johnH = 1.95

const johnBMI = johnW / (johnH ** 2)

if (lucasBMI < johnBMI) {
    console.log(`John's BMI (${johnBMI}) is higher than Lucas' (${lucasBMI})`)
} else {
    console.log(`Lucas's BMI (${lucasBMI}) is higher than John's (${johnBMI})`)
}

// PART C
let avgNets = (96 + 108 + 89) / 3
let avgKnicks = (88 + 91 + 110) / 3

console.log(avgNets + " vs " + avgKnicks)

if (avgNets === avgKnicks) {
    console.log("It's a draw!")
} else if (avgNets > avgKnicks) {
    console.log("The Nets win!")
} else {
    console.log("The Knicks win!")
}

// BONUS 1
avgNets = (97 + 112 + 101) / 3
avgKnicks = (109 + 95 + 123) / 3

console.log(avgNets + " vs " + avgKnicks)

if (avgNets === avgKnicks) {
    console.log("It's a draw!")
} else if ((avgNets >= 100) || (avgKnicks >= 100)) {
    if (avgNets > avgKnicks) {
        console.log("The Nets win!")
    } else {
        console.log("The Knicks win!")
    }
} else {
    console.log("No one wins")
}

// BONUS 2

avgNets = (97 + 112 + 101) / 3
avgKnicks = (109 + 95 + 106) / 3

console.log(avgNets + " vs " + avgKnicks)

if ((avgNets >= 100) || (avgKnicks >= 100)) {
    if (avgNets === avgKnicks) {
        console.log("It's a draw!")
    } else if (avgNets > avgKnicks) {
        console.log("The Nets win!")
    } else {
        console.log("The Knicks win!")
    }
} else {
    console.log("No one wins")
}