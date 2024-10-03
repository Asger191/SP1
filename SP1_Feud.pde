/*

 1. Variable med datatyperne int eller float, String og datastrukturerne array[] eller ArrayList.
 2. if-else statements (conditionals), relationelle operationer (> < == ) og boolske operatorer (&& || )
 3. Loops: for-loops eller for-each fx. til gennemløb af et array eller for at få noget til at ske mange gange.
 4. Du skal definere dine egne metode med brug af parametre og return key-word, og kunne kalde dem.
 */

//Array[] bliver brugt til skuespiller og point
//for loop bliver brugt til at printe skuespillerne med point ud

//Der skal laves en "if" der skal have funktionen at hvis man skriver et af skuespiller navnene, så skal der kommer et "Godt Klaret frem" hvor navn og point er printet
//Der skal laves en "else" skal have funktionen at hvis man skrive et navn som ikke er en af skuespillerne så printes "Skuespilleren tilhører ikke kategorien "Top 10 Skuespillere"

String[] skuespiller = {"Leonardo Dicaprio", "Matthew Mcconaughey", "Denzel Washington", "Brad Pitt", "Morgan Freeman", "Christian Bale", "Johnny Depp", "Tom Cruise", "Tom Hanks", "Robert De Niro"};
int[] stemmer = {20, 7, 15, 3, 10, 21, 8, 2, 5, 9};

void setup() {

  //facit();  //Hvis facit skal printes ud, blot fjern "//" før facit
  
  skuespillerPoint("Brad Pitt"); //Svar indtastes he
  skuespillerPoint("Leonardo Dicaprio");
  
  int result = getSumPoint();
  println("The sum for the team is " + result);
}


public int getSumPoint(){

  return stemmer[0] + stemmer[3];
  
}

//Metoden her kan kaldes fra setup
void facit() {
  for (int i = 0; i<skuespiller.length; i++) {
    println(skuespiller[i] + ": " + stemmer[i] + " point");
  }
}
boolean fundet; //Jeg laver en boolean for at se om mit input i "vælger" er sand eller falsk.



void skuespillerPoint(String name) {
  for (int i = 0; i<skuespiller.length; i++) { //for-loop funktion som kører igennem mit array
  
  if (name.equals(skuespiller[i])) {
    println(skuespiller[i] + ": " + stemmer[i] + " point"); //Hvis man skriver navnet på en skulder spiller i vores array, får vi dette output
    fundet = true;
  }
  }

  if (!fundet) {
    println(name + " er ikke top 10 i spørgeundersøgelsen"); //Hvis man skriver et navn som ikke er i arrayet så får vi dettet output
  }
}
