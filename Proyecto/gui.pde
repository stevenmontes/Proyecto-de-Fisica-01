/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void btnSeeStage1_click(GButton source, GEvent event) { //_CODE_:btnSeeStage1:922994:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  txtAirResistanceStage1.setText("");
  txtParatrooperWeightStage1.setText("");
  lblFormulaPart1Stage1.setText("");
  lblFormulaPart2Stage1.setText("");
  lblFormulaPart3Stage1.setText("");
  lblNetForceStage1.setText("Fuerza neta que actúa sobre ella: 0 N");
  lblParatrooperAcceleration.setText("Aceleración del paracaidista:0.00 m/s2");
  stageWindow1.setVisible(true);
} //_CODE_:btnSeeStage1:922994:

public void btnSeeStage3_click(GButton source, GEvent event) { //_CODE_:btnSeeStage3:590517:
  println("btnSeeStage3 - GButton >> GEvent." + event + " @ " + millis());
  lblResponseStage3.setText("");
  lblFormulaPart1Stage3.setText("");  
  lblFormulaPart2Stage3.setText("");
  txtBuildingHeightStage3.setText("");
  stageWindow3.setVisible(true);
} //_CODE_:btnSeeStage3:590517:

public void btnSeeStage2_click(GButton source, GEvent event) { //_CODE_:btnSeeStage2:394663:
  println("btnSeeStage2 - GButton >> GEvent." + event + " @ " + millis());
  txtAirResistanceStage2.setText("");
  txtParatrooperWeightStage2.setText("");
  lblFormulaPart1Stage2.setText("");
  lblFormulaPart2Stage2.setText("");
  lblFormulaPart3Stage2.setText("");
  lblNetForceStage2.setText("Fuerza neta que actúa sobre ella: 0 N");
  lblParatrooperStage2.setText("Aceleración del paracaidista:0.00 m/s2");
  stageWindow2.setVisible(true);
} //_CODE_:btnSeeStage2:394663:

public void btnSeeStage4_click(GButton source, GEvent event) { //_CODE_:btnSeeStage4:288078:
  println("btnSeeStage4 - GButton >> GEvent." + event + " @ " + millis());
  txtHeight.setText("");
  lblResponseStage4.setText("");
  lblFormulaPart1Stage4.setText("");
  lblFormulaPart2Stage4.setText("");
  stageWindow4.setVisible(true);
} //_CODE_:btnSeeStage4:288078:

synchronized public void stageWindow1_draw(PApplet appc, GWinData data) { //_CODE_:stageWindow1:419724:
  appc.background(230);
} //_CODE_:stageWindow1:419724:

