//micheli agustina
//tp2 comision 1

PImage imagen1, imagen2, imagen3;
String texto1, texto2, texto3, texto4, estado;
int segundos, movimiento1, movimiento2, py;
PFont tipografia;
float tono;

void setup(){
  size(640,480);
  //imagenes de las pantallas
  imagen1 = loadImage("imagen1.jpeg");
  imagen2 = loadImage("imagen2.jpeg");
  imagen3 = loadImage("imagen3.jpg");
  
  //tipografia de los textos
  tipografia = loadFont("ArialNarrow-BoldItalic-40.vlw");
  textFont(tipografia);
  
  //textos 
  texto1 = "HARRY POTTER";
  texto2 = "Personajes principales:\n Harry Potter\n Ron Weasley\n Hermione Granger\n Albus Dumbledore\n Minerva McGonagall\n Severus Snape\n Draco Malfoy\n Sirius Black\n Bellatrix Lestrange\n Voldemort";
  texto4 = "reiniciar";
  texto3 = "Escritora\nJoanne Rowling \nmás conocida como \nJ.K. Rowling";
  
  estado = "primera";
  segundos = 0;
  movimiento1=395;
  movimiento2=0;
  py=height;
}

void draw (){
//imagen 1 
  if (estado.equals("primera")){
    image(imagen1,0,0,width,height);
     float tono = map(py, height, 100, 0, 255);
      fill(0, 0, 255, tono); 
        if (py>100) {
    py --;
        }
    textSize(80);
    text(texto1,81,395);
    
//imagen 2
  } else if (estado.equals("segunda")){
           image(imagen2,0,0,width,height);
           fill(0,0,255);
           textSize(35);
           text(texto2,300,movimiento1);
           movimiento1--;

           
 //imagen3
  }else if (estado.equals("tercera")){
            image(imagen3,0,0,width,height);
            fill(0,0,255);
            textSize(40);
            text(texto3,movimiento2,300);
             
            if(movimiento2<130){
              movimiento2++;
            }else {
               //boton
              fill(0,0,255);
              rect(500,8,150,80);
              
              //texto del boton
              textSize(30);
              fill(255);
              text(texto4,530,60);
            }
  }
  
  //transiciones
  if(frameCount%60 ==0){
    segundos = segundos +1;
  }
  if (segundos < 6){
    estado = "primera";
  }else if (segundos>=6 && segundos< 20){
    estado = "segunda";
  } else if (segundos >=20){
    estado="tercera"; 
  }

}
//botón para reiniciar las pantallas   
void mousePressed(){
  fill(255,0,0);
  if(estado.equals("tercera")){
    if(mouseX>500 && mouseX<500+150
      && mouseY >8 && mouseY <8+80){ 
        estado="primera";
        segundos=0;
        movimiento1=395;
        movimiento2=0;
        py=height;
    }
  } 
}
