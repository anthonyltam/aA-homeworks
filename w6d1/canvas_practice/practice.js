document.addEventListener("DOMContentLoaded", function(){
  const canvasEl = document.getElementById('mycanvas');
  canvasEl.width = 500;
  canvasEl.height = 500;

  const ctx = canvasEl.getContext('2d');
  ctx.fillStyle = 'orange';
  ctx.fillRect(0, 0, 500, 500);

  // CIRCLE CREATION
  ctx.beginPath();
  ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
  ctx.strokeStyle = "blue";
  ctx.lineWidth = 5;
  ctx.stroke();

  // FILL IN CIRCLE
  ctx.fillStyle = 'yellow';
  ctx.fill();

});
