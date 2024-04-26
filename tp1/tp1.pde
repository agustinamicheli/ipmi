//micheli agustina
//tp1 comision 1 

PImage foto;

void setup (){
size(800,400);
background (255);
foto = loadImage("fotoConejo.jpeg"); 

}

void draw(){
  println(mouseX);
  println(mouseY);
  
  image(foto,0,0,400,400);
  
 //orejas
 fill (255);          
  ellipse(494,110,70,170);//izquierda
  ellipse(602,110,70,170);//derecha
  
  fill(255,200,200);        
  ellipse(494,110,40,130);  // relleno de oreja izquierda 
  ellipse(602,110,40,130);  // relleno de oreja derecha
  
  //cabeza
  fill(255);
 ellipse(550,200,200,200);
 
 //nariz
 fill(255,200,200);
 circle(548,228,20);
noFill();
arc(535.5,251, 25, 25, 0, PI);//arco nariz izquierdo
arc(561,251, 25, 25, 0, PI);//arco narizderecho
line(548,238,548,275);//linea del medio
line(534,263,534,272);//diente izquierdo
line(534,272,548,275); //diente izquierdo
line(562,263,562,272);//diente derecho
line(562,272,548,275);//diente derecho 

//bigote
stroke(0);
bezier(420,225,450,212,503,223,515,223);//izquierdo
bezier(420,240,450,225,503,234,515,238);//izquierdo
bezier(579,223,607,217,644,218,675,225);//derecho
bezier(579,238,607,230,644,229,675,240);//derecho


 //ojos
 fill(0);
 circle(508,173,30);//izquierdo
 circle(590,175,30);//derecho
 
 //pupila
 fill(255);
 circle(509,169,10);//izquierda
 circle(589,169,10);//derecha
 
}