public void txtAirResistanceStage1_change(GTextField source, GEvent event) { //_CODE_:txtAirResistanceStage1:224235:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:txtAirResistanceStage1:224235:

public void textfield1_change2(GTextField source, GEvent event) { //_CODE_:txtParatrooperWeightStage1:677814:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:txtParatrooperWeightStage1:677814:

public void btnCalculateStage1_click(GButton source, GEvent event) { //_CODE_:btnCalculateStage1:648969:
  println("btnCalculateStage1 - GButton >> GEvent." + event + " @ " + millis());
  float airResistance = float(txtAirResistanceStage1.getText());
  float paratrooperMass = float(txtParatrooperWeightStage1.getText());
  float gravity = 9.81;
  weigth = paratrooperMass * gravity;
  netForce = airResistance - weigth;
  paratrooperAcceleration = netForce / paratrooperMass;
  lblFormulaPart1Stage1.setText("W = mg => " + paratrooperMass + " * 9.81 m/s2 = " + nf(weigth, 0, 2) + " N");
  lblFormulaPart2Stage1.setText("ΣF_y = F_aire - W => " + airResistance + " - " + nf(weigth, 0, 2) + " = " + nf(netForce, 0, 2) + " N");
  lblFormulaPart3Stage1.setText("a_y = ΣF_y / m => " + nf(netForce, 0, 2) + "N" + " / " + paratrooperMass + " = " + nf(paratrooperAcceleration, 0, 2) + " m/s2");
  lblNetForceStage1.setText("Fuerza neta que actúa sobre ella: " + nf(netForce, 0, 2) + " N");
  lblParatrooperAcceleration.setText("Aceleración del paracaidista: " + nf(paratrooperAcceleration, 0, 2) + " m/s2");
} //_CODE_:btnCalculateStage1:648969:

synchronized public void stageWindow2_draw(PApplet appc, GWinData data) { //_CODE_:stageWindow2:453141:
  appc.background(230);
} //_CODE_:stageWindow2:453141:

public void txtParatrooperWStage2_change(GTextField source, GEvent event) { //_CODE_:txtParatrooperWeightStage2:505830:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:txtParatrooperWeightStage2:505830:

public void textfield2_change1(GTextField source, GEvent event) { //_CODE_:txtAirResistanceStage2:438832:
  println("textfield2 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:txtAirResistanceStage2:438832:

public void btnCalculateStage2_click(GButton source, GEvent event) { //_CODE_:btnCalculateStage2:541772:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  float airResistance = float(txtAirResistanceStage2.getText());
  float paratrooperMass = float(txtParatrooperWeightStage2.getText());
  float gravity = 0.62;
  weigth = paratrooperMass * gravity;
  netForce = airResistance - weigth;
  paratrooperAcceleration = netForce / paratrooperMass;
  lblFormulaPart1Stage2.setText("W = mg => " + paratrooperMass + " * 9.81 m/s2 = " + nf(weigth, 0, 2) + " N");
  lblFormulaPart2Stage2.setText("ΣF_y = F_aire - W => " + airResistance + " - " + nf(weigth, 0, 2) + " = " + nf(netForce, 0, 2) + " N");
  lblFormulaPart3Stage2.setText("a_y = ΣF_y / m => " + nf(netForce, 0, 2) + "N" + " / " + paratrooperMass + " = " + nf(paratrooperAcceleration, 0, 2) + " m/s2");
  lblNetForceStage2.setText("Fuerza neta que actúa sobre ella: " + nf(netForce, 0, 2) + " N");
  lblParatrooperStage2.setText("Aceleración del paracaidista: " + nf(paratrooperAcceleration, 0, 2) + " m/s2");
} //_CODE_:btnCalculateStage2:541772:

synchronized public void stageWindow3_draw(PApplet appc, GWinData data) { //_CODE_:stageWindow3:375819:
  appc.background(230);
} //_CODE_:stageWindow3:375819:

public void txtBuildingHeight3_change3(GTextField source, GEvent event) { //_CODE_:txtBuildingHeightStage3:631003:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:txtBuildingHeightStage3:631003:

public void btnCalculateStage3_click(GButton source, GEvent event) { //_CODE_:btnCalculateStage3:267529:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  float buildingHeight = float(txtBuildingHeightStage3.getText());
  float time;
  float velocity;
  
  if(buildingHeight >= 20 && buildingHeight <= 850){
    time = sqrt((2 * -buildingHeight)/(-9.81));
    velocity = -9.81 * time;
    lblResponseStage3.setText("El tiempo es " + nf(time, 0, 2) + "s," + " y la velocidad final es " + nf(velocity, 0, 2) + "m/s.");
    lblFormulaPart1Stage3.setText("t = √(2·y)/a => t = √(2·-"+ buildingHeight + "m)/"+ "-9.81" +"m/s2 = " + nf(time, 0, 2) + "s.");  
    lblFormulaPart2Stage3.setText("v = a · t  => v = "+ "-9.81" + " · " + time + "s = " + nf(velocity, 0, 2)  + "m/s.");
  } else {
    lblResponseStage3.setText("Error, la altura debe estar dentro del rango indicado");
  }
} //_CODE_:btnCalculateStage3:267529:

synchronized public void stageWindow4_draw(PApplet appc, GWinData data) { //_CODE_:stageWindow4:563463:
  appc.background(230);
} //_CODE_:stageWindow4:563463:

public void textfield1_change3(GTextField source, GEvent event) { //_CODE_:txtHeight:638699:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:txtHeight:638699:

public void btnCalculateStage4_click(GButton source, GEvent event) { //_CODE_:btnCalculateStage4:544766:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  float gravity = -24.79;
  float time = 0;
  float finalVelocity = 0;
  float height = float(txtHeight.getText());
  
  if(height >= 5 && height <= 900){
    time = sqrt((2 * -height)/gravity);
    finalVelocity = gravity * time;
    lblResponseStage4.setText("El tiempo es " + nf(time, 0, 2) + "s y la velocidad final es " + nf(finalVelocity, 0, 2) + "m/s.");
    lblFormulaPart1Stage4.setText("t = √(2·y)/a => t = √(2·-" + height + "m)/"+gravity+"m/s2 = " + nf(time, 0, 2) + "s.");
    lblFormulaPart2Stage4.setText("v = a · t  => v = " + gravity + " · " + time + "s = " + nf(finalVelocity, 0, 2)  + "m/s.");
  } else {
    lblResponseStage4.setText("Error, la altura debe estar dentro del rango indicado");
  }
} //_CODE_:btnCalculateStage4:544766:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  btnSeeStage1 = new GButton(this, 134, 96, 200, 30);
  btnSeeStage1.setText("Ver escenario número 1");
  btnSeeStage1.addEventHandler(this, "btnSeeStage1_click");
  btnSeeStage3 = new GButton(this, 134, 204, 200, 30);
  btnSeeStage3.setText("Ver escenario número 3");
  btnSeeStage3.addEventHandler(this, "btnSeeStage3_click");
  btnSeeStage2 = new GButton(this, 134, 152, 200, 30);
  btnSeeStage2.setText("Ver escenario número 2");
  btnSeeStage2.addEventHandler(this, "btnSeeStage2_click");
  btnSeeStage4 = new GButton(this, 133, 258, 200, 30);
  btnSeeStage4.setText("Ver escenario número 4");
  btnSeeStage4.addEventHandler(this, "btnSeeStage4_click");
  stageWindow1 = GWindow.getWindow(this, "Escenario 1", 0, 0, 1150, 500, JAVA2D);
  stageWindow1.noLoop();
  stageWindow1.setActionOnClose(G4P.CLOSE_WINDOW);
  stageWindow1.addDrawHandler(this, "stageWindow1_draw");
  lblTitleStage1 = new GLabel(stageWindow1, 0, 44, 1150, 20);
  lblTitleStage1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblTitleStage1.setText("Escenario 1");
  lblTitleStage1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  lblTitleStage1.setOpaque(false);
  lblStatementStage1 = new GLabel(stageWindow1, 0, 71, 1150, 20);
  lblStatementStage1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblStatementStage1.setText("Caída libre desde un avión en paracaídas, en donde se tomará en cuenta la resistencia del aire. (Tierra: 9,81 m/s²)");
  lblStatementStage1.setOpaque(false);
  lblAirResistanceStage1 = new GLabel(stageWindow1, 90, 178, 394, 20);
  lblAirResistanceStage1.setText("Resistencia del aire");
  lblAirResistanceStage1.setOpaque(false);
  txtAirResistanceStage1 = new GTextField(stageWindow1, 90, 214, 394, 30, G4P.SCROLLBARS_NONE);
  txtAirResistanceStage1.setPromptText("Ingrese la resistencia del aire");
  txtAirResistanceStage1.setOpaque(true);
  txtAirResistanceStage1.addEventHandler(this, "txtAirResistanceStage1_change");
  txtParatrooperWeightStage1 = new GTextField(stageWindow1, 624, 214, 394, 30, G4P.SCROLLBARS_NONE);
  txtParatrooperWeightStage1.setPromptText("Ingrese el peso del paracaidista");
  txtParatrooperWeightStage1.setOpaque(true);
  txtParatrooperWeightStage1.addEventHandler(this, "textfield1_change2");
  lblParatrooperWeightStage1 = new GLabel(stageWindow1, 624, 178, 394, 20);
  lblParatrooperWeightStage1.setText("Peso del paracaidista");
  lblParatrooperWeightStage1.setOpaque(false);
  lblNetForceStage1 = new GLabel(stageWindow1, 91, 272, 394, 20);
  lblNetForceStage1.setText("Fuerza neta que actúa sobre ella: 0 N");
  lblNetForceStage1.setOpaque(false);
  lblParatrooperAcceleration = new GLabel(stageWindow1, 625, 272, 393, 20);
  lblParatrooperAcceleration.setText("Aceleración del paracaidista:0.00 m/s2");
  lblParatrooperAcceleration.setOpaque(false);
  lblFormulaStage1 = new GLabel(stageWindow1, -2, 382, 1150, 20);
  lblFormulaStage1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblFormulaStage1.setText("Formulas");
  lblFormulaStage1.setOpaque(false);
  btnCalculateStage1 = new GButton(stageWindow1, 390, 318, 367, 44);
  btnCalculateStage1.setText("Calcular");
  btnCalculateStage1.addEventHandler(this, "btnCalculateStage1_click");
  lblFormulaPart1Stage1 = new GLabel(stageWindow1, 286, 414, 762, 20);
  lblFormulaPart1Stage1.setTextAlign(GAlign.LEFT, GAlign.LEFT);
  lblFormulaPart1Stage1.setText("Formula Parte 1");
  lblFormulaPart1Stage1.setOpaque(false);
  lblFormulaPart2Stage1 = new GLabel(stageWindow1, 285, 442, 762, 20);
  lblFormulaPart2Stage1.setText("Formula parte 2");
  lblFormulaPart2Stage1.setOpaque(false);
  lblFormulaPart3Stage1 = new GLabel(stageWindow1, 285, 469, 761, 20);
  lblFormulaPart3Stage1.setText("Formula Parte 3");
  lblFormulaPart3Stage1.setOpaque(false);
  stageWindow2 = GWindow.getWindow(this, "Escenario 2", 0, 0, 1150, 500, JAVA2D);
  stageWindow2.noLoop();
  stageWindow2.setActionOnClose(G4P.CLOSE_WINDOW);
  stageWindow2.addDrawHandler(this, "stageWindow2_draw");
  lblFormulaPart1Stage2 = new GLabel(stageWindow2, 0, 413, 1150, 20);
  lblFormulaPart1Stage2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblFormulaPart1Stage2.setOpaque(false);
  lblFormulaPart2Stage2 = new GLabel(stageWindow2, -2, 442, 1150, 20);
  lblFormulaPart2Stage2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblFormulaPart2Stage2.setOpaque(false);
  lblFormulaPart3Stage2 = new GLabel(stageWindow2, -1, 472, 1150, 18);
  lblFormulaPart3Stage2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblFormulaPart3Stage2.setOpaque(false);
  label14 = new GLabel(stageWindow2, 0, 74, 1150, 20);
  label14.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label14.setText("Caída libre desde un avión en paracaídas, en donde se tomará en cuenta la resistencia del aire. (Plutón: 0,62 m/s²)");
  label14.setOpaque(false);
  label15 = new GLabel(stageWindow2, 0, 45, 1150, 20);
  label15.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label15.setText("Escenario 2");
  label15.setOpaque(false);
  label16 = new GLabel(stageWindow2, 0, 368, 1150, 20);
  label16.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label16.setText("Fórmulas utilizadas:");
  label16.setOpaque(false);
  lblParatrooperStage2 = new GLabel(stageWindow2, 667, 246, 390, 20);
  lblParatrooperStage2.setText("Aceleración del paracaidista:0.00 m/s2");
  lblParatrooperStage2.setOpaque(false);
  lblNetForceStage2 = new GLabel(stageWindow2, 109, 247, 393, 20);
  lblNetForceStage2.setText("Fuerza neta que actúa sobre ella: 0 N");
  lblNetForceStage2.setOpaque(false);
  label19 = new GLabel(stageWindow2, 665, 158, 395, 20);
  label19.setText("Peso del paracaidista");
  label19.setOpaque(false);
  label20 = new GLabel(stageWindow2, 108, 157, 394, 20);
  label20.setText("Resistencia del aire");
  label20.setOpaque(false);
  txtParatrooperWeightStage2 = new GTextField(stageWindow2, 665, 196, 394, 30, G4P.SCROLLBARS_NONE);
  txtParatrooperWeightStage2.setOpaque(true);
  txtParatrooperWeightStage2.addEventHandler(this, "txtParatrooperWStage2_change");
  txtAirResistanceStage2 = new GTextField(stageWindow2, 108, 196, 394, 30, G4P.SCROLLBARS_NONE);
  txtAirResistanceStage2.setOpaque(true);
  txtAirResistanceStage2.addEventHandler(this, "textfield2_change1");
  btnCalculateStage2 = new GButton(stageWindow2, 389, 300, 367, 44);
  btnCalculateStage2.setText("Calcular");
  btnCalculateStage2.addEventHandler(this, "btnCalculateStage2_click");
  stageWindow3 = GWindow.getWindow(this, "Escenario 3", 0, 0, 1150, 500, JAVA2D);
  stageWindow3.noLoop();
  stageWindow3.setActionOnClose(G4P.CLOSE_WINDOW);
  stageWindow3.addDrawHandler(this, "stageWindow3_draw");
  txtBuildingHeightStage3 = new GTextField(stageWindow3, 462, 216, 247, 30, G4P.SCROLLBARS_NONE);
  txtBuildingHeightStage3.setOpaque(true);
  txtBuildingHeightStage3.addEventHandler(this, "txtBuildingHeight3_change3");
  label1 = new GLabel(stageWindow3, 0, 35, 1150, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("Escenario 3");
  label1.setOpaque(false);
  label2 = new GLabel(stageWindow3, 0, 68, 1150, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("Una bola cae de un edificio, con una gravedad de 9.81 (Gravedad de la tierra).");
  label2.setOpaque(false);
  label3 = new GLabel(stageWindow3, 0, 91, 1150, 20);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("Ingrese la altura del edificio que se encuentre dentro del rango de 20 metros a 850 metros.");
  label3.setOpaque(false);
  lblBuildingHeight = new GLabel(stageWindow3, 0, 170, 1150, 20);
  lblBuildingHeight.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblBuildingHeight.setText("Altura del edificio");
  lblBuildingHeight.setOpaque(false);
  lblResponseStage3 = new GLabel(stageWindow3, 0, 327, 1150, 20);
  lblResponseStage3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblResponseStage3.setOpaque(false);
  label4 = new GLabel(stageWindow3, 0, 383, 1150, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("Fórmulas utilizadas:");
  label4.setOpaque(false);
  lblFormulaPart2Stage3 = new GLabel(stageWindow3, 0, 450, 1150, 20);
  lblFormulaPart2Stage3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblFormulaPart2Stage3.setOpaque(false);
  lblFormulaPart1Stage3 = new GLabel(stageWindow3, 0, 417, 1150, 20);
  lblFormulaPart1Stage3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblFormulaPart1Stage3.setOpaque(false);
  btnCalculateStage3 = new GButton(stageWindow3, 463, 274, 248, 31);
  btnCalculateStage3.setText("Calcular");
  btnCalculateStage3.addEventHandler(this, "btnCalculateStage3_click");
  stageWindow4 = GWindow.getWindow(this, "Escenario 4", 0, 0, 1150, 500, JAVA2D);
  stageWindow4.noLoop();
  stageWindow4.setActionOnClose(G4P.CLOSE_WINDOW);
  stageWindow4.addDrawHandler(this, "stageWindow4_draw");
  label5 = new GLabel(stageWindow4, 0, 35, 1150, 20);
  label5.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label5.setText("Escenario 4");
  label5.setOpaque(false);
  label6 = new GLabel(stageWindow4, 0, 70, 1150, 20);
  label6.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label6.setText("Un piano cae desde un peñasco, con una gravedad de 24,79m/s2 (Gravedad de Júpiter).");
  label6.setOpaque(false);
  label7 = new GLabel(stageWindow4, 0, 98, 1150, 20);
  label7.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label7.setText("Se asume que el piano parte del reposo.");
  label7.setOpaque(false);
  label8 = new GLabel(stageWindow4, -2, 178, 1150, 20);
  label8.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label8.setText("Altura");
  label8.setOpaque(false);
  txtHeight = new GTextField(stageWindow4, 461, 226, 234, 30, G4P.SCROLLBARS_NONE);
  txtHeight.setOpaque(true);
  txtHeight.addEventHandler(this, "textfield1_change3");
  lblFormulaPart1Stage4 = new GLabel(stageWindow4, -1, 431, 1150, 20);
  lblFormulaPart1Stage4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblFormulaPart1Stage4.setOpaque(false);
  label10 = new GLabel(stageWindow4, 0, 392, 1150, 20);
  label10.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label10.setText("Fórmulas utilizadas:");
  label10.setOpaque(false);
  lblFormulaPart2Stage4 = new GLabel(stageWindow4, -1, 460, 1150, 20);
  lblFormulaPart2Stage4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblFormulaPart2Stage4.setOpaque(false);
  btnCalculateStage4 = new GButton(stageWindow4, 459, 276, 239, 30);
  btnCalculateStage4.setText("Calcular");
  btnCalculateStage4.addEventHandler(this, "btnCalculateStage4_click");
  label12 = new GLabel(stageWindow4, -5, 124, 1150, 20);
  label12.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label12.setText("La altura no puede ser mayor a 900m ni menor a 5m.");
  label12.setOpaque(false);
  lblResponseStage4 = new GLabel(stageWindow4, 0, 336, 1150, 20);
  lblResponseStage4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lblResponseStage4.setOpaque(false);
  stageWindow1.loop();
  stageWindow2.loop();
  stageWindow3.loop();
  stageWindow4.loop();
}

// Variable declarations 
// autogenerated do not edit
GButton btnSeeStage1; 
GButton btnSeeStage3; 
GButton btnSeeStage2; 
GButton btnSeeStage4; 
GWindow stageWindow1;
GLabel lblTitleStage1; 
GLabel lblStatementStage1; 
GLabel lblAirResistanceStage1; 
GTextField txtAirResistanceStage1; 
GTextField txtParatrooperWeightStage1; 
GLabel lblParatrooperWeightStage1; 
GLabel lblNetForceStage1; 
GLabel lblParatrooperAcceleration; 
GLabel lblFormulaStage1; 
GButton btnCalculateStage1; 
GLabel lblFormulaPart1Stage1; 
GLabel lblFormulaPart2Stage1; 
GLabel lblFormulaPart3Stage1; 
GWindow stageWindow2;
GLabel lblFormulaPart1Stage2; 
GLabel lblFormulaPart2Stage2; 
GLabel lblFormulaPart3Stage2; 
GLabel label14; 
GLabel label15; 
GLabel label16; 
GLabel lblParatrooperStage2; 
GLabel lblNetForceStage2; 
GLabel label19; 
GLabel label20; 
GTextField txtParatrooperWeightStage2; 
GTextField txtAirResistanceStage2; 
GButton btnCalculateStage2; 
GWindow stageWindow3;
GTextField txtBuildingHeightStage3; 
GLabel label1; 
GLabel label2; 
GLabel label3; 
GLabel lblBuildingHeight; 
GLabel lblResponseStage3; 
GLabel label4; 
GLabel lblFormulaPart2Stage3; 
GLabel lblFormulaPart1Stage3; 
GButton btnCalculateStage3; 
GWindow stageWindow4;
GLabel label5; 
GLabel label6; 
GLabel label7; 
GLabel label8; 
GTextField txtHeight; 
GLabel lblFormulaPart1Stage4; 
GLabel label10; 
GLabel lblFormulaPart2Stage4; 
GButton btnCalculateStage4; 
GLabel label12; 
GLabel lblResponseStage4; 
