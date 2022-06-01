//import controlP5.*;

import processing.serial.*;

import ddf.minim.*;

//Serial port;
//ControlP5 p1audio;

Minim minim;
AudioPlayer part1;
AudioSample part2;
AudioSample part3;
AudioSample part4;

void setup()
{
  size(512, 200, P3D);

  //p1audio = new ControlP5(this);
  //port = new Serial(this, "COM3", 115200);

  minim = new Minim(this);

  part1 = minim.loadFile("Oh Lydia..mp3");
  part2 = minim.loadSample("kick.mp3");
  part3 = minim.loadSample("snare.mp3");
  part4 = minim.loadSample("hihat.mp3");
}
void mousePressed()
{
  if ( part1.isPlaying() )
  {
    part1.pause();
  } else if ( part1.position() == part1.length() )
  {
    part1.rewind();
    part1.play();
  } else
  {
    part1.play();
  }
}

void keyPressed() {
  if (key == 'x') {
    part2.trigger();
  }
  if (key == 'z') {
    part3.trigger();
  }
  if (key == 'l') {
    part4.trigger();
  }
}
