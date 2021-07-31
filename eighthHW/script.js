// Jason wants to build a very simple tip calculator for whenever
// he goes eating in a restaurant.In his country, it's usual to tip 15% 
// if the bill value is between 50 and 300. If the value is different, the tip is 20%.

// 1. Your task is to calculate the tip, depending on the bill value.Create a variable 
// called 'tip' for this.It's not allowed to use an if/else statement  (If it's easier 
// for you, you can start with an if/else statement, and then try to convert it to a ternary operator!)

// 2. Print a string to the console containing the bill value, the tip, and the 
// final value(bill + tip).Example: 'The bill was 275, the tip was 41.25, and the total value 316.25'

//  TEST DATA: Test for bill values 275, 28 and 430

const bill = [275, 28, 430]

console.log("PART A")

for (i in bill) {
    const tip = bill[i] > 50 && bill[i] < 300 ? bill[i] * .15 : bill[i] * .20;
    const total = bill[i] + tip
    console.log(`The bill was ${bill[i]}, the tip was ${tip}, and the total was ${total}.`)
}

// Create a function called celsiusToFahrenheit:
// •	Store a celsius temperature into a variable.
// •	Convert it to fahrenheit and output "NN°C is NN°F".
// Create a function called fahrenheitToCelsius:
// •	Now store a fahrenheit temperature into a variable.
// •	Convert it to celsius and output "NN°F is NN°C."

const fahrenheitToCelsius = (tempF) => {
    return (tempF - 32) * (5 / 9)
}

const celsiusToFahrenheit = (tempC) => {
    return (tempC * (9 / 5)) + 32
}

console.log("PART B")

let temp = 32
console.log(`${temp}°F is ${fahrenheitToCelsius(temp)}°C`)

temp = 100
console.log(`${temp}°C is ${celsiusToFahrenheit(temp)}°F`)

// ---
// Back to the two teams game! There is a new discipline, which works differently.
// Each team competes 3 times, and then the average of the 3 scores is calculated 
// (so one average score per team).  A team ONLY wins if it has at least DOUBLE 
// the average score of the other team. Otherwise, no team wins!
// ----------
// 1. Create an arrow function 'calcAverage' to calculate the average of 3 scores
// 2. Use the function to calculate the average for both teams
// 3. Create a function 'checkWinner' that takes the average score of each team as 
//      parameters ('avgNets' and 'avgKnicks'), and then logs the winner to the console, together 
//      with the victory points, according to the rule above. Example: "Knicks win (30 vs. 13)".
// 4. Use the 'checkWinner' function to determine the winner for both DATA 1 and DATA 2.
// 5. Ignore draws this time.

const netsA = [44, 23, 71]
const knicksA = [65, 54, 49]

const netsB = [85, 54, 41]
const knicksB = [23, 34, 27]

const calcAverage = (scores) => {
    let total = 0
    for (i in scores) {
        total += scores[i]
    }

    return total / scores.length
}

console.log("PART C")

const avgNetsA = calcAverage(netsA)
const avgKnicksA = calcAverage(knicksA)
const avgNetsB = calcAverage(netsB)
const avgKnicksB = calcAverage(knicksB)

const checkWinner = (avgNets, avgKnicks) => {
    if (avgNets > (avgKnicks * 2)) {
        console.log(`The Nets win! (${avgNets} vs ${avgKnicks})`)
    } else if (avgKnicks > (avgNets * 2)) {
        console.log(`The Nets win! (${avgKnicks} vs ${avgNets})`)
    } else {
        console.log("No one wins.")
    }
}

checkWinner(avgNetsA, avgKnicksA)
checkWinner(avgNetsB, avgKnicksB)


// Lucas is still building his tip calculator, using the same rules as before: 
// Tip 15% of the bill if the bill value is between 50 and 300, and if the value is different, the tip is 20%.

// 1. Write a function 'calcTip' that takes any bill value as an input and returns the 
// corresponding tip, calculated based on the rules above (you can check out the code from 
//     first tip calculator challenge if you need to). Use the function type you like the most. 
//     Test the function using a bill value of 100.
// 2. And now let's use arrays! So create an array 'bills' containing the test data below.
// 3. Create an array 'tips' containing the tip value for each bill, calculated from the function you created before.
// 4. BONUS: Create an array 'total' containing the total values, so the bill + tip.

// TEST DATA: 125, 555 and 44
const bills = [125, 555, 44]

console.log("PART D")

const calcTip = (items) => {
    const allTips = []

    for (x in items) {
        const tip = items[x] > 50 && items[x] < 300 ? items[x] * .15 : items[x] * .20;

        allTips.push(tip)
    }

    return allTips
}

const tips = calcTip(bills)
const total = []

for (i in bills) {
    total.push(bills[i] + tips[i])
}
console.log("Bills: " + bills)
console.log("Tips: " + tips)
console.log("Totals: " + total)