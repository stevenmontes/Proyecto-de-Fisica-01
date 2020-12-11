// Need G4P library
import g4p_controls.*;
// You can remove the PeasyCam import if you are not using
// the GViewPeasyCam control or the PeasyCam library.

int result = 0;
Float weigth = 0.0;
Float netForce = 0.0;
Float paratrooperAcceleration = 0.0;

public void setup(){
  size(480, 320, JAVA2D);
  createGUI();
  customGUI();
  // Place your setup code here
  
}

public void draw(){
  background(230);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){
  stageWindow1.setVisible(false);
  stageWindow2.setVisible(false);
  stageWindow3.setVisible(false);
  stageWindow4.setVisible(false);
}
