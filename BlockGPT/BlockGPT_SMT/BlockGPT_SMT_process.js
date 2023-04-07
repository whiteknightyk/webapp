// Set up canvas
const canvas = document.getElementById("game-canvas");
const ctx = canvas.getContext("2d");

// Set up game variables
let ballX = canvas.width / 2;
let ballY = canvas.height - 30;
let ballRadius = 2;
let ballDx = 2;
let ballDy = -2;
let paddleWidth = 25;
let paddleHeight = 5;
let paddleX = (canvas.width - paddleWidth) / 2;
let rightPressed = false;
let leftPressed = false;
let brickRowCount = 5;
let brickColumnCount = 12;
let brickWidth = 20;
let brickHeight = 6;
let brickPadding = 2;
let brickOffsetTop = 30;
let brickOffsetLeft = 20;
let score = 0;

let bricks = [];
for (let c = 0; c < brickColumnCount; c++) {
  bricks[c] = [];
  for (let r = 0; r < brickRowCount; r++) {
    bricks[c][r] = { x: 0, y: 0, status: 1 };
  }
}

// Draw ball
function drawBall() {
  ctx.beginPath();
  ctx.arc(ballX, ballY, ballRadius, 0, Math.PI * 2);
  ctx.fillStyle = "#000000";
  ctx.fill();
  ctx.closePath();
}

// Draw paddle
function drawPaddle() {
  ctx.beginPath();
  ctx.rect(paddleX, canvas.height - paddleHeight, paddleWidth, paddleHeight);
  ctx.fillStyle = "#000000";
  ctx.fill();
  ctx.closePath();
}

// Draw bricks
function drawBricks() {
  for (let c = 0; c < brickColumnCount; c++) {
    for (let r = 0; r < brickRowCount; r++) {
      if (bricks[c][r].status == 1) {
        let brickX = c * (brickWidth + brickPadding) + brickOffsetLeft;
        let brickY = r * (brickHeight + brickPadding) + brickOffsetTop;
        bricks[c][r].x = brickX;
        bricks[c][r].y = brickY;
        ctx.beginPath();
        ctx.rect(brickX, brickY, brickWidth, brickHeight);
        ctx.fillStyle = "#000000";
        ctx.fill();
        ctx.closePath();
      }
    }
  }
}

// Detect collision with bricks
function collisionDetection() {
  for (let c = 0; c < brickColumnCount; c++) {
    for (let r = 0; r < brickRowCount; r++) {
      let b = bricks[c][r];
      if (b.status == 1) {
        if (
          ballX > b.x &&
          ballX < b.x + brickWidth &&
          ballY > b.y &&
          ballY < b.y + brickHeight
        ) {
          ballDy = -ballDy;
          b.status = 0;
          score++;
          if (score == brickRowCount * brickColumnCount) {
            alert("You win!");
            document.location.reload();
          }
        }
      }
    }
  }
}

// Draw score
function drawScore() {
  ctx.font = "16px Arial";
  ctx.fillStyle = "#000000";
  ctx.fillText("Score: " + score, 8, 20);
}

// Draw game
function draw() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  drawBricks();
  drawBall();
  drawPaddle();
  drawScore();
  collisionDetection();

  if (ballX + ballDx > canvas.width - ballRadius || ballX + ballDx < ballRadius) {
    ballDx = -ballDx;
  }
  if (ballY + ballDy < ballRadius) {
    ballDy = -ballDy;
  } else if (ballY + ballDy > canvas.height - ballRadius) {
    if (ballX > paddleX && ballX < paddleX + paddleWidth) {
      ballDy = -ballDy;
    } else {
      alert("Game over");
      document.location.reload();
      clearInterval(interval);
    }
  }

  if (rightPressed && paddleX < canvas.width - paddleWidth) {
    paddleX += 7;
  } else if (leftPressed && paddleX > 0) {
    paddleX -= 7;
  }

  ballX += ballDx;
  ballY += ballDy;
}

// Set up event listeners
document.addEventListener("touchstart", touchStartHandler, false);
document.addEventListener("touchmove", touchMoveHandler, false);

// Handle touch start events
function touchStartHandler(e) {
  e.preventDefault();
  let touchX = e.touches[0].pageX;
  if (touchX > canvas.width / 2) {
    rightPressed = true;
  } else {
    leftPressed = true;
  }
}

// Handle touch move events
function touchMoveHandler(e) {
  e.preventDefault();
  let touchX = e.touches[0].pageX;
  if (touchX > canvas.width / 2) {
    rightPressed = true;
    leftPressed = false;
  } else {
    leftPressed = true;
    rightPressed = false;
  }
}

// Start game
let interval = setInterval(draw, 10);
