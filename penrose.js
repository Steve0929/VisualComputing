var anglex = 42
var angley = -36.65
var anglez = 0
function setup() {
  createCanvas(500, 400, WEBGL);
  angleMode(DEGREES);
  currCamera = createCamera(); 
  currCamera.ortho();
}

function mouseClicked() {
  
}

function draw() {
  
  orbitControl();
  background(215);
  normalMaterial();
  ambientLight("#FF7F15");
  specularMaterial(220);
  
  let locX = height / 2;
  let locY = width / 2;
  pointLight(220, 220, 220, locX, locY, 150);
  //emissiveMaterial("#FF7F15");
  normalMaterial();
  const numblocks = 7;
  
  //rotate(angle);
  rotateY(angley);
  rotateX(anglex);
  rotateZ(anglez);
  //angle++;
  //console.log(angle)
  rectMode(CENTER);
  
  for (let z = 0; z <= numblocks; z++) {
       translate(20, 0, 0);
       push();
       box(15, 15, 15);
       pop();
       
  }
  
  for (let y = 0; y < numblocks; y++) {
       translate(0, 20, 0);
       push();
       box(15, 15, 15);
       pop();
       
  }
  
  for (let x = 0; x < numblocks; x++) {
       translate(0, 0, 20);
       push();
       box(15, 15, 15);
       pop();
      
  }
}
