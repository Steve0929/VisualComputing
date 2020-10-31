precision mediump float;

uniform float vpw = 600; // Width, in pixels
uniform float vph = 600; // Height, in pixels

uniform vec2 offset =  vec2(-1,1);
uniform vec2 pitch = vec2(100,100);

void main() {
  float lX = gl_FragCoord.x / vpw;
  float lY = gl_FragCoord.y / vph;

  float scaleFactor = 60000000.0;

  float offX = (scaleFactor * offset[0]) + gl_FragCoord.x;
  float offY = (scaleFactor * offset[1]) + (1.0 - gl_FragCoord.y);

  if (int(mod(offX, pitch[0])) < 12 || int(mod(offY, pitch[1])) < 12) {
    gl_FragColor = vec4(1.0, 1.0, 1.0, 1.5);
  } else {
    gl_FragColor = vec4(0, 0, 0, 1.0);
  }
}
