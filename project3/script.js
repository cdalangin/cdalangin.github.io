let secretNum = Math.floor(Math.random() * 100)

let score = 10
let highscore = 0
let checkbtn = document.getElementById("checkbtn")
let message = "Let's start guessing..."
let guess = document.getElementById("guess")

const icons = [`<img src="./img/cheering.png" alt="cheering" style="height: 30px" />`,
    `<img src="./img/graduated.png" alt="graduated" style="height: 30px" />`,
    `<img src="./img/laughing.png" alt="laughing" style="height: 30px" />`,
    `<img src="./img/sad.png" alt="sad" style="height: 30px" />`,
    `<img src="./img/confused.png" alt="confused" style="height: 30px" />`,
]


const changeMsg = (icon, msg) => {
    document.getElementById("message").innerHTML = `${icon + " " + msg}`
}

const minusScore = () => {
    score -= 1
    document.getElementById("score").innerHTML = score
}

const startGame = () => {
    score = 10
    secretNum = Math.floor(Math.random() * 100)
    document.getElementById("secretnum").innerHTML = `<img src="./img/thinking.png" alt="thinking" style="height: 50px" />`
    document.querySelector('body').style.background = "linear-gradient(90deg, #FFABE1, #A685E2)"
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
        changeMsg(icons[3], "You lost!")
        checkbtn.removeEventListener('click', guesses)

    }


    if (guess.value === "") {
        changeMsg(icons[4], "Please enter a valid value")
    } else if (guess.value < secretNum) {
        console.log(`${guess.value} is less than ${secretNum}`)
        changeMsg(icons[3], "Guess is too low!")
        minusScore()
    } else if (guess.value > secretNum) {
        changeMsg(icons[2], "Guess is too high!")
        console.log(`${guess.value} is greater than than ${secretNum}`)
        minusScore()
    } else if (guess.value == secretNum) {
        console.log(`${guess.value} is equal to ${secretNum}`)
        document.getElementById("secretnum").innerHTML = secretNum
        changeMsg(icons[0], "Correct!!")
        document.querySelector('body').style.background = "linear-gradient(90deg, #ACFFAD, #71EFA3)"
        checkbtn.classList.add('disabled')
        guess.disabled = true

        if (score > highscore) {
            highscore = score
            document.getElementById("highscore").innerHTML = highscore
            checkbtn.removeEventListener('click', guesses)
        }

    } else {
        changeMsg(icons[4], "Please enter a valid value")
    }

}

const game = () => {
    document.getElementById("message").innerHTML = `${icons[1]}  ${message}`
    document.getElementById("score").innerHTML = 10
    document.getElementById("highscore").innerHTML = highscore

    checkbtn.addEventListener('click', guesses)
}
