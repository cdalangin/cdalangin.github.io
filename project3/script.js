let secretNum = Math.floor(Math.random() * 100)

let score = 10
let highscore = 0
let checkbtn = document.getElementById("checkbtn")
let message = "Let's start guessing..."
let guess = document.getElementById("guess")


const changeMsg = (msg) => {
    document.getElementById("message").innerHTML = msg
}

const minusScore = () => {
    score -= 1
    document.getElementById("score").innerHTML = score
}

const startGame = () => {
    score = 10
    secretNum = Math.floor(Math.random() * 100)
    document.getElementById("secretnum").innerHTML = "?"
    document.querySelector('body').style.background = "#A685E2"
    checkbtn.classList.remove('disabled')
    guess.value = ""
    guess.disabled = false
    game()
}

const guesses = () => {
    console.log("This is the score:" + score)


    if (score <= 1) {

        checkbtn.classList.add('disabled')
        guess.disabled = true
        changeMsg("You lost!")
        checkbtn.removeEventListener('click', guesses)

    }


    if (guess.value === "") {
        changeMsg("Please enter a valid value")
    } else if (guess.value < secretNum) {
        console.log(`${guess.value} is less than ${secretNum}`)
        changeMsg("Guess is too low!")
        minusScore()
    } else if (guess.value > secretNum) {
        changeMsg("Guess is too high!")
        console.log(`${guess.value} is greater than than ${secretNum}`)
        minusScore()
    } else if (guess.value == secretNum) {
        console.log(`${guess.value} is equal to ${secretNum}`)
        document.getElementById("secretnum").innerHTML = secretNum
        changeMsg("Correct!!")
        document.querySelector('body').style.background = "#66DE93"
        checkbtn.classList.add('disabled')
        guess.disabled = true

        if (score > highscore) {
            highscore = score
            document.getElementById("highscore").innerHTML = highscore
            checkbtn.removeEventListener('click', guesses)
        }

    } else {
        changeMsg("Please enter a valid value")
    }

}

const game = () => {
    document.getElementById("message").innerHTML = message
    document.getElementById("score").innerHTML = 10
    document.getElementById("highscore").innerHTML = highscore

    checkbtn.addEventListener('click', guesses)
}
