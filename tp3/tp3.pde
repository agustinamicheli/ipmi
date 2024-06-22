//micheli agustina
//comision 1
//https://youtu.be/QQ0q2CXW-rk

PImage foto;
int cant;
float tam;
float tamRombo;
float colorCuadrado;
int original,efectoActivo;

void setup(){
  size(800,400);
  background (255);
  cant = 4;
  foto = loadImage("opart.jpeg");
  tam = width/2/cant;
  tamRombo = width/2/cant;
  original=0;
  efectoActivo=0;
}


void draw(){
  image(foto,0,0,400,400);
 
  if(efectoActivo==1){
  //movimineto de los rombos
    tamRombo = map(mouseX, 0, width, 0, 100);
  }
  
  for (int i=0; i<cant; i++){
    for(int j=0; j<cant; j++){
      
      //cuadrados
      cuadrado(i,j);
      //rombos
      rombos (i, j);
    }
  }
}

 //cuadrados
void cuadrado(int i, int j) {
  if(esPar(i+j)){
    if(original==0){
      fill(255);
    }else{
      fill(0);
    }
   } else if(original==0){     
      fill(0);
   } else{
      fill(255);
   }
   rectMode(CORNER);
   rect(i*tam+400, j*tam,tam,tam);
 }

 // rombos
 void rombos (int x, int y) {
   pushMatrix();
   if (esPar(x+y)){
      if(original==0){
      fill(0);
    }else{
      fill(255);
    }
   } else if(original==0){     
      fill(255);
   } else{
      fill(0);
   }
   translate(x*tam+400+tam/2, y*tam+tam/2);
   rotate(radians(45));
   rectMode(CENTER);
   rect(0,0,tamRombo-30,tamRombo-30);
   popMatrix();
 }
 
 
boolean esPar(int num){
  return num % 2 ==0;
}

//iniciar e invertir colores
void mousePressed(){
  if(original==0){
    original=1;
    efectoActivo=1;
  }else{
    original=0;
  }
}

//reiniciar 
void keyPressed(){
    original=0;
    efectoActivo=0;
    tamRombo = width/2/cant;
}
