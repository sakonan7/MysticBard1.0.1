import ddf.minim.*;

AudioPlayer player;
Minim minim;

AudioPlayer player2;
Minim minim2;

AudioPlayer player3;
Minim minim3;

AudioPlayer player4;
Minim minim4;

static final int FADE = 2200;

PImage background;

PImage musicNote1;
PImage musicNote2;
PImage musicNote3;

PImage foe1;
PImage foe2;
PImage foe3;
PImage foe4;
PImage foe5;
PImage foetutorial;
PImage foeT2;
PImage foeT3;

PImage foe6;
PImage foe7;
PImage foe8;

PImage foeWhite;
PImage foeRed;

PImage village;
PImage monsters;
PImage loss;
PImage violinAttack;
PImage tutorial;

PImage bard;

PImage violin;
PImage violinUse;
PImage trombone;
PImage tromboneUse;
PImage tromboneUse2;
PImage shieldUse;
PImage tromboneGauge;
PImage violinGauge;
PImage shieldGauge;
PImage tromboneD;
PImage violinD;
PImage shieldD;
PImage tromboneS;
PImage violinNS;

PImage tromboneFirst;
PImage tromboneSecond;
PImage shielding;
PImage nonAttack;
PImage attack;

PImage HP;
PImage HPdamage;

PImage tutorialV;
PImage bardEnd;

PImage tutorialD;

PImage title;

PImage violinUI;

PImage dead;

float foe1SizeX;
float foe1SizeY;
float foe2SizeX;
float foe2SizeY;
float foe3SizeX;
float foe3SizeY;
float foe4SizeX;
float foe4SizeY;
float foe5SizeX;
float foe5SizeY;
float foe1CoordX;
float foe1CoordY;
float foe2CoordX;
float foe2CoordY;
float foe3CoordX;
float foe3CoordY;
float foe4CoordX;
float foe4CoordY;
float foe5CoordX;
float foe5CoordY;

float foetutorialSizeX;
float foetutorialSizeY;
float foetutorialX;
float foetutorialY;

float foeT2SizeX;
float foeT2SizeY;
float foeT2X;
float foeT2Y;

float foeT3SizeX;
float foeT3SizeY;
float foeT3X;
float foeT3Y;

float foe6SizeX;
float foe6SizeY;
float foe7SizeX;
float foe7SizeY;
float foe8SizeX;
float foe8SizeY;

float foe6CoordX;
float foe6CoordY;
float foe7CoordX;
float foe7CoordY;
float foe8CoordX;
float foe8CoordY;

int foe1HP = 150;
int foe2HP = 150;
int foe3HP = 150;
int foe4HP = 150;
int foe5HP = 150;
int foeTHP = 150;
int foeT2HP = 150;
int foeT3HP = 150;

int foe6HP = 150;
int foe7HP = 150;
int foe8HP = 150;

int playerHP = 100;

int damage = 50;
float HPbar = 600;

int currentHP = playerHP;
float originalHPbar = 600; 
int currentHPX = 550; 
int originalHPX = 550;

float violinBar = 0;
float tromboneBar = 0;

float shieldBar = 190;
float originalWeaponBar = 190;
float currentViolinBar = 190;
float currentTromboneBar = 190;
float originalShieldBar = 190;
float currentShieldBar = 190;
int currentViolinBarX = 465;
int originalViolinBarX = 275;
int currentTromboneBarX = 225;
int originalTromboneBarX = 35;
int currentShieldBarX;
int originalShieldBarX;
boolean violinDrained = true;
boolean tromboneDrained = true;
boolean shieldDrained = false;

boolean monsterViolin = false;
boolean monsterTrombone = false;

boolean foe1Alive = true;
boolean foe2Alive = true;
boolean foe3Alive = true;
boolean foe4Alive = true;
boolean foe5Alive = true;

boolean foeTAlive = true;
boolean foeT2Alive = true;
boolean foeT3Alive = true;

boolean foe6Alive = true;
boolean foe7Alive = true;
boolean foe8Alive = true;

boolean playerAlive = true;
boolean playerDead = false;
boolean tryAgain = false;

boolean playerTDead = false;

boolean tutorialStage = false;
boolean stage1 = false;
boolean stage2 = false;

boolean stage1Dead = false;
boolean stage2Dead = false;

int foeTinterval = int(random(5, 8));
int foeTt = 0;
String foeTtime = "005";
int foeTwhiteint = 3;
int foeTwhitet = 0;
String foeTwhitetime = "003";
int foeTflashint = 3;
int foeTflasht = 0;
String foeTflashtime = "003";
int foeTflash2int = 3;
int foeTflash2t = 0;
String foeTflash2time = "003";
int foeTredint = 3;
int foeTredt = 0;
String foeTredtime = "003";
boolean foeTFlash = false;

boolean warmUp = true;
boolean firstTAttack = true;

boolean first1Attack = true;
boolean first2Attack = true;
boolean first3Attack = true;

boolean first4Attack = true;
boolean first5Attack = true;
boolean first6Attack = true;
boolean first7Attack = true;
boolean first8Attack = true;

int foe1interval = 5;
int foe1t = 0;
String foe1time = "005";
int foe1whiteint = 3;
int foe1whitet = 0;
String foe1whitetime = "003";
int foe1flashint = 3;
int foe1flasht = 0;
String foe1flashtime = "003";
int foe1flash2int = 3;
int foe1flash2t = 0;
String foe1flash2time = "003";
int foe1redint = 3;
int foe1redt = 0;
String foe1redtime = "003";
boolean foe1Flash = false;

int foe2interval = 10;
int foe2t = 0;
String foe2time = "005";
int foe2whiteint = 3;
int foe2whitet = 0;
String foe2whitetime = "003";
int foe2flashint = 3;
int foe2flasht = 0;
String foe2flashtime = "003";
int foe2flash2int = 3;
int foe2flash2t = 0;
String foe2flash2time = "003";
int foe2redint = 3;
int foe2redt = 0;
String foe2redtime = "003";
boolean foe2Flash = false;

int foe3interval = 10;
int foe3t = 0;
String foe3time = "005";
int foe3whiteint = 3;
int foe3whitet = 0;
String foe3whitetime = "003";
int foe3flashint = 3;
int foe3flasht = 0;
String foe3flashtime = "003";
int foe3flash2int = 3;
int foe3flash2t = 0;
String foe3flash2time = "003";
int foe3redint = 3;
int foe3redt = 0;
String foe3redtime = "003";
boolean foe3Flash = false;

int foe4interval = 10;
int foe4t = 0;
String foe4time = "005";
int foe4whiteint = 3;
int foe4whitet = 0;
String foe4whitetime = "003";
int foe4flashint = 3;
int foe4flasht = 0;
String foe4flashtime = "003";
int foe4flash2int = 3;
int foe4flash2t = 0;
String foe4flash2time = "003";
int foe4redint = 3;
int foe4redt = 0;
String foe4redtime = "003";
boolean foe4Flash = false;

int foe5interval = 10;
int foe5t = 0;
String foe5time = "005";
int foe5whiteint = 3;
int foe5whitet = 0;
String foe5whitetime = "003";
int foe5flashint = 3;
int foe5flasht = 0;
String foe5flashtime = "003";
int foe5flash2int = 3;
int foe5flash2t = 0;
String foe5flash2time = "003";
int foe5redint = 3;
int foe5redt = 0;
String foe5redtime = "003";
boolean foe5Flash = false;

int foe6interval = 10;
int foe6t = 0;
String foe6time = "005";
int foe6whiteint = 3;
int foe6whitet = 0;
String foe6whitetime = "003";
int foe6flashint = 3;
int foe6flasht = 0;
String foe6flashtime = "003";
int foe6flash2int = 3;
int foe6flash2t = 0;
String foe6flash2time = "003";
int foe6redint = 3;
int foe6redt = 0;
String foe6redtime = "003";
boolean foe6Flash = false;

int foe7interval = 10;
int foe7t = 0;
String foe7time = "005";
int foe7whiteint = 3;
int foe7whitet = 0;
String foe7whitetime = "003";
int foe7flashint = 3;
int foe7flasht = 0;
String foe7flashtime = "003";
int foe7flash2int = 3;
int foe7flash2t = 0;
String foe7flash2time = "003";
int foe7redint = 3;
int foe7redt = 0;
String foe7redtime = "00victory";
boolean foe7Flash = false;

int foe8interval = 10;
int foe8t = 0;
String foe8time = "005";
int foe8whiteint = 3;
int foe8whitet = 0;
String foe8whitetime = "003";
int foe8flashint = 3;
int foe8flasht = 0;
String foe8flashtime = "003";
int foe8flash2int = 3;
int foe8flash2t = 0;
String foe8flash2time = "003";
int foe8redint = 3;
int foe8redt = 0;
String foe8redtime = "00victory";
boolean foe8Flash = false;

boolean shield = false;
int shieldInterval = 3;
int shieldt = 0;
String shieldtime = "003";

int shieldReplenish = 5;
int shieldReplenisht = 0;
String shieldReplenishtime = "005";

int violinReplenish = int(millis()/1000) + 10;
int violinReplenisht = 0;
String violinReplenishtime = "010";

int tromboneReplenish = int(millis()/1000) + 15;
int tromboneReplenisht = 0;
String tromboneReplenishtime = "015";

boolean firstBlast = true;
boolean secondBlast = false;

boolean playerAttacked = false;
boolean attackBlocked = false;
boolean shieldbroken = false;
boolean foe1Attack = false;
boolean foe2Attack = false;
boolean foe3Attack = false;
boolean foe4Attack = false;
boolean foe5Attack = false;

boolean foeTAttack = false;

boolean foe6Attack = false;
boolean foe7Attack = false;
boolean foe8Attack = false;

boolean foe1attacked = false;
boolean foe1Interupt = false;
boolean foe2attacked = false;
boolean foe2Interupt = false;
boolean foe3attacked = false;
boolean foe3Interupt = false;
boolean foe4attacked = false;
boolean foe4Interupt = false;
boolean foe5attacked = false;
boolean foe5Interupt = false;

boolean foeTattacked = false;
boolean foeTInterupt = false;

boolean foe6attacked = false;
boolean foe6Interupt = false;
boolean foe7attacked = false;
boolean foe7Interupt = false;
boolean foe8attacked = false;
boolean foe8Interupt = false;

boolean foeTdisapp = false;
boolean foeT2disapp = false;
boolean foeT3disapp = false;

boolean foe1disapp = false;
boolean foe2disapp = false;
boolean foe3disapp = false;

boolean foe4disapp = false;
boolean foe5disapp = false;
boolean foe6disapp = false;
boolean foe7disapp = false;
boolean foe8disapp = false;

int cursorX;
int cursorY;

boolean titlePage = true;
boolean message1 = false;
boolean message2 = false;
boolean message3 = false;
boolean message4 = false;
boolean message5 = false;
boolean message6 = false;
boolean messageViolin = false;
boolean messageTrombone = false;
boolean messageTrombone2 = false;
boolean messageShield = false;
boolean messageShield2 = false;
boolean messageAttacked = false;
boolean messageInterupt = false;
boolean messageLast = false;
boolean messageOver = false;

boolean victory = false;
boolean victoryPage = false;
boolean victoryConclude = false;

boolean tutorialVictory = false;

boolean tutorialVictoryPage = false;
boolean tutorialConclude = false;

boolean stayTuned = false;
boolean musicCredits = false;

boolean redTDead = false;
boolean redDead = false;
boolean redDeadPage = false;

boolean tutorialDead = false;
boolean tutorialRestart = false;

boolean stage1V = false;
boolean stage2V = false;
boolean lastStageV = false;

PFont Font1;
PFont Font2;
PFont Font3;

PImage treasure;
PImage death;

String weapon;

color c1 = color(#F1F200);
color c2 = color(#A1FF00);
color c3 = #ADFF00; 
color c4 = #7C0000; 

void setup() {
  size(1100, 900);
  Font1 = createFont("TimesNewRomanPSMT-48", 33);
  Font2 = createFont("TimesNewRomanPS-ItalicMT-48", 50);
  Font3 = createFont("TimesNewRomanPS-ItalicMT-48", 40);
  
  background = loadImage("forestcurrent.png");
  
  musicNote1 = loadImage("note1.png");
  musicNote2 = loadImage("note2.png");
  
  foe1 = loadImage("goblin.png");
  foe2 = loadImage("goblin.png");
  foe3 = loadImage("goblin.png");
  foe4 = loadImage("goblin.png");
  foe5 = loadImage("goblin.png");
  foetutorial = loadImage("goblin.png");
  foeT2 = loadImage("goblin.png");
  foeT3 = loadImage("goblin.png");
  
  foe6 = loadImage("goblin.png");
  foe7 = loadImage("goblin.png");
  foe8 = loadImage("goblin.png");
  
  foeWhite = loadImage("goblinwhite.png");
  foeRed = loadImage("goblinred.png");
  
  
  village = loadImage("village.png");
  monsters = loadImage("monsters2.png");
  //loss = loadImage("Loss.png");
  violinAttack = loadImage("violinAttack.png");
  violinUse = loadImage("violinUse.png");
  tutorial = loadImage("tutorial.png");
  
  violin = loadImage("violinPic.png");
  
  trombone = loadImage("trombonePic.png");
  
  bard = loadImage("village3.png");
  
  tromboneGauge = loadImage("trombone.png");
  violinGauge = loadImage("violin.png");
  shieldGauge = loadImage("shield.png");
  tromboneD = loadImage("tromboneDepleted.png");
  violinD = loadImage("violinD.png");
  shieldD = loadImage("shieldDepleted.png");
  
  violinNS = loadImage("violinNS.png");
  tromboneS = loadImage("tromboneSelect.png");
  
  tromboneUse = loadImage("trombone1st.png");
  tromboneUse2 = loadImage("trombone2nd.png");
  tromboneFirst = loadImage("tromboneAttack.png");
  tromboneSecond = loadImage("secondTrombone.png");

  shielding = loadImage("shielding.png");
  shieldUse = loadImage("shieldDeplete.png");
  
  nonAttack = loadImage("nonAttack.png");
  attack = loadImage("Attack.png");
  
  HP = loadImage("HP.png");
  HPdamage = loadImage("damage.png");
  
  tutorialV = loadImage("victory.jpg");
  bardEnd = loadImage("bardEnd.png");
  tutorialD = loadImage("tutorialDead.png");
  title = loadImage("titlePage.png");
  
  violinUI = loadImage("violinUI.png");
  dead = loadImage("Loss.png");
  
  minim = new Minim(this);
  player = minim.loadFile("Title Theme.mp3", 800);
  player.play();
  //-15 adjusts the sound, adjust higher for higher sound
  player.shiftGain(player.getGain(),-15,FADE);
  player.loop();
  
  minim2 = new Minim(this);
  minim3 = new Minim(this);
  minim4 = new Minim(this);  
  
  foetutorialSizeX = 125 * 1.1;
  foetutorialSizeY = 200 * 1.1;
  foetutorialX = width/2 - 100;
  foetutorialY = height - 380 - 50;
  
  foeT2SizeX = 125 * 1.1;
  foeT2SizeY = 200 * 1.1;
  foeT2X = width/2 - 230 - 50;
  foeT2Y = height - 380 - 130 - 50;

  foeT3SizeX = 125 * 1.1;
  foeT3SizeY = 200 * 1.1;
  foeT3X = width/2 + 30 + 50;
  foeT3Y = height - 380 - 130 - 50;  
  
  foe1SizeX = 125 * 1.1;
  foe1SizeY = 200 * 1.1;
  foe1CoordX = width/2 - 100;
  foe1CoordY = height - 380 - 50;
  
  foe2SizeX = 125 * 1.1;
  foe2SizeY = 200 * 1.1;
  foe2CoordX = width/2 - 230 - 50;
  foe2CoordY = height - 380 - 130 - 50;

  foe3SizeX = 125 * 1.1;
  foe3SizeY = 200 * 1.1;
  foe3CoordX = width/2 + 30 + 50;
  foe3CoordY = height - 380 - 130 - 50;  
// 
  foe4SizeX = 125 * 1.1;
  foe4SizeY = 200 * 1.1;
  foe4CoordX = 390 - 60;
  foe4CoordY = height - 380 - 25 - 20;
  foe5SizeX = 125 * 1.1;
  foe5SizeY = 200 * 1.1;
  foe5CoordX = 180 - 60;
  foe5CoordY = height - 400 - 75 - 20;
  foe6SizeX = 125 * 1.1;
  foe6SizeY = 200 * 1.1;
  foe6CoordX = 600 - 60;
  foe6CoordY = height - 430 - 20;
  foe7SizeX = 125 * 1.1;
  foe7SizeY = 200 * 1.1;
  foe7CoordX = 800 - 60;
  foe7CoordY = height - 370 - 75 - 20;

  foe8SizeX = 125 * 1.1;
  foe8SizeY = 200 * 1.1;
  foe8CoordX = 950 - 60;
  foe8CoordY = height - 450 - 75 - 20;
  
  weapon = "Violin";

  currentShieldBarX = width - 225;
  originalShieldBarX = width - 225; 
  
  c1 = color(#F1F200);
  c2 = color(#A1FF00); 
  c3 = #ADFF00; 
  c4 = #7C0000; 
  frameRate(40);
}
void draw() {
  image(background, 0, 0, width, height);
  String clickRight = "Click Right to Continue";
  String clickLeft = "Click Left to Go Back";
  String clickSkip = "S to Skip";

  if (tutorialVictoryPage == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    
    stroke(#98FFFC);
    strokeWeight(3);
    textFont(Font2);
    
    text("Victory" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Congratulations!!" + "\n", 50, height - height + 150);
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("You have defeated your first enemy! But the battle has just begun", 50, 210);
    
    image(tutorialV, 230, 250, 625, 463);
    text("The true challenge is yet to come", 50, 772); 
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);   
  }
  if (tutorialConclude == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    
    stroke(#98FFFC);
    strokeWeight(3);
    textFont(Font2);
    
    text("Victory" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Congratulations!!" + "\n", 50, height - height + 150);
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("You have defeated your first enemy! But the battle has just begun", 50, 210);
    
    image(tutorialV, 230, 250, 625, 463);
    text("The true challenge is yet to come", 50, 772); 
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + "Click Right to Start", width - 320, height - 165);     
  }
  if (stayTuned == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    text("Thank You For Playing" + "\n", 50, height - height + 90);     
    textFont(Font1);
    fill(#FFFFFF);
    text("Stay Tuned For More Updates" + "\n", 50, height - height + 150);
    
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    
    image(bardEnd, 180, 190, 742, 590);
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + "Click Right for Music Credits", width - 465, height - 165);     
  }
  if (musicCredits == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);
    text("Music" + "\n", 470, 285);     
    textFont(Font1);
    fill(#FFFFFF);
    ///Title Theme
    text("Title Theme (Final Fantasy I) by Nobuo Uematsu", 200, 345);
    text("Reclamation (Fire Emblem: Shadow Dragon)", 225, 395);
    text("by Yuka Tsujiyoko", 410, 445);
    text("Battle 1 (Final Fantasy IV) by Nobuo Uematsu", 220, 495);
    text("Victory (Final Fantasy VII) by Nobuo Uematsu", 220, 545);
    text("Dead Music (Final Fantasy I) by Nobuo Uematsu", 200, 595);

    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + "Click Right to Go to Title Screen", width - 520, height - 165);
  }  
  if (victoryPage == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    
    stroke(#98FFFC);
    strokeWeight(3);
    textFont(Font2);
    
    text("Victory" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Congratulations!!" + "\n", 50, height - height + 150);
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("You have successfully protected the village!", 50, 210);
    
    image(tutorialV, 230, 250, 625, 463);
    
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);
  }
  if (victoryConclude == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    
    stroke(#98FFFC);
    strokeWeight(3);
    textFont(Font2);
    
    text("Victory" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Congratulations!!" + "\n", 50, height - height + 150);
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("You have successfully protected the village!", 50, 210);
    
    image(tutorialV, 230, 250, 625, 463);
    
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + "Click Right to Start", width - 320, height - 165);     
  }  
  if (redDeadPage == true) {
    image(violinUI, 251, height - 156, 240, 156);
    image(tromboneD, 7, height - 157, 244, 156);
    image(shieldD, width - 253, height - 157, 244, 156);    
    
    noFill();
    stroke(#9B9B9B);
    rect(originalHPX - 3, 50 - 2.5, originalHPbar + 5, 40 + 6);    
    
    setGradient(currentShieldBarX, height-105, shieldBar, 15, c3, c4, 2);
    setGradient(currentViolinBarX, height-105, violinBar, 15, c3, c4, 2); //Violin
    setGradient(currentTromboneBarX, height-105, tromboneBar, 15, c3, c4, 2);
    
    if (weapon == "Violin") {
      stroke(#FFCE46);
      rect(252, height - 148, 235, 135, 8);          
    }
    if (weapon == "Trombone") {
      stroke(#FFCE46);
      rect(13, height - 148, 235, 135, 8);
    }     
    if (tutorialStage == true) {
        if (foeTAlive == true) {
          image(foetutorial, foetutorialX, foetutorialY, foetutorialSizeX, foetutorialSizeY);
        }
        if (foeT2Alive == true) {
          image(foeT2, foeT2X, foeT2Y, foeT2SizeX, foeT2SizeY);
        }
        if (foeT3Alive == true) {
          image(foeT3, foeT3X, foeT3Y, foeT3SizeX, foeT3SizeY);
        }      
    }
    if (stage1 == true) {
        if (foe1Alive == true) {
          image(foe1, foe1CoordX, foe1CoordY, foe1SizeX, foe1SizeY);
        }
        if (foe2Alive == true) {
          image(foe2, foe2CoordX, foe2CoordY, foe2SizeX, foe2SizeY);
        }
        if (foe3Alive == true) {
          image(foe3, foe3CoordX, foe3CoordY, foe3SizeX, foe3SizeY);
        }      
    }    
    fill(117,0,0,175);   
    rect(0, 1, 1100, 900); 
    
    textFont(Font2);
    fill(#FFF300);
    text("You Died", 440, 460);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 365, height - 135);    
    
  }
  if (playerDead == true) {

    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    
    stroke(#98FFFC);
    strokeWeight(3);
    textFont(Font2);
    
    text("Game Over" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("You Died", 50, height - height + 150);

    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("You were defeated and the village was overrun by monsters.", 50, 210);

    image(dead, 75, 245, 949, 533);
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + "Click Right to Restart", width - 360, height - 165);    
  } 
  //try again
  if (tryAgain == true) {

    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    
    stroke(#98FFFC);
    strokeWeight(3);
    textFont(Font2);
    
    text("Game Over" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("You Died", 50, height - height + 150);

    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("You were defeated and the village was overrun by monsters.", 50, 210);

    image(dead, 75, 245, 949, 533);
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + "Click Right to Try Again", width - 390, height - 165);    
  }  
  if (tutorialDead == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    
    stroke(#98FFFC);
    strokeWeight(3);
    textFont(Font2);
    
    text("Game Over" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("You Died", 50, height - height + 150);

    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("You were defeated. Don't worry, you're just getting started!", 50, 210);

    image(tutorialD, 180, 230, 478, 563);
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + "Click Right to Restart", width - 360, height - 165);
  }  
  if (tutorialRestart == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    
    stroke(#98FFFC);
    strokeWeight(3);
    textFont(Font2);
    
    text("Game Over" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("You Died", 50, height - height + 150);
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("You were defeated. Don't worry, you're just getting started!", 50, 210);
    
    image(tutorialD, 180, 230, 478, 563);
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + "Click Right to Try Again", width - 390, height - 165);
  }  
  if (titlePage == true) {
    image(title, 0, 0, 1100, 900);
    stroke(#98FFFC);
    strokeWeight(3);
    textFont(Font2);   
  }
  if (message1 == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);

    fill(#FFFFFF);
    stroke(#98FFFC);
    strokeWeight(3);
    textFont(Font2);
    
    text("Mystic Bard" + "\n", 50, height - height + 90);

    textFont(Font1);
    text("Monsters of the Green Dragon have come from the forest to " + 
    "\n" + "attack the Village.", 50, height - height + 150);
    fill(#FFF300);
    text("\n" + "\n" + clickRight, width - 385, height - 165);
    image(village, 325, 235, 438, 313);
    image(monsters, 325, 528, 438, 244);
  }
  if (message2 == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    text("Mystic Bard" + "\n", 50, height - height + 90);   
    textFont(Font1);
    fill(#FFFFFF);
    text("As the Guardian, The Mystic Bard " + "protect the people from"
    + "\n" + "the forces of evil!", 50, height - height + 150);
    fill(#FFF300);
    text("\n" + "\n" + clickRight, width - 385, height - 165);   
    text("\n" + "\n" + clickLeft, 50, height - 165);
    
    image(bard, 220, 235, 660, 540);
  }
  if (message3 == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);

    textFont(Font2);
    fill(#FFFFFF);
    text("Mystic Bard" + "\n", 50, height - height + 90);  
    textFont(Font1);
    fill(#FFFFFF);
    text("First, test out your skills!", 50, height - height + 150);
    
    image(tutorial, 220, 195, 646, 528);
    
    fill(#FFF300);
    
    text("Tap S to Skip Tutorial", width - 715, 778);
    text("\n" + "\n" + clickRight + " To Tutorial", width - 550, height - 165);
    text("\n" + "\n" + clickLeft, 50, height - 165);
  }  
  if (message4 == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    textFont(Font2);
    fill(#FFFFFF);
    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Weapons" + "\n", 50, height - height + 150);
    textFont(Font1);
    fill(#FFF300);
    //text(leftClick, 50, height - height + 70); 
    fill(#FFFFFF);
    text("As the Mystic Bard, you have an array of weapons" +
    ", starting with the " + "\n" + "Violin, Trombone and Shield", 50, height - height + 210);

    image(tromboneGauge, 160, 300, 244, 156);
    image(violinGauge, 434, 300, 244, 156);
    image(shieldGauge, 708, 300, 244, 156);
    text("During the start of the fight, you will default to the Violin", 50, 516);

    image(tromboneD, 160, 556, 244, 156);
    image(violinD, 434, 556, 244, 156);
    image(shieldD, 708, 556, 244, 156);    
    text("Each time you use a weapon, it will deplete until it can't be used", 50, 772);
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165); 
    text("\n" + "\n" + clickLeft, 50, height - 165);
    text("\n" + "\n" + clickSkip, width - 625, height - 165);
  }
  if (message5 == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);

    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Weapons" + "\n", 50, height - height + 150);
    
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF); 
    text("Each time you use a weapon, it will deplete until it can't be used", 50, 210);    

    image(tromboneD, 160, 250, 244, 156);
    image(violinD, 434, 250, 244, 156);
    image(shieldD, 708, 250, 244, 156);    
    text("At the start of the fight, your weapons will be depleted and you will"
    + "\n" + "need to wait for a small warmup period before fighting", 50, 466);

    image(tromboneGauge, 160, 558, 244, 156);
    image(violinGauge, 434, 558, 244, 156);
    image(shieldGauge, 708, 558, 244, 156);
    text("When your weapon bars are depleted, they will replenish overtime", 50, 772);  
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);   
    text("\n" + "\n" + clickLeft, 50, height - 165);
    text("\n" + "\n" + clickSkip, width - 625, height - 165);
  }
  if (message6 == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);
    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Weapons" + "\n", 50, height - height + 150);
    
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);    
    text("During the fight, your equipped weapon will be represented by the"
    + "\n" + "gold ring, which will shift to the selected weapon", 50, 210);    
    image(tromboneGauge, 160, 300, 244, 156);
    image(violinGauge, 434, 300, 244, 156);
    image(shieldGauge, 708, 300, 244, 156);
    text("Press W to switch to Trombone and A to switch to Violin", 50, 516);
    image(tromboneS, 160, 556, 244, 156);
    image(violinNS, 434, 556, 244, 156);
    image(shieldGauge, 708, 556, 244, 156);     
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);   
    text("\n" + "\n" + clickLeft, 50, height - 165);  
  }
  if (messageViolin == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);
    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Violin" + "\n", 50, height - height + 150);
    
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);   
    text("The Violin is a fast, single target hitting weapon that replenishes fast"
    + "\n" + "Left click on a single target to attack it", 50, height - height + 210);

    image(violinAttack, 303, 450, 188, 246);
    image(violinUse, 573, 500, 244, 156);
 
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);
    text("\n" + "\n" + clickLeft, 50, height - 165);
    text("\n" + "\n" + clickSkip, width - 625, height - 165);
  }    
  if (messageTrombone == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);    
    
    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Trombone" + "\n", 50, height - height + 150);
    //Text
    
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF); 
    text("The Trombone is a slow, multi-hitting weapon that replenishes slowly"
    + "\n" + "Left click on an enemy or on an area between several to attack", 50, height - height + 210);

    image(tromboneFirst, 155, 325, 461, 248);
    image(tromboneUse, 631, 375, 244, 156);
    text("The Trombone has armor piercing qualities. Use it on certain foes to"
    + "\n" + "break their guard", 50, 652);    
 
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);
    text("\n" + "\n" + clickLeft, 50, height - 165);  
    text("\n" + "\n" + clickSkip, width - 625, height - 165);
  }
  if (messageTrombone2 == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);
    
    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Trombone" + "\n", 50, height - height + 150);
    
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF); 
    text("The first blast will hit every foe, but the second blast will only hit"
    + "\n" + "enemies in the area around the mouse point", 50, 210);
    image(tromboneFirst, 155, 305, 424, 228);
    image(tromboneUse, 594, 345, 244, 156);
    image(tromboneSecond, 155, 543, 258, 228);
    image(tromboneUse2, 594, 583, 244, 156);
 
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);
    text("\n" + "\n" + clickLeft, 50, height - 165);
    text("\n" + "\n" + clickSkip, width - 625, height - 165);
  }
  if (messageShield == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);
    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Shield" + "\n", 50, height - height + 150);
    
    textFont(Font1);
    fill(#FFF300); 
    fill(#FFFFFF); 
    text("Produce a barrier that will Shield against all attacks for two seconds"
    + "\n" + "Right click anywhere to Shield", 50, 210);
    image(shielding, 155, 325, 461, 316); 
    image(shieldUse, 631, 418, 244, 156);
    text("But beware, right clicking again will extend the Shield time but"
    + "\n" + "drain your Shield gauge faster", 50, 719); 
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);
    text("\n" + "\n" + clickLeft, 50, height - 165);
    text("\n" + "\n" + clickSkip, width - 625, height - 165);
  } 
  if (messageShield2 == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);
    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Shield" + "\n", 50, height - height + 150);
    
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("If you attack before the Shield ends, you will cancel the Shield", 50, 210);

    image(shielding, 175, 250, 411, 282); 
    image(shieldUse, 601, 323, 244, 156);
    image(violinAttack, 292, 542, 176, 231);
    
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);
    text("\n" + "\n" + clickLeft, 50, height - 165);
    text("\n" + "\n" + clickSkip, width - 625, height - 165);
  }  
  if (messageAttacked == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);
    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Combat" + "\n", 50, height - height + 150);
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("Foes will attack in intervals of 5 seconds, indicated by their flashing"
    + "\n" + "But at the start, they will attack in intervals of 5 to 8 seconds", 50, 210);

    image(nonAttack, 140, 350, 188, 246);
    image(attack, 343, 350, 188, 246);
    image(HP, 566, 403, 401, 67);
    image(HPdamage, 566, 478, 401, 67);
    
    text("Each attack will lower your HP, shown at the top right"
    + "\n" + "In the tutorial, only one foe will attack", 50, 719); 
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);
    text("\n" + "\n" + clickLeft, 50, height - 165);
    text("\n" + "\n" + clickSkip, width - 625, height - 165);
  }  
  if (messageInterupt == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);
    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Combat" + "\n", 50, height - height + 150);
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("But attacking a foe before it finishes flashing will interupt its attack", 50, 210);

    image(attack, 205, 300, 188, 246);
    image(violinAttack, 408, 300, 188, 246);
    image(nonAttack, 611, 300, 188, 246);

    text("But you have to get the timing just right", 50, 656); 
    fill(#FFF300);
    textFont(Font1);
    text("\n" + "\n" + clickRight, width - 385, height - 165);
    text("\n" + "\n" + clickLeft, 50, height - 165);
    text("\n" + "\n" + clickSkip, width - 625, height - 165);
  }  
  if (messageLast == true) {
    fill(#000096);
    rect(25, 25, width - 50, height - 50);
    
    textFont(Font2);
    fill(#FFFFFF);
    
    text("Battle" + "\n", 50, height - height + 90);     
    textFont(Font3);
    fill(#FFFFFF);
    text("Conclusion" + "\n", 50, height - height + 150);
    textFont(Font1);
    fill(#FFF300);
    fill(#FFFFFF);
    text("Now that the tutorial is over, unleash your power!", 50, 210);

    image(tutorial, 220, 245, 646, 528);
    fill(#FFF300);
    textFont(Font1);
    //proceed to battle
    text("\n" + "\n" + "Click Right to Proceed", width - 375, height - 165);
    text("\n" + "\n" + clickLeft, 50, height - 165);
    text("\n" + "\n" + clickSkip, width - 625, height - 165);
  }  
  
  else if (playerAlive == true && (stage2 == true || stage1 == true || tutorialStage == true)){
    setGradient(currentHPX, 50, HPbar, 40, c2, c1, 3);
    noFill();
    stroke(#9B9B9B);
    rect(originalHPX - 3, 50 - 2.5, originalHPbar + 5, 40 + 6);
    
    if (currentHP == playerHP + damage) {
      currentHP = playerHP;
      setGradient(currentHPX, 50, HPbar, 40, c2, c1, 3);
    }   
    image(violinUI, 251, height - 156, 240, 156);
    image(tromboneD, 7, height - 157, 244, 156);
    image(shieldD, width - 253, height - 157, 244, 156);
        
    setGradient(currentShieldBarX, height-105, shieldBar, 15, c3, c4, 2);
    setGradient(currentViolinBarX, height-105, violinBar, 15, c3, c4, 2);
    setGradient(currentTromboneBarX, height-105, tromboneBar, 15, c3, c4, 2);

    strokeWeight(3);
    noFill();
        
    strokeWeight(10);
    strokeWeight(3);
    if (weapon == "Violin") {
      stroke(#FFCE46);
      rect(252, height - 148, 235, 135, 8);          
    }
    if (weapon == "Trombone") {
      stroke(#FFCE46);
      rect(13, height - 148, 235, 135, 8);
    }   
    if (warmUp == true) {
      violinDrained = true;
      tromboneDrained = true;
      violinReplenish = int(millis()/1000) + 5;
      tromboneReplenish = int(millis()/1000) + 10;
      //split this for tutorial and stages
      if (tutorialStage == true) {
        foeTinterval = int(millis()/1000) + int(random(3,8));
      }
      if (stage1 == true) {
        foe1interval = int(millis()/1000) + int(random(3,8));
        foe2interval = int(millis()/1000) + int(random(3,8));
        foe3interval = int(millis()/1000) + int(random(3,8));
      }
      
      warmUp = false;
    }
        
    if (violinDrained == true) {
      violinReplenisht = violinReplenish-int(millis()/1000);
      if(violinReplenisht == 0){
        violinBar = originalWeaponBar;
        currentViolinBarX = originalViolinBarX; 
        violinDrained = false;
      }

    }
    if (tromboneDrained == true) {
      tromboneReplenisht = tromboneReplenish-int(millis()/1000);

      if(tromboneReplenisht == 0){
        tromboneBar = originalWeaponBar;
        currentTromboneBarX = originalTromboneBarX; 
        tromboneDrained = false;
      }

    }        
        
    if(shieldDrained == true && shield == false) {
      shieldReplenisht = shieldReplenish - int(millis()/1000);
      if(shieldReplenisht > 0) {
        shieldBar += originalShieldBar/5;
        currentShieldBarX -= originalShieldBarX;
      }
      else if (shieldReplenisht == 0) {
        shieldBar = originalShieldBar;
        currentShieldBarX = originalShieldBarX;
        shieldReplenish += 5;
        shieldDrained = false;
      }
    
    }
    //foe2b  
    if (playerAttacked == true) {
      image(background, 0, -40, width, height);
      if (tutorialStage == true) {
        foeT2disapp = true;
        foeT3disapp = true;
        image(foetutorial, foetutorialX, foetutorialY - 30, foetutorialSizeX, foetutorialSizeY);
        if (foeT2HP > 0) {
          image(foeT2, foeT2X, foeT2Y - 30, foeT2SizeX, foeT2SizeY);
        }
        if (foeT3HP > 0) {
          image(foeT3, foeT3X, foeT3Y - 30, foeT3SizeX, foeT3SizeY);
        }
      }
      if (stage1 == true) {
        foe1disapp = true;
        foe2disapp = true;
        foe3disapp = true;
        if (foe1HP > 0) {
          image(foe1, foe1CoordX, foe1CoordY - 30, foe1SizeX, foe1SizeY);
        }
        if (foe2HP > 0) {
          image(foe2, foe2CoordX, foe2CoordY - 30, foe2SizeX, foe2SizeY);
        }
        if (foe3HP > 0) {
          image(foe3, foe3CoordX, foe3CoordY - 30, foe3SizeX, foe3SizeY);
        }
      }      
      if (stage2 == true) {
        foe4disapp = true;
        foe5disapp = true;
        foe6disapp = true;
        foe7disapp = true;
        foe8disapp = true;
        if (foe4HP > 0) {
          image(foe4, foe4CoordX, foe4CoordY - 30, foe4SizeX, foe4SizeY);
        }
        if (foe5HP > 0) {
          image(foe5, foe5CoordX, foe5CoordY - 30, foe5SizeX, foe5SizeY);
        }
        if (foe6HP > 0) {
          image(foe6, foe6CoordX, foe6CoordY - 30, foe6SizeX, foe6SizeY);
        }
        if (foe7HP > 0) {
          image(foe7, foe7CoordX, foe7CoordY - 30, foe7SizeX, foe7SizeY);
        }        
        if (foe8HP > 0) {
          image(foe8, foe8CoordX, foe8CoordY - 30, foe8SizeX, foe8SizeY);
        }        
      }        
      fill(117,0,0,145);
      stroke(#FFFFFF);

      image(violinUI, 251, height - 156, 240, 156);
      image(tromboneD, 7, height - 157, 244, 156);
      image(shieldD, width - 253, height - 157, 244, 156);          
      rect(0, 1, 1099, 898);        
        
      setGradient(currentHPX, 50, HPbar, 40, c2, c1, 3);
      noFill();
      stroke(#9B9B9B);
      rect(originalHPX - 3, 50 - 2.5, originalHPbar + 5, 40 + 6);      
 
      setGradient(currentShieldBarX, height-105, shieldBar, 15, c3, c4, 2);
      setGradient(currentViolinBarX, height-105, violinBar, 15, c3, c4, 2); 
      setGradient(currentTromboneBarX, height-105, tromboneBar, 15, c3, c4, 2);
        
      strokeWeight(3);
      noFill();

      strokeWeight(3);
      if (weapon == "Violin") {
        stroke(#FFCE46);
        rect(252, height - 148, 235, 135, 8);          
      }
      if (weapon == "Trombone") {
        stroke(#FFCE46);
        rect(13, height - 148, 235, 135, 8);
      }        
                     
      player4 = minim4.loadFile("axepunch.mp3", 500);
      player4.play();
      player4.shiftGain(player4.getGain(), 0,FADE); 
      //maybe put this code in playerAttacked == false
      //depending on the stage, cancel disapp and make the foes alive
    
      playerAttacked = false;
      if (playerHP <= 0 && tutorialStage == true) {
        //may need to do if stage2, foe not alive to make them disappear
        playerAlive = false;
        redTDead = true;
        redDeadPage = true;
        minim.stop();
      } 
      else if (playerHP <= 0 && stage1 == true) {
        //may need to do if stage2, foe not alive to make them disappear
        stage1Dead = true;
        playerAlive = false;
        redDead = true;
        redDeadPage = true;
        minim.stop();
      }        
      else if (playerHP <= 0 && stage2 == true) {
        //may need to do if stage2, foe not alive to make them disappear
        stage2Dead = true;
        playerAlive = false;
        redDead = true;
        redDeadPage = true;
        minim.stop();
      }       
    }
    else if (playerAttacked == false) {
      if (tutorialStage == true) {
        foeTdisapp = false;
        foeT2disapp = false;
        foeT3disapp = false;   
        if (foeTHP > 0) {
          foeTAlive = true;
        }
        if (foeT2HP > 0) {
          foeT2Alive = true;
        }
        if (foeT3HP > 0) {
          foeT3Alive = true;
        }        
      }
      if (stage1 == true) {
        foe1disapp = false;
        foe2disapp = false;
        foe3disapp = false;        
        if (foe1HP > 0) {
          foe1Alive = true;
        }
        if (foe2HP > 0) {
          foe2Alive = true;
        }
        if (foe3HP > 0) {
          foe3Alive = true;
        }        
      }
      if (stage2 == true) {
        foe4disapp = false;
        foe5disapp = false;
        foe6disapp = false;
        foe7disapp = false; 
        foe8disapp = false; 
        if (foe4HP > 0) {
          foe4Alive = true;
        }
        if (foe5HP > 0) {
          foe5Alive = true;
        }
        if (foe6HP > 0) {
          foe6Alive = true;
        }       
        if (foe7HP > 0) {
          foe7Alive = true;
        }         
        if (foe8HP > 0) {
          foe8Alive = true;
        }          
      }      
    }
    if (foeTAttack == true) {  
      foeTAlive = false;  
      foeTwhitet = foeTwhiteint-int(millis()/1000); 
      if (foeTHP > 0) {
        if (foeTwhitet > 0) {
          image(foeWhite, foetutorialX, foetutorialY, foetutorialSizeX, foetutorialSizeY);
        }
        else if (foeTwhitet <= 0) {
          foeTflasht = foeTflashint - int(millis()/1000);
          if (foeTflasht > 0) {
            image(foetutorial, foetutorialX, foetutorialY, foetutorialSizeX, foetutorialSizeY);
          }
          else if (foeTflasht <= 0) {
            foeTredt = foeTredint-int(millis()/1000);
            if (foeTredt > 0) {
              image(foeRed, foetutorialX, foetutorialY, foetutorialSizeX, foetutorialSizeY);
            }
            else if (foeTredt <= 0) {
              foeTflash2t = foeTflash2int - int(millis()/1000);
              if (foeTflash2t > 0) {
                image(foetutorial, foetutorialX, foetutorialY, foetutorialSizeX, foetutorialSizeY);
                foeTFlash = true;
              }
              else if (foeTflash2t <= 0 && foeTInterupt == false) {
                if (shield == true) {
                  foeTAttack = false;
                  attackBlocked = true;
                
                  foeTinterval = int(millis()/1000) + 5;
                  foeTwhiteint = int(millis()/1000) + 3; 
                  foeTflashint = int(millis()/1000) + 3;
                  foeTredint = int(millis()/1000) + 3; 
                  foeTflash2int = int(millis()/1000) + 3;
                }
                else if (shield == false) {
                
                  playerAttacked = true;
                  foeT2Alive = false;
                  foeT3Alive = false;                 
                    
                  foeTinterval = int(millis()/1000) + 5;
                  foeTwhiteint = int(millis()/1000) + 3;
                  foeTflashint = int(millis()/1000) + 3;
                  foeTredint = int(millis()/1000) + 3;
                  foeTflash2int = int(millis()/1000) + 3;
                  
                  playerHP -= 100;
                  HPbar = HPbar - originalHPbar/10;
                  currentHPX = currentHPX + originalHPX/10;         
                  println(10);
                } 
                foeTFlash = false;
                foeTAttack = false;
              }
            }                  
          }
        }        
      }
      else if (foeTHP <= 0) {
        foeTAttack = false;
      }
    }    
    if (foe1Attack == true) {  
      foe1Alive = false;  
      foe1whitet = foe1whiteint-int(millis()/1000); 
      if (foe1HP > 0) {
        if (foe1whitet > 0) {
          image(foeWhite, foe1CoordX, foe1CoordY, foe1SizeX, foe1SizeY);
        }
        else if (foe1whitet <= 0) {
          foe1flasht = foe1flashint - int(millis()/1000);
          if (foe1flasht > 0) {
            image(foe1, foe1CoordX, foe1CoordY, foe1SizeX, foe1SizeY);
          }
          else if (foe1flasht <= 0) {
            foe1redt = foe1redint-int(millis()/1000);
            if (foe1redt > 0) {
              image(foeRed, foe1CoordX, foe1CoordY, foe1SizeX, foe1SizeY);
            }
            else if (foe1redt <= 0) {
              foe1flash2t = foe1flash2int - int(millis()/1000);
              if (foe1flash2t > 0) {
                image(foe1, foe1CoordX, foe1CoordY, foe1SizeX, foe1SizeY);
                foe1Flash = true;
              }
              else if (foe1flash2t <= 0 && foe1Interupt == false) {
                if (shield == true) {
                  foe1Attack = false;
                  attackBlocked = true;
                
                  foe1interval = int(millis()/1000) + 5;
                  foe1whiteint = int(millis()/1000) + 3; 
                  foe1flashint = int(millis()/1000) + 3;
                  foe1redint = int(millis()/1000) + 3; 
                  foe1flash2int = int(millis()/1000) + 3;
                }
                else if (shield == false) {
                
                  playerAttacked = true;
                  foe2Alive = false;
                  foe3Alive = false;                 
                    
                  foe1interval = int(millis()/1000) + 5;
                  foe1whiteint = int(millis()/1000) + 3;
                  foe1flashint = int(millis()/1000) + 3;
                  foe1redint = int(millis()/1000) + 3;
                  foe1flash2int = int(millis()/1000) + 3;
                  playerHP -= 10;
                  HPbar = HPbar - originalHPbar/10;
                  currentHPX = currentHPX + originalHPX/10;
                } 
                foe1Flash = false;
                foe1Attack = false;
              }
            }                  
          }
        }        
      }
      else if (foe1HP <= 0) {
        foe1Attack = false;
      }
    }  
    //foe2a
    if (foe2Attack == true) {  
      foe2Alive = false;  
      foe2whitet = foe2whiteint-int(millis()/1000); 
      if (foe2HP > 0) {
        if (foe2whitet > 0) {
          image(foeWhite, foe2CoordX, foe2CoordY, foe2SizeX, foe2SizeY);
        }
        else if (foe2whitet <= 0) {
          foe2flasht = foe2flashint - int(millis()/1000);
          if (foe2flasht > 0) {
            image(foe2, foe2CoordX, foe2CoordY, foe2SizeX, foe2SizeY);
          }
          else if (foe2flasht <= 0) {
            foe2redt = foe2redint-int(millis()/1000);
            if (foe2redt > 0) {
              image(foeRed, foe2CoordX, foe2CoordY, foe2SizeX, foe2SizeY);
            }
            else if (foe2redt <= 0) {
              foe2flash2t = foe2flash2int - int(millis()/1000);
              if (foe2flash2t > 0) {
                image(foe2, foe2CoordX, foe2CoordY, foe2SizeX, foe2SizeY);
                foe2Flash = true;
              }
              else if (foe2flash2t <= 0 && foe2Interupt == false) {
                if (shield == true) {
                  foe2Attack = false;
                  attackBlocked = true;
                
                  foe2interval = int(millis()/1000) + 5;
                  foe2whiteint = int(millis()/1000) + 3; 
                  foe2flashint = int(millis()/1000) + 3;
                  foe2redint = int(millis()/1000) + 3; 
                  foe2flash2int = int(millis()/1000) + 3;
                }
                else if (shield == false) {
                
                  playerAttacked = true;
                  foe1Alive = false;
                  foe3Alive = false;                 
                    
                  foe2interval = int(millis()/1000) + 5;
                  foe2whiteint = int(millis()/1000) + 3;
                  foe2flashint = int(millis()/1000) + 3;
                  foe2redint = int(millis()/1000) + 3;
                  foe2flash2int = int(millis()/1000) + 3;
                  playerHP -= 10;
                  HPbar = HPbar - originalHPbar/10;
                  currentHPX = currentHPX + originalHPX/10;              
                } 
                foe2Flash = false;
                foe2Attack = false;
              }
            }                  
          }
        }        
      }
      else if (foe2HP <= 0) {
        foe2Attack = false;
      }
    }
    //foe3a
    if (foe3Attack == true) {  
      foe3Alive = false;  
      foe3whitet = foe3whiteint-int(millis()/1000); 
      if (foe3HP > 0) {
        if (foe3whitet > 0) {
          image(foeWhite, foe3CoordX, foe3CoordY, foe3SizeX, foe3SizeY);
        }
        else if (foe3whitet <= 0) {
          foe3flasht = foe3flashint - int(millis()/1000);
          if (foe3flasht > 0) {
            image(foe3, foe3CoordX, foe3CoordY, foe3SizeX, foe3SizeY);
          }
          else if (foe3flasht <= 0) {
            foe3redt = foe3redint-int(millis()/1000);
            if (foe3redt > 0) {
              image(foeRed, foe3CoordX, foe3CoordY, foe3SizeX, foe3SizeY);
            }
            else if (foe3redt <= 0) {
              foe3flash2t = foe3flash2int - int(millis()/1000);
              if (foe3flash2t > 0) {
                image(foe3, foe3CoordX, foe3CoordY, foe3SizeX, foe3SizeY);
                foe3Flash = true;
              }
              else if (foe3flash2t <= 0 && foe3Interupt == false) {
                if (shield == true) {
                  foe3Attack = false;
                  attackBlocked = true;
                
                  foe3interval = int(millis()/1000) + 5;
                  foe3whiteint = int(millis()/1000) + 3; 
                  foe3flashint = int(millis()/1000) + 3;
                  foe3redint = int(millis()/1000) + 3; 
                  foe3flash2int = int(millis()/1000) + 3;
                }
                else if (shield == false) {
                
                  playerAttacked = true;
                  foe2Alive = false;
                  foe1Alive = false;                 
                    
                  foe3interval = int(millis()/1000) + 5;
                  foe3whiteint = int(millis()/1000) + 3;
                  foe3flashint = int(millis()/1000) + 3;
                  foe3redint = int(millis()/1000) + 3;
                  foe3flash2int = int(millis()/1000) + 3;
                  playerHP -= 10;
                  HPbar = HPbar - originalHPbar/10;
                  currentHPX = currentHPX + originalHPX/10;              
                } 
                foe3Flash = false;
                foe3Attack = false;
              }
            }                  
          }
        }        
      }
      else if (foe3HP <= 0) {
        foe3Attack = false;
      }
    }    
//stage2
    if (foe4Attack == true) {  
      foe4Alive = false;  
      foe4whitet = foe4whiteint-int(millis()/1000); 
      if (foe4HP > 0) {
        if (foe4whitet > 0) {
          image(foeWhite, foe4CoordX, foe4CoordY, foe4SizeX, foe4SizeY);
        }
        else if (foe4whitet <= 0) {
          foe4flasht = foe4flashint - int(millis()/1000);
          if (foe4flasht > 0) {
            image(foe4, foe4CoordX, foe4CoordY, foe4SizeX, foe4SizeY);
          }
          else if (foe4flasht <= 0) {
            foe4redt = foe4redint-int(millis()/1000);
            if (foe4redt > 0) {
              image(foeRed, foe4CoordX, foe4CoordY, foe4SizeX, foe4SizeY);
            }
            else if (foe4redt <= 0) {
              foe4flash2t = foe4flash2int - int(millis()/1000);
              if (foe4flash2t > 0) {
                image(foe4, foe4CoordX, foe4CoordY, foe4SizeX, foe4SizeY);
                foe4Flash = true;
              }
              else if (foe4flash2t <= 0 && foe4Interupt == false) {
                if (shield == true) {
                  foe4Attack = false;
                  attackBlocked = true;
                
                  foe4interval = int(millis()/1000) + 5;
                  foe4whiteint = int(millis()/1000) + 3; 
                  foe4flashint = int(millis()/1000) + 3;
                  foe4redint = int(millis()/1000) + 3; 
                  foe4flash2int = int(millis()/1000) + 3;
                }
                else if (shield == false) {
                
                  playerAttacked = true;
                  foe5Alive = false;
                  foe6Alive = false;  
                  foe7Alive = false;
                  foe8Alive = false;
                    
                  foe4interval = int(millis()/1000) + 5;
                  foe4whiteint = int(millis()/1000) + 3;
                  foe4flashint = int(millis()/1000) + 3;
                  foe4redint = int(millis()/1000) + 3;
                  foe4flash2int = int(millis()/1000) + 3;
                  playerHP -= 10;
                  HPbar = HPbar - originalHPbar/10;
                  currentHPX = currentHPX + originalHPX/10;              
                } 
                foe4Flash = false;
                foe4Attack = false;
              }
            }                  
          }
        }        
      }
      else if (foe4HP <= 0) {
        foe4Attack = false;
      }
    }
    if (foe5Attack == true) {  
      foe5Alive = false;  
      foe5whitet = foe5whiteint-int(millis()/1000); 
      if (foe5HP > 0) {
        if (foe5whitet > 0) {
          image(foeWhite, foe5CoordX, foe5CoordY, foe5SizeX, foe5SizeY);
        }
        else if (foe5whitet <= 0) {
          foe5flasht = foe5flashint - int(millis()/1000);
          if (foe5flasht > 0) {
            image(foe5, foe5CoordX, foe5CoordY, foe5SizeX, foe5SizeY);
          }
          else if (foe5flasht <= 0) {
            foe5redt = foe5redint-int(millis()/1000);
            if (foe5redt > 0) {
              image(foeRed, foe5CoordX, foe5CoordY, foe5SizeX, foe5SizeY);
            }
            else if (foe5redt <= 0) {
              foe5flash2t = foe5flash2int - int(millis()/1000);
              if (foe5flash2t > 0) {
                image(foe5, foe5CoordX, foe5CoordY, foe5SizeX, foe5SizeY);
                foe5Flash = true;
              }
              else if (foe5flash2t <= 0 && foe5Interupt == false) {
                if (shield == true) {
                  foe5Attack = false;
                  attackBlocked = true;
                
                  foe5interval = int(millis()/1000) + 5;
                  foe5whiteint = int(millis()/1000) + 3; 
                  foe5flashint = int(millis()/1000) + 3;
                  foe5redint = int(millis()/1000) + 3; 
                  foe5flash2int = int(millis()/1000) + 3;
                }
                else if (shield == false) {
                
                  playerAttacked = true;
                  foe4Alive = false;
                  foe6Alive = false;  
                  foe7Alive = false;
                  foe8Alive = false;
                    
                  foe5interval = int(millis()/1000) + 5;
                  foe5whiteint = int(millis()/1000) + 3;
                  foe5flashint = int(millis()/1000) + 3;
                  foe5redint = int(millis()/1000) + 3;
                  foe5flash2int = int(millis()/1000) + 3;
                  playerHP -= 10;
                  HPbar = HPbar - originalHPbar/10;
                  currentHPX = currentHPX + originalHPX/10;              
                } 
                foe5Flash = false;
                foe5Attack = false;
              }
            }                  
          }
        }        
      }
      else if (foe5HP <= 0) {
        foe5Attack = false;
      }
    }    
    if (foe6Attack == true) {  
      foe6Alive = false;  
      foe6whitet = foe6whiteint-int(millis()/1000); 
      if (foe6HP > 0) {
        if (foe6whitet > 0) {
          image(foeWhite, foe6CoordX, foe6CoordY, foe6SizeX, foe6SizeY);
        }
        else if (foe6whitet <= 0) {
          foe6flasht = foe6flashint - int(millis()/1000);
          if (foe6flasht > 0) {
            image(foe6, foe6CoordX, foe6CoordY, foe6SizeX, foe6SizeY);
          }
          else if (foe6flasht <= 0) {
            foe6redt = foe6redint-int(millis()/1000);
            if (foe6redt > 0) {
              image(foeRed, foe6CoordX, foe6CoordY, foe6SizeX, foe6SizeY);
            }
            else if (foe6redt <= 0) {
              foe6flash2t = foe6flash2int - int(millis()/1000);
              if (foe6flash2t > 0) {
                image(foe6, foe6CoordX, foe6CoordY, foe6SizeX, foe6SizeY);
                foe6Flash = true;
              }
              else if (foe6flash2t <= 0 && foe6Interupt == false) {
                if (shield == true) {
                  foe6Attack = false;
                  attackBlocked = true;
                
                  foe6interval = int(millis()/1000) + 5;
                  foe6whiteint = int(millis()/1000) + 3; 
                  foe6flashint = int(millis()/1000) + 3;
                  foe6redint = int(millis()/1000) + 3; 
                  foe6flash2int = int(millis()/1000) + 3;
                }
                else if (shield == false) {
                
                  playerAttacked = true;
                  foe4Alive = false;
                  foe5Alive = false;  
                  foe7Alive = false;
                  foe8Alive = false;
                    
                  foe6interval = int(millis()/1000) + 5;
                  foe6whiteint = int(millis()/1000) + 3;
                  foe6flashint = int(millis()/1000) + 3;
                  foe6redint = int(millis()/1000) + 3;
                  foe6flash2int = int(millis()/1000) + 3;
                  playerHP -= 10;
                  HPbar = HPbar - originalHPbar/10;
                  currentHPX = currentHPX + originalHPX/10;              
                } 
                foe6Flash = false;
                foe6Attack = false;
              }
            }                  
          }
        }        
      }
      else if (foe6HP <= 0) {
        foe6Attack = false;
      }
    }
    if (foe7Attack == true) {  
      foe7Alive = false;  
      foe7whitet = foe7whiteint-int(millis()/1000); 
      if (foe7HP > 0) {
        if (foe7whitet > 0) {
          image(foeWhite, foe7CoordX, foe7CoordY, foe7SizeX, foe7SizeY);
        }
        else if (foe7whitet <= 0) {
          foe7flasht = foe7flashint - int(millis()/1000);
          if (foe7flasht > 0) {
            image(foe7, foe7CoordX, foe7CoordY, foe7SizeX, foe7SizeY);
          }
          else if (foe7flasht <= 0) {
            foe7redt = foe7redint-int(millis()/1000);
            if (foe7redt > 0) {
              image(foeRed, foe7CoordX, foe7CoordY, foe7SizeX, foe7SizeY);
            }
            else if (foe7redt <= 0) {
              foe7flash2t = foe7flash2int - int(millis()/1000);
              if (foe7flash2t > 0) {
                image(foe7, foe7CoordX, foe7CoordY, foe7SizeX, foe7SizeY);
                foe7Flash = true;
              }
              else if (foe7flash2t <= 0 && foe7Interupt == false) {
                if (shield == true) {
                  foe7Attack = false;
                  attackBlocked = true;
                
                  foe7interval = int(millis()/1000) + 5;
                  foe7whiteint = int(millis()/1000) + 3; 
                  foe7flashint = int(millis()/1000) + 3;
                  foe7redint = int(millis()/1000) + 3; 
                  foe7flash2int = int(millis()/1000) + 3;
                }
                else if (shield == false) {
                
                  playerAttacked = true;
                  foe4Alive = false;
                  foe5Alive = false;  
                  foe6Alive = false;
                  foe8Alive = false;
                    
                  foe7interval = int(millis()/1000) + 5;
                  foe7whiteint = int(millis()/1000) + 3;
                  foe7flashint = int(millis()/1000) + 3;
                  foe7redint = int(millis()/1000) + 3;
                  foe7flash2int = int(millis()/1000) + 3;
                  playerHP -= 10;
                  HPbar = HPbar - originalHPbar/10;
                  currentHPX = currentHPX + originalHPX/10;              
                } 
                foe7Flash = false;
                foe7Attack = false;
              }
            }                  
          }
        }        
      }
      else if (foe7HP <= 0) {
        foe7Attack = false;
      }
    }   
    if (foe8Attack == true) {  
      foe8Alive = false;  
      foe8whitet = foe7whiteint-int(millis()/1000); 
      if (foe8HP > 0) {
        if (foe8whitet > 0) {
          image(foeWhite, foe8CoordX, foe8CoordY, foe8SizeX, foe8SizeY);
        }
        else if (foe8whitet <= 0) {
          foe8flasht = foe8flashint - int(millis()/1000);
          if (foe8flasht > 0) {
            image(foe8, foe8CoordX, foe8CoordY, foe8SizeX, foe8SizeY);
          }
          else if (foe8flasht <= 0) {
            foe8redt = foe8redint-int(millis()/1000);
            if (foe8redt > 0) {
              image(foeRed, foe8CoordX, foe8CoordY, foe8SizeX, foe8SizeY);
            }
            else if (foe8redt <= 0) {
              foe8flash2t = foe8flash2int - int(millis()/1000);
              if (foe8flash2t > 0) {
                image(foe8, foe8CoordX, foe8CoordY, foe8SizeX, foe8SizeY);
                foe8Flash = true;
              }
              else if (foe8flash2t <= 0 && foe8Interupt == false) {
                if (shield == true) {
                  foe8Attack = false;
                  attackBlocked = true;
                
                  foe8interval = int(millis()/1000) + 5;
                  foe8whiteint = int(millis()/1000) + 3; 
                  foe8flashint = int(millis()/1000) + 3;
                  foe8redint = int(millis()/1000) + 3; 
                  foe8flash2int = int(millis()/1000) + 3;
                }
                else if (shield == false) {
                
                  playerAttacked = true;
                  foe4Alive = false;
                  foe5Alive = false;  
                  foe6Alive = false;
                  foe7Alive = false;
                    
                  foe8interval = int(millis()/1000) + 5;
                  foe8whiteint = int(millis()/1000) + 3;
                  foe8flashint = int(millis()/1000) + 3;
                  foe8redint = int(millis()/1000) + 3;
                  foe8flash2int = int(millis()/1000) + 3;
                  playerHP -= 10;
                  HPbar = HPbar - originalHPbar/10;
                  currentHPX = currentHPX + originalHPX/10;              
                } 
                foe8Flash = false;
                foe8Attack = false;
              }
            }                  
          }
        }        
      }
      else if (foe8HP <= 0) {
        foe8Attack = false;
      }
    }    
    if (shield == true) {
      shieldt = shieldInterval - int(millis()/1000);
      if (shieldt > 0) {
        if (attackBlocked == false) {
          fill(70, 100, 0, 190);
          if (tutorialStage == true) {
            foeTdisapp = true;
            foeT2disapp = true;
            foeT3disapp = true;
            if (foeTHP > 0) {
              image(foetutorial, foetutorialX, foetutorialY, foetutorialSizeX, foetutorialSizeY);
            }
            if (foeT2HP > 0) {
              image(foeT2, foeT2X, foeT2Y, foeT2SizeX, foeT2SizeY);
            }
            if (foeT3HP > 0) {
              image(foeT3, foeT3X, foeT3Y, foeT3SizeX, foeT3SizeY);
            }
          }   
          if (stage1 == true) {
            foe1disapp = true;
            foe2disapp = true;
            foe3disapp = true;
            if (foe1HP > 0) {
              image(foe1, foe1CoordX, foe1CoordY, foe1SizeX, foe1SizeY);
            }
            if (foe2HP > 0) {
              image(foe2, foe2CoordX, foe2CoordY, foe2SizeX, foe2SizeY);
            }
            if (foe3HP > 0) {
              image(foe3, foe3CoordX, foe3CoordY, foe3SizeX, foe3SizeY);
            }
          }   
          if (stage2 == true) {
            foe4disapp = true;
            foe5disapp = true;
            foe6disapp = true;
            foe7disapp = true;
            foe8disapp = true;
            if (foe4HP > 0) {
              image(foe4, foe4CoordX, foe4CoordY, foe4SizeX, foe4SizeY);
            }
            if (foe5HP > 0) {
              image(foe5, foe5CoordX, foe5CoordY, foe5SizeX, foe5SizeY);
            }
            if (foe6HP > 0) {
              image(foe6, foe6CoordX, foe6CoordY, foe6SizeX, foe6SizeY);
            }
            if (foe7HP > 0) {
              image(foe7, foe7CoordX, foe7CoordY, foe7SizeX, foe7SizeY);
            }
            if (foe8HP > 0) {
              image(foe8, foe8CoordX, foe8CoordY, foe8SizeX, foe8SizeY);
            }            
          }           
          image(violinUI, 251, height - 156, 240, 156);
          image(tromboneD, 7, height - 157, 244, 156);
          image(shieldD, width - 253, height - 157, 244, 156);              
              
          rect(0, 0, 1100, 900);              
          setGradient(currentHPX, 50, HPbar, 40, c2, c1, 3);
          noFill();
          stroke(#9B9B9B);
          rect(originalHPX - 3, 50 - 2.5, originalHPbar + 5, 40 + 6);                   
       
          setGradient(currentShieldBarX, height-105, shieldBar, 15, c3, c4, 2);
          setGradient(currentViolinBarX, height-105, violinBar, 15, c3, c4, 2); 
          setGradient(currentTromboneBarX, height-105, tromboneBar, 15, c3, c4, 2);
        
          strokeWeight(3);
          noFill();
  
          strokeWeight(3);
        
          if (weapon == "Violin") {
            stroke(#FFCE46);
            rect(252, height - 148, 235, 135, 8);          
          }
          if (weapon == "Trombone") {
            stroke(#FFCE46);
            rect(13, height - 148, 235, 135, 8);
          }
        }
        if(attackBlocked == true) {
          fill(70, 100, 0, 190);
          image(background, 0, -15, width, height);
          if (tutorialStage == true) {
            foeTdisapp = true;
            foeT2disapp = true;
            foeT3disapp = true;                
            if (foeTHP > 0) {
              image(foetutorial, foetutorialX, foetutorialY - 20, foetutorialSizeX, foetutorialSizeY);
            }
            if (foeT2HP > 0) {
              image(foeT2, foeT2X, foeT2Y - 20, foeT2SizeX, foeT2SizeY);
            }
            if (foeT3HP > 0) {
              image(foeT3, foeT3X, foeT3Y - 20, foeT3SizeX, foeT3SizeY);
            }
          } 
          if (stage1 == true) {
            foe1disapp = true;
            foe2disapp = true;
            foe3disapp = true;
            if (foe1HP > 0) {
              image(foe1, foe1CoordX, foe1CoordY - 20, foe1SizeX, foe1SizeY);
            }
            if (foe2HP > 0) {
              image(foe2, foe2CoordX, foe2CoordY - 20, foe2SizeX, foe2SizeY);
            }
            if (foe3HP > 0) {
              image(foe3, foe3CoordX, foe3CoordY - 20, foe3SizeX, foe3SizeY);
            }
          }  
          if (stage2 == true) {
            foe4disapp = true;
            foe5disapp = true;
            foe6disapp = true;
            foe7disapp = true;
            foe8disapp = true;
            if (foe4HP > 0) {
              image(foe4, foe4CoordX, foe4CoordY - 20, foe4SizeX, foe4SizeY);
            }
            if (foe5HP > 0) {
              image(foe5, foe5CoordX, foe5CoordY - 20, foe5SizeX, foe5SizeY);
            }
            if (foe6HP > 0) {
              image(foe6, foe6CoordX, foe6CoordY - 20, foe6SizeX, foe6SizeY);
            }
            if (foe7HP > 0) {
              image(foe7, foe7CoordX, foe7CoordY - 20, foe7SizeX, foe7SizeY);
            }
            if (foe8HP > 0) {
              image(foe8, foe8CoordX, foe8CoordY - 20, foe8SizeX, foe8SizeY);
            }            
          }   
          image(violinUI, 251, height - 156, 240, 156);
          image(tromboneD, 7, height - 157, 244, 156);
          image(shieldD, width - 253, height - 157, 244, 156);              
              
          rect(0, 0, 1100, 900);
          setGradient(currentHPX, 50, HPbar, 40, c2, c1, 3);
          noFill();
          stroke(#9B9B9B);
          rect(originalHPX - 3, 50 - 2.5, originalHPbar + 5, 40 + 6);    
          
          setGradient(currentShieldBarX, height-105, shieldBar, 15, c3, c4, 2);
          setGradient(currentViolinBarX, height-105, violinBar, 15, c3, c4, 2);
          setGradient(currentTromboneBarX, height-105, tromboneBar, 15, c3, c4, 2);
        
          strokeWeight(3);
          noFill();
              
          strokeWeight(3);
        
          if (weapon == "Violin") {
            stroke(#FFCE46);
            rect(252, height - 148, 235, 135, 8);          
          }
          if (weapon == "Trombone") {
            stroke(#FFCE46);
            rect(13, height - 148, 235, 135, 8);
          }                
             
          attackBlocked = false;
        }
        if (foe1Attack == true) {
          attackBlocked = true;
        }
        if (foe2Attack == true) {
          attackBlocked = true;
        }
        if (foe3Attack == true) {
          attackBlocked = true;
        }
        if (foe4Attack == true) {
          attackBlocked = true;
        }
        if (foe5Attack == true) {
          attackBlocked = true;
        }
        if (foeTFlash == true) {
          attackBlocked = true;
        }
        
        if (foe6Attack == true) {
          attackBlocked = true;
        }     
        if (foe7Attack == true) {
          attackBlocked = true;
        }  
        if (foe8Attack == true) {
          attackBlocked = true;
        }        
   
       } 
       if (shieldt == 0) {
         shield = false;
         if (foeTHP > 0) {
           foeTAlive = true;
         }   
         if (foe1HP > 0) {
           foe1Alive = true;
         }        
         if (foe2HP > 0) {
           foe2Alive = true;
         }
         if (foe3HP > 0) {
           foe3Alive = true;
         }     
         if (foe4HP > 0) {
           foe4Alive = true;
         }   
         if (foe5HP > 0) {
           foe5Alive = true;
         }   
         if (foe6HP > 0) {
           foe6Alive = true;
         }  
         if (foe7HP > 0) {
           foe7Alive = true;
         }  
         if (foe8HP > 0) {
           foe8Alive = true;
         }         
       }
    }
    else if (shield == false) {
      if (tutorialStage == true) {
        foeTdisapp = false;
        foeT2disapp = false;
        foeT3disapp = false;
      }
      if (stage1 == true) {
        foe1disapp = false;
        foe2disapp = false;
        foe3disapp = false;
      } 
      if (stage2 == true) {
        foe4disapp = false;
        foe5disapp = false;
        foe6disapp = false;
        foe7disapp = false;
        foe8disapp = false;
      }      
    }
    
    if (tutorialStage == true) {
      if(foeTAlive == true) {  
        if (foeTdisapp == false) {
          image(foetutorial, foetutorialX, foetutorialY, foetutorialSizeX, foetutorialSizeY);
        }
        if (foeTAttack == false && foeTHP > 0) {
          foeTt = foeTinterval-int(millis()/1000);
            
          if(foeTt <= 0){
            //try making all these ints + 1
            //for first attack and not first attack
            if (firstTAttack == true) {
               foeTwhiteint = int(millis()/1000) + 1;
               foeTflashint = int(millis()/1000) + 2;
               foeTredint = int(millis()/1000) + 3;
               foeTflash2int = int(millis()/1000) + 4;              
               
            }
            else if (firstTAttack == false) {
              foeTwhiteint += 3;
              foeTflashint += 4;
              foeTredint += 5;
              foeTflash2int += 6;              
            }           
              
            foeTdisapp = true;
            foeTAttack = true;
            foeTAlive = false;
            firstTAttack = false;
          }
        }
      }   
      if(foeT2Alive == true) {
        if (foeT2disapp == false) {
          image(foeT2, foeT2X, foeT2Y, foeT2SizeX, foeT2SizeY);
        }
      }
      if(foeT3Alive == true) {
        if (foeT3disapp == false) {
          image(foeT3, foeT3X, foeT3Y, foeT3SizeX, foeT3SizeY);
        } 
      }        
    }
    else if (stage1 == true) {
      if(foe1Alive == true) {
        if (foe1disapp == false) {
          image(foe1, foe1CoordX, foe1CoordY, foe1SizeX, foe1SizeY);
        }
        if (foe1Attack == false && foe1HP > 0) {
          foe1t = foe1interval-int(millis()/1000);
            
          if(foe1t <= 0){
            //try making all these ints + 1
            //for first attack and not first attack
            if (first1Attack == true) {
               foe1whiteint = int(millis()/1000) + 1;
               foe1flashint = int(millis()/1000) + 2;
               foe1redint = int(millis()/1000) + 3;
               foe1flash2int = int(millis()/1000) + 4;              
               
            }
            else if (first1Attack == false) {
              //may have to change
              foe1whiteint += 3;
              foe1flashint += 4;
              foe1redint += 5;
              foe1flash2int += 6;              
            }           
              
            foe1disapp = true;
            foe1Attack = true;
            foe1Alive = false;
            first1Attack = false;
          }
        }        
      }  
      if (foe2Alive == true) {
        if (foe2disapp == false) {
          image(foe2, foe2CoordX, foe2CoordY, foe2SizeX, foe2SizeY);
        }    
        //foe2c
        if (foe2Attack == false && foe2HP > 0) {
          foe2t = foe2interval-int(millis()/1000);
            
          if(foe2t <= 0){
            //try making all these ints + 1
            //for first attack and not first attack
            if (first2Attack == true) {
               foe2whiteint = int(millis()/1000) + 1;
               foe2flashint = int(millis()/1000) + 2;
               foe2redint = int(millis()/1000) + 3;
               foe2flash2int = int(millis()/1000) + 4;              
               
            }
            else if (first2Attack == false) {
              //may have to change
              foe2whiteint += 3;
              foe2flashint += 4;
              foe2redint += 5;
              foe2flash2int += 6;              
            }           
              
            foe2disapp = true;
            foe2Attack = true;
            foe2Alive = false;
            first2Attack = false;
          }
        }        
      }
      if(foe3Alive == true) {
        if (foe3disapp == false) {
          image(foe3, foe3CoordX, foe3CoordY, foe3SizeX, foe3SizeY);
        }    
        if (foe3Attack == false && foe3HP > 0) {
          foe3t = foe3interval-int(millis()/1000);
            
          if(foe3t <= 0){
            if (first3Attack == true) {
               foe3whiteint = int(millis()/1000) + 1;
               foe3flashint = int(millis()/1000) + 2;
               foe3redint = int(millis()/1000) + 3;
               foe3flash2int = int(millis()/1000) + 4;              
               
            }
            else if (first3Attack == false) {
              //may have to change
              foe3whiteint += 3;
              foe3flashint += 4;
              foe3redint += 5;
              foe3flash2int += 6;              
            }           
              
            foe3disapp = true;
            foe3Attack = true;
            foe3Alive = false;
            first3Attack = false;
          }
        }
      }      
    }
    else if (stage2 == true) {
      if (foe4Alive == true) {
        if (foe4disapp == false) {
          image(foe4, foe4CoordX, foe4CoordY, foe4SizeX, foe4SizeY);
        }
        if (foe4Attack == false && foe4HP > 0) {
          foe4t = foe4interval-int(millis()/1000);
            
          if(foe4t <= 0){
            if (first4Attack == true) {
               foe4whiteint = int(millis()/1000) + 1;
               foe4flashint = int(millis()/1000) + 2;
               foe4redint = int(millis()/1000) + 3;
               foe4flash2int = int(millis()/1000) + 4;              
               
            }
            else if (first4Attack == false) {
              //may have to change
              foe4whiteint += 3;
              foe4flashint += 4;
              foe4redint += 5;
              foe4flash2int += 6;              
            }           
              
            foe4disapp = true;
            foe4Attack = true;
            foe4Alive = false;
            first4Attack = false;
          }
        }        
      }
      if (foe5Alive == true) {
        if (foe5disapp == false) {
          image(foe5, foe5CoordX, foe5CoordY, foe5SizeX, foe5SizeY);
        }
        if (foe5Attack == false && foe5HP > 0) {
          foe5t = foe4interval-int(millis()/1000);
            
          if(foe5t <= 0){
            if (first5Attack == true) {
               foe5whiteint = int(millis()/1000) + 1;
               foe5flashint = int(millis()/1000) + 2;
               foe5redint = int(millis()/1000) + 3;
               foe5flash2int = int(millis()/1000) + 4;              
               
            }
            else if (first5Attack == false) {
              //may have to change
              foe5whiteint += 3;
              foe5flashint += 4;
              foe5redint += 5;
              foe5flash2int += 6;              
            }           
              
            foe5disapp = true;
            foe5Attack = true;
            foe5Alive = false;
            first5Attack = false;
          }
        }        
      }  
      if (foe6Alive == true) {
        if (foe6disapp == false) {
          image(foe6, foe6CoordX, foe6CoordY, foe6SizeX, foe6SizeY);
        }
        if (foe6Attack == false && foe6HP > 0) {
          foe6t = foe6interval-int(millis()/1000);
            
          if(foe6t <= 0){
            if (first6Attack == true) {
               foe6whiteint = int(millis()/1000) + 1;
               foe6flashint = int(millis()/1000) + 2;
               foe6redint = int(millis()/1000) + 3;
               foe6flash2int = int(millis()/1000) + 4;              
               
            }
            else if (first6Attack == false) {
              //may have to change
              foe6whiteint += 3;
              foe6flashint += 4;
              foe6redint += 5;
              foe6flash2int += 6;              
            }           
              
            foe6disapp = true;
            foe6Attack = true;
            foe6Alive = false;
            first6Attack = false;
          }
        }        
      }
      if (foe7Alive == true) {
        if (foe7disapp == false) {
          image(foe7, foe7CoordX, foe7CoordY, foe7SizeX, foe7SizeY);
        }
        if (foe7Attack == false && foe7HP > 0) {
          foe7t = foe7interval-int(millis()/1000);
            
          if(foe7t <= 0){
            if (first7Attack == true) {
               foe7whiteint = int(millis()/1000) + 1;
               foe7flashint = int(millis()/1000) + 2;
               foe7redint = int(millis()/1000) + 3;
               foe7flash2int = int(millis()/1000) + 4;              
               
            }
            else if (first7Attack == false) {
              //may have to change
              foe7whiteint += 3;
              foe7flashint += 4;
              foe7redint += 5;
              foe7flash2int += 6;              
            }           
              
            foe7disapp = true;
            foe7Attack = true;
            foe7Alive = false;
            first7Attack = false;
          }
        }        
      }  
      if (foe8Alive == true) {
        if (foe8disapp == false) {
          image(foe8, foe8CoordX, foe8CoordY, foe8SizeX, foe8SizeY);
        }
        if (foe8Attack == false && foe8HP > 0) {
          foe8t = foe8interval-int(millis()/1000);
            
          if(foe8t <= 0){
            if (first8Attack == true) {
               foe8whiteint = int(millis()/1000) + 1;
               foe8flashint = int(millis()/1000) + 2;
               foe8redint = int(millis()/1000) + 3;
               foe8flash2int = int(millis()/1000) + 4;              
               
            }
            else if (first8Attack == false) {
              //may have to change
              foe8whiteint += 3;
              foe8flashint += 4;
              foe8redint += 5;
              foe8flash2int += 6;              
            }           
              
            foe8disapp = true;
            foe8Attack = true;
            foe8Alive = false;
            first8Attack = false;
          }
        }        
      }      
    }
  }
}
void keyPressed () {
  if ((key == 's' || key == 'S') && (titlePage == false && messageOver == false)) {
    message1 = false;
    message2 = false;
    message3 = false;
    message4 = false;
    message5 = false;
    message6 = false;
    messageViolin = false;
    messageTrombone = false;
    messageTrombone2 = false;
    messageShield = false;
    messageShield2 = false;
    messageAttacked = false;
    messageInterupt = false;
    messageLast = false;

    messageOver = true;
    tutorialStage = true;
    minim.stop();
    player = minim.loadFile("Battle.mp3", 800);
    player.play();
    player.shiftGain(player.getGain(),-15,FADE);
    player.loop();
  }  
  if ((key == 'w' || key == 'W')) {
    weapon = "Violin";
  }
  if (key == 'a' || key == 'A') {
    weapon = "Trombone";
  }
}  
void mousePressed () {
  color damageWave = #DEA3DA;
  if (messageOver == false) {
    if (mouseButton == RIGHT && titlePage == true) {
      titlePage = false;
      message1 = true;
      minim.stop();
      player = minim.loadFile("Intro and Tutorial.mp3", 700);
      player.play();
      player.shiftGain(player.getGain(),-15,FADE);
      player.loop();      
    }
    else if (mouseButton == RIGHT && message1 == true) {
      message1 = false;
      message2 = true;      
    }
    else if (mouseButton == RIGHT && message2 == true) {
      message2 = false;
      message3 = true;
    }
    else if (mouseButton == LEFT && message2 == true) {
      message2 = false;
      message1 = true;
    }
    else if (mouseButton == RIGHT && message3 == true) {
      message3 = false;
      message4 = true;
    }
    else if (mouseButton == LEFT && message3 == true) {
      message3 = false;
      message2 = true;
    }    
    else if (mouseButton == RIGHT && message4 == true) {
      message4 = false;
      message5 = true;
    }
    else if (mouseButton == LEFT && message4 == true) {
      message4 = false;
      message3 = true;
    }    
    else if (mouseButton == RIGHT && message5 == true) {
      message5 = false;
      message6 = true;
    }
    else if (mouseButton == LEFT && message5 == true) {
      message5 = false;
      message4 = true;
    }
    else if (mouseButton == RIGHT && message6 == true) {
      message6 = false;
      messageViolin = true;
    }
    else if (mouseButton == LEFT && message6 == true) {
      message6 = false;
      message5 = true;
    }    
    else if (mouseButton == RIGHT && messageViolin == true) {
      messageViolin = false;
      messageTrombone = true;
    }
    else if (mouseButton == LEFT && messageViolin == true) {
      messageViolin = false;
      message6 = true;
    }    
    else if (mouseButton == RIGHT && messageTrombone == true) {
      messageTrombone = false;
      messageTrombone2 = true;
    }
    else if (mouseButton == LEFT && messageTrombone == true) {
      messageTrombone = false;
      messageViolin = true;
    }    
    else if (mouseButton == RIGHT && messageTrombone2 == true) {
      messageTrombone2 = false;
      messageShield = true;
    }  
    else if (mouseButton == LEFT && messageTrombone2 == true) {
      messageTrombone2 = false;
      messageTrombone = true;
    }    
    else if (mouseButton == RIGHT && messageShield == true) {
      messageShield = false;
      messageShield2 = true;
    }  
    else if (mouseButton == LEFT && messageShield == true) {
      messageShield = false;
      messageTrombone2 = true;
    }
    else if (mouseButton == RIGHT && messageShield2 == true) {
      messageShield2 = false;
      messageAttacked = true;
    }  
    else if (mouseButton == LEFT && messageShield2 == true) {
      messageShield2 = false;
      messageShield = true;
    }
    else if (mouseButton == RIGHT && messageAttacked == true) {
      messageAttacked = false;
      messageInterupt = true;
    }  
    else if (mouseButton == LEFT && messageAttacked == true) {
      messageAttacked = false;
      messageShield2 = true;
    }
    else if (mouseButton == RIGHT && messageInterupt == true) {
      messageInterupt = false;
      messageLast = true;
    }  
    else if (mouseButton == LEFT && messageInterupt == true) {
      messageInterupt = false;
      messageAttacked = true;
    }     
    else if (mouseButton == RIGHT && messageLast == true) {
      messageLast = false;
      messageOver = true;
      tutorialStage = true;
      minim.stop();
      player = minim.loadFile("Battle.mp3", 800);
      player.play();
      player.shiftGain(player.getGain(),-15,FADE);
      player.loop();      
    }  
    else if (mouseButton == LEFT && messageLast == true) {
      messageLast = false;
      messageInterupt = true;
    }   
  }
   
  else if (messageOver == true && playerAlive == true) {    
    if (mouseButton == RIGHT && shieldDrained == false && shield == false) {
      player4 = minim4.loadFile("shielding.mp3", 600);
      player4.play();
      if ((mouseX <= width && mouseX > 0) && (mouseY <= height && mouseY > 0)) {
        shieldInterval = int(millis()/1000) + 2;

        shieldBar -= originalShieldBar/2;

        currentShieldBarX += originalShieldBar/2;
        shield = true;
        if (shieldBar == 0) {
          shieldDrained = true;
          shieldReplenish = int(millis()/1000) + 5 + 3;
        }

      }
    }
    else if (mouseButton == RIGHT && shieldDrained == false && shield == true) {
      player4 = minim4.loadFile("shielding.mp3", 600);
      player4.play();    
      if ((mouseX <= width && mouseX > 0) && (mouseY <= height && mouseY > 0)) {
        shieldInterval = int(millis()/1000) + 2;
        shieldBar -= originalShieldBar/2;
        currentShieldBarX += originalShieldBar/2;
        if (shieldBar == 0) {
          shieldDrained = true;
          shieldReplenish = int(millis()/1000) + 5 + 3;
        }

      }
    }
    else if (mouseButton == LEFT) {
    
      cursorX = mouseX;
      cursorY = mouseY;
      
      if (weapon == "Trombone") {   
        if (tromboneBar > 0 && tromboneDrained == false) {
          tromboneBar -= originalWeaponBar/2;
          currentTromboneBarX += originalWeaponBar/2; 
          if (monsterTrombone == true) {
            monsterTrombone = false; 
            if (firstBlast == true) {
              firstBlast = false;
              secondBlast = true;
            }
            else if (secondBlast == true) {
              firstBlast = true;
              secondBlast = false;
            }

            if (shield == true) {
              shield = false;
              if (shieldt == 1) {
                shieldInterval += 2;
              }
            }            
            
            if (tromboneBar == 0) {
              tromboneDrained = true;
              tromboneReplenish = int(millis()/1000) + 15;
            }            
          }
          if (tutorialStage == true) {
            if (firstBlast == true) {
              if ((mouseX <= width && mouseX >= 0) && (mouseY <= height && mouseY >= 0)) {
                textSize(32);
                image(background, 0, -15, width, height);
                if (foeTHP > 0) {
                  image(foetutorial, foetutorialX - 10, foetutorialY - 60, foetutorialSizeX * 1.1, foetutorialSizeY * 1.1);
                  image(musicNote2, foetutorialX + 5, foetutorialY - 60, 100, 100);
                  text("  " + 15, foetutorialX + foetutorialSizeX/5, foetutorialY - 60);
                  foeTHP -= 15;
                }
                if (foeTHP > 0) {
                  image(foeT2, foeT2X - 10, foeT2Y - 60, foeT2SizeX * 1.1, foeT2SizeY * 1.1);
                  image(musicNote2, foeT2X + 5, foeT2Y - 60, 100, 100);
                  text("  " + 15, foeT2X + foeT2SizeX/5, foeT2Y - 60);
                  foeT2HP -= 15;
                }
                if (foeT3HP > 0) {
                  image(foeT3, foeT3X - 10, foeT3Y - 60, foeT3SizeX * 1.1, foeT3SizeY * 1.1);
                  image(musicNote2, foeT3X + 5, foeT3Y - 60, 100, 100);
                  text("  " + 15, foeT3X + foeT3SizeX/5, foeT3Y - 60);
                  foeT3HP -= 15;
                }

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, width/2 + 250, width/2 + 240);
                ellipse(cursorX, cursorY, width/2 + 120, width/2 + 110);
                ellipse(cursorX, cursorY, width/2 - 10, width/2);
                ellipse(cursorX, cursorY, width/2 - 140, width/2 - 150);
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);

                fill(#E505FF);
                image(violinUI, 251, height - 156, 240, 156);
                image(tromboneD, 7, height - 157, 244, 156);
                image(shieldD, width - 253, height - 157, 244, 156);                
              
                setGradient(currentHPX, 50, HPbar, 40, c2, c1, 3);
                noFill();
                stroke(#9B9B9B);
                rect(originalHPX - 3, 50 - 2.5, originalHPbar + 5, 40 + 6);                
          
                setGradient(currentShieldBarX, height-105, shieldBar, 15, c3, c4, 2);
                setGradient(currentViolinBarX, height-105, violinBar, 15, c3, c4, 2); //Violin
                setGradient(currentTromboneBarX, height-105, tromboneBar, 15, c3, c4, 2);

                strokeWeight(3);
                stroke(#FFCE46);
          
                rect(13, height - 148, 235, 135, 8);
                foeTattacked = true;
                monsterTrombone = true;
                player2 = minim2.loadFile("firstTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE); 
                if (foeTFlash == true && foeTattacked == true) {
                  foeTAttack = false;
                  foeTAlive = true;
                  foeTInterupt = true; 
                  foeTFlash = false;
                  foeTinterval = int(millis()/1000) + 5;
                  
                  foeTwhiteint = int(millis()/1000) + 3; 
                  foeTflashint = int(millis()/1000) + 3;
                  foeTredint = int(millis()/1000) + 3; 
                  foeTflash2int = int(millis()/1000) + 3;              
             
                }        

                if (foeTInterupt == true) {
                  foeTInterupt = false;
                  foeTattacked = false;       
                }                
              }              
            }
            if (secondBlast == true) {
              if (mouseX <= foetutorialSizeX + foetutorialX + 140 && mouseX >= foetutorialX - 140
              && (mouseY <= foetutorialSizeY + foetutorialY + 140 && mouseY >= foetutorialY - 140) && foeTHP > 0) { 

                image(foetutorial, foetutorialX - 10, foetutorialY - 60, foetutorialSizeX * 1.1, foetutorialSizeY * 1.1);

                image(musicNote2, foetutorialX + 5, foetutorialY - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foeTHP -= 10;
                text("  " + 10, foetutorialX + foetutorialSizeX/5, foetutorialY - 60);
                
                fill(#E505FF);

                foeTattacked = true;
                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE); 
                if (foeTFlash == true && foeTattacked == true) {
                  foeTAttack = false;
                  foeTAlive = true;
                  foeTInterupt = true;
                  foeTFlash = false;
                  foeTinterval = int(millis()/1000) + 5;
                  foeTwhiteint = int(millis()/1000) + 3; 
                  foeTflashint = int(millis()/1000) + 3;
                  foeTredint = int(millis()/1000) + 3; 
                  foeTflash2int = int(millis()/1000) + 3;              
             
                }        

                if (foeTInterupt == true) {
                  foeTInterupt = false;
                  foeTattacked = false;      
                }                
              }
              if (mouseX <= foeT2SizeX + foeT2X + 140 && mouseX >= foeT2X - 140
              && (mouseY <= foeT2SizeY + foeT2Y + 140 && mouseY >= foeT2Y - 140) && foeT2HP > 0) { 
                
                image(foeT2, foeT2X - 10, foeT2Y - 60, foeT2SizeX * 1.1, foeT2SizeY * 1.1);
          
                image(musicNote2, foeT2X + 5, foeT2Y - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foeT2HP -= 10;
                text("  " + 10, foeT2X + foeT2SizeX/5, foeT2Y - 60);
                
                fill(#E505FF);

                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE);                
              }
              if (mouseX <= foeT3SizeX + foeT3X + 140 && mouseX >= foeT3X - 140
              && (mouseY <= foeT3SizeY + foeT3Y + 140 && mouseY >= foeT3Y - 140) && foeT3HP > 0) { 

                image(foeT3, foeT3X - 10, foeT3Y - 60, foeT3SizeX * 1.1, foeT3SizeY * 1.1);
          
                image(musicNote2, foeT3X + 5, foeT3Y - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foeT3HP -= 10;
                text("  " + 10, foeT3X + foeT3SizeX/5, foeT3Y - 60);
                
                fill(#E505FF);
              
                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE);                
              }              
            }
     
          }
          if (stage1 == true) {
            if (firstBlast == true) {
              if ((mouseX <= width && mouseX >= 0) && (mouseY <= height && mouseY >= 0)) {
                textSize(32);
                image(background, 0, -15, width, height);
                if (foe1HP > 0) {
                  image(foe1, foe1CoordX - 10, foe1CoordY - 60, foe1SizeX * 1.1, foe1SizeY * 1.1);
                  image(musicNote2, foe1CoordX + 5, foe1CoordY - 60, 100, 100);
                  text("  " + 15, foe1CoordX + foe1SizeX/5, foe1CoordY - 60);
                  foe1HP -= 15;
                }
                if (foe2HP > 0) {
                  image(foe2, foe2CoordX - 10, foe2CoordY - 60, foe2SizeX * 1.1, foe2SizeY * 1.1);
                  image(musicNote2, foe2CoordX + 5, foe2CoordY - 60, 100, 100);
                  text("  " + 15, foe2CoordX + foe2SizeX/5, foe2CoordY - 60);
                  foe2HP -= 15;
                }
                if (foe3HP > 0) {
                  image(foe3, foe3CoordX - 10, foe3CoordY - 60, foe3SizeX * 1.1, foe3SizeY * 1.1);
                  image(musicNote2, foe3CoordX + 5, foe3CoordY - 60, 100, 100);
                  text("  " + 15, foe3CoordX + foe3SizeX/5, foe3CoordY - 60);
                  foe3HP -= 15;
                }

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, width/2 + 250, width/2 + 240);
                ellipse(cursorX, cursorY, width/2 + 120, width/2 + 110);
                ellipse(cursorX, cursorY, width/2 - 10, width/2);
                ellipse(cursorX, cursorY, width/2 - 140, width/2 - 150);
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);

                fill(#E505FF);
                image(violinUI, 251, height - 156, 240, 156);
                image(tromboneD, 7, height - 157, 244, 156);
                image(shieldD, width - 253, height - 157, 244, 156);                
              
                setGradient(currentHPX, 50, HPbar, 40, c2, c1, 3);
                noFill();
                stroke(#9B9B9B);
                rect(originalHPX - 3, 50 - 2.5, originalHPbar + 5, 40 + 6);                
          
                setGradient(currentShieldBarX, height-105, shieldBar, 15, c3, c4, 2);
                setGradient(currentViolinBarX, height-105, violinBar, 15, c3, c4, 2); //Violin
                setGradient(currentTromboneBarX, height-105, tromboneBar, 15, c3, c4, 2);

                strokeWeight(3);
                stroke(#FFCE46);
          
                rect(13, height - 148, 235, 135, 8);
                foe1attacked = true;
                foe2attacked = true;
                foe3attacked = true;
                
                monsterTrombone = true;
                player2 = minim2.loadFile("firstTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE); 
                //Need to add code to all foes
                if (foe1Flash == true && foe1attacked == true) {
                  foe1Attack = false;
                  foe1Alive = true;
                  foe1Interupt = true; 
                  foe1Flash = false;
                  foe1interval = int(millis()/1000) + 5;
                  
                  foe1whiteint = int(millis()/1000) + 3; 
                  foe1flashint = int(millis()/1000) + 3;
                  foe1redint = int(millis()/1000) + 3; 
                  foe1flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe1Interupt == true) {
                  foe1Interupt = false;
                  foe1attacked = false;       
                }   
                if (foe2Flash == true && foe2attacked == true) {
                  foe2Attack = false;
                  foe2Alive = true;
                  foe2Interupt = true; 
                  foe2Flash = false;
                  foe2interval = int(millis()/1000) + 5;
                  
                  foe2whiteint = int(millis()/1000) + 3; 
                  foe2flashint = int(millis()/1000) + 3;
                  foe2redint = int(millis()/1000) + 3; 
                  foe2flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe2Interupt == true) {
                  foe2Interupt = false;
                  foe2attacked = false;       
                } 
                if (foe3Flash == true && foe3attacked == true) {
                  foe3Attack = false;
                  foe3Alive = true;
                  foe3Interupt = true; 
                  foe3Flash = false;
                  foe3interval = int(millis()/1000) + 5;
                  
                  foe3whiteint = int(millis()/1000) + 3; 
                  foe3flashint = int(millis()/1000) + 3;
                  foe3redint = int(millis()/1000) + 3; 
                  foe3flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe3Interupt == true) {
                  foe3Interupt = false;
                  foe3attacked = false;       
                }                 
              }              
            }
            //need to add interupt code to other foes
            if (secondBlast == true) {
              if (mouseX <= foe1SizeX + foe1CoordX + 140 && mouseX >= foe1CoordX - 140
              && (mouseY <= foe1SizeY + foe1CoordY + 140 && mouseY >= foe1CoordY - 140) && foe1HP > 0) { 

                image(foe1, foe1CoordX - 10, foe1CoordY - 60, foe1SizeX * 1.1, foe1SizeY * 1.1);

                image(musicNote2, foe1CoordX + 5, foe1CoordY - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foe1HP -= 10;
                text("  " + 10, foe1CoordX + foe1SizeX/5, foe1CoordY - 60);
                
                fill(#E505FF);

                foe1attacked = true;
                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE); 
                if (foe1Flash == true && foe1attacked == true) {
                  foe1Attack = false;
                  foe1Alive = true;
                  foe1Interupt = true; 
                  foe1Flash = false;
                  foe1interval = int(millis()/1000) + 5;
                  
                  foe1whiteint = int(millis()/1000) + 3; 
                  foe1flashint = int(millis()/1000) + 3;
                  foe1redint = int(millis()/1000) + 3; 
                  foe1flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe1Interupt == true) {
                  foe1Interupt = false;
                  foe1attacked = false;       
                }                
              }
              if (mouseX <= foe2SizeX + foe2CoordX + 140 && mouseX >= foe2CoordX - 140
              && (mouseY <= foe2SizeY + foe2CoordY + 140 && mouseY >= foe2CoordY - 140) && foe2HP > 0) { 
                
                image(foe2, foe2CoordX - 10, foe2CoordY - 60, foe2SizeX * 1.1, foe2SizeY * 1.1);
          
                image(musicNote2, foe2CoordX + 5, foe2CoordY - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foe2HP -= 10;
                text("  " + 10, foe2CoordX + foe2SizeX/5, foe2CoordY - 60);
                
                fill(#E505FF);

                foe2attacked = true;
                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE);  
                if (foe2Flash == true && foe2attacked == true) {
                  foe2Attack = false;
                  foe2Alive = true;
                  foe2Interupt = true; 
                  foe2Flash = false;
                  foe2interval = int(millis()/1000) + 5;
                  
                  foe2whiteint = int(millis()/1000) + 3; 
                  foe2flashint = int(millis()/1000) + 3;
                  foe2redint = int(millis()/1000) + 3; 
                  foe2flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe2Interupt == true) {
                  foe2Interupt = false;
                  foe2attacked = false;       
                }                
              }
              if (mouseX <= foe3SizeX + foe3CoordX + 140 && mouseX >= foe3CoordX - 140
              && (mouseY <= foe3SizeY + foe3CoordY + 140 && mouseY >= foe3CoordY - 140) && foe3HP > 0) { 

                image(foe3, foe3CoordX - 10, foe3CoordY - 60, foe3SizeX * 1.1, foe3SizeY * 1.1);
          
                image(musicNote2, foe3CoordX + 5, foe3CoordY - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foe3HP -= 10;
                text("  " + 10, foe3CoordX + foe3SizeX/5, foe3CoordY - 60);
                
                fill(#E505FF);
              
                foe3attacked = true;
                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE);  
                if (foe3Flash == true && foe3attacked == true) {
                  foe3Attack = false;
                  foe3Alive = true;
                  foe3Interupt = true; 
                  foe3Flash = false;
                  foe3interval = int(millis()/1000) + 5;
                  
                  foe3whiteint = int(millis()/1000) + 3; 
                  foe3flashint = int(millis()/1000) + 3;
                  foe3redint = int(millis()/1000) + 3; 
                  foe3flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe3Interupt == true) {
                  foe3Interupt = false;
                  foe3attacked = false;       
                }                
              }              
            }            
          }
          if (stage2 == true) {
            if (firstBlast == true) {
              if ((mouseX <= width && mouseX >= 0) && (mouseY <= height && mouseY >= 0)) {
                textSize(32);
                image(background, 0, -15, width, height);
                if (foe4HP > 0) {
                  image(foe4, foe4CoordX - 10, foe4CoordY - 60, foe4SizeX * 1.1, foe4SizeY * 1.1);
                  image(musicNote2, foe4CoordX + 5, foe4CoordY - 60, 100, 100);
                  text("  " + 15, foe4CoordX + foe4SizeX/5, foe4CoordY - 60);
                  foe4HP -= 15;
                }
                if (foe5HP > 0) {
                  image(foe5, foe5CoordX - 10, foe5CoordY - 60, foe5SizeX * 1.1, foe5SizeY * 1.1);
                  image(musicNote2, foe5CoordX + 5, foe5CoordY - 60, 100, 100);
                  text("  " + 15, foe5CoordX + foe5SizeX/5, foe5CoordY - 60);
                  foe5HP -= 15;
                }
                if (foe6HP > 0) {
                  image(foe6, foe6CoordX - 10, foe6CoordY - 60, foe6SizeX * 1.1, foe6SizeY * 1.1);
                  image(musicNote2, foe6CoordX + 5, foe6CoordY - 60, 100, 100);
                  text("  " + 15, foe6CoordX + foe6SizeX/5, foe6CoordY - 60);
                  foe6HP -= 15;
                }
                if (foe7HP > 0) {
                  image(foe7, foe7CoordX - 10, foe7CoordY - 60, foe7SizeX * 1.1, foe7SizeY * 1.1);
                  image(musicNote2, foe7CoordX + 5, foe7CoordY - 60, 100, 100);
                  text("  " + 15, foe7CoordX + foe7SizeX/5, foe7CoordY - 60);
                  foe7HP -= 15;
                }
                if (foe8HP > 0) {
                  image(foe8, foe8CoordX - 10, foe8CoordY - 60, foe8SizeX * 1.1, foe8SizeY * 1.1);
                  image(musicNote2, foe8CoordX + 5, foe8CoordY - 60, 100, 100);
                  text("  " + 15, foe8CoordX + foe8SizeX/5, foe8CoordY - 60);
                  foe8HP -= 15;
                }             
                
                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, width/2 + 250, width/2 + 240);
                ellipse(cursorX, cursorY, width/2 + 120, width/2 + 110);
                ellipse(cursorX, cursorY, width/2 - 10, width/2);
                ellipse(cursorX, cursorY, width/2 - 140, width/2 - 150);
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);

                fill(#E505FF);
                image(violinUI, 251, height - 156, 240, 156);
                image(tromboneD, 7, height - 157, 244, 156);
                image(shieldD, width - 253, height - 157, 244, 156);                
              
                setGradient(currentHPX, 50, HPbar, 40, c2, c1, 3);
                noFill();
                stroke(#9B9B9B);
                rect(originalHPX - 3, 50 - 2.5, originalHPbar + 5, 40 + 6);                
          
                setGradient(currentShieldBarX, height-105, shieldBar, 15, c3, c4, 2);
                setGradient(currentViolinBarX, height-105, violinBar, 15, c3, c4, 2); //Violin
                setGradient(currentTromboneBarX, height-105, tromboneBar, 15, c3, c4, 2);

                strokeWeight(3);
                stroke(#FFCE46);
          
                rect(13, height - 148, 235, 135, 8);
                foe4attacked = true;
                foe5attacked = true;
                foe6attacked = true;
                foe7attacked = true;
                foe8attacked = true;
                
                monsterTrombone = true;
                player2 = minim2.loadFile("firstTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE); 
                //Need to add code to all foes
                if (foe4Flash == true && foe4attacked == true) {
                  foe4Attack = false;
                  foe4Alive = true;
                  foe4Interupt = true; 
                  foe4Flash = false;
                  foe4interval = int(millis()/1000) + 5;
                  
                  foe4whiteint = int(millis()/1000) + 3; 
                  foe4flashint = int(millis()/1000) + 3;
                  foe4redint = int(millis()/1000) + 3; 
                  foe4flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe4Interupt == true) {
                  foe4Interupt = false;
                  foe4attacked = false;       
                }   
                if (foe5Flash == true && foe5attacked == true) {
                  foe5Attack = false;
                  foe5Alive = true;
                  foe5Interupt = true; 
                  foe5Flash = false;
                  foe5interval = int(millis()/1000) + 5;
                  
                  foe5whiteint = int(millis()/1000) + 3; 
                  foe5flashint = int(millis()/1000) + 3;
                  foe5redint = int(millis()/1000) + 3; 
                  foe5flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe5Interupt == true) {
                  foe5Interupt = false;
                  foe5attacked = false;       
                } 
                if (foe6Flash == true && foe6attacked == true) {
                  foe6Attack = false;
                  foe6Alive = true;
                  foe6Interupt = true; 
                  foe6Flash = false;
                  foe6interval = int(millis()/1000) + 5;
                  
                  foe6whiteint = int(millis()/1000) + 3; 
                  foe6flashint = int(millis()/1000) + 3;
                  foe6redint = int(millis()/1000) + 3; 
                  foe6flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe6Interupt == true) {
                  foe6Interupt = false;
                  foe6attacked = false;       
                }   
                if (foe7Flash == true && foe7attacked == true) {
                  foe7Attack = false;
                  foe7Alive = true;
                  foe7Interupt = true; 
                  foe7Flash = false;
                  foe7interval = int(millis()/1000) + 5;
                  
                  foe7whiteint = int(millis()/1000) + 3; 
                  foe7flashint = int(millis()/1000) + 3;
                  foe7redint = int(millis()/1000) + 3; 
                  foe7flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe7Interupt == true) {
                  foe7Interupt = false;
                  foe7attacked = false;       
                } 
                if (foe8Flash == true && foe8attacked == true) {
                  foe8Attack = false;
                  foe8Alive = true;
                  foe8Interupt = true; 
                  foe8Flash = false;
                  foe8interval = int(millis()/1000) + 5;
                  
                  foe8whiteint = int(millis()/1000) + 3; 
                  foe8flashint = int(millis()/1000) + 3;
                  foe8redint = int(millis()/1000) + 3; 
                  foe8flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe8Interupt == true) {
                  foe8Interupt = false;
                  foe8attacked = false;       
                }                
              }              
            }
            if (secondBlast == true) {
              if (mouseX <= foe4SizeX + foe4CoordX + 140 && mouseX >= foe4CoordX - 140
              && (mouseY <= foe4SizeY + foe4CoordY + 140 && mouseY >= foe4CoordY - 140) && foe4HP > 0) { 

                image(foe4, foe4CoordX - 10, foe4CoordY - 60, foe4SizeX * 1.1, foe4SizeY * 1.1);

                image(musicNote2, foe4CoordX + 5, foe4CoordY - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foe4HP -= 10;
                text("  " + 10, foe4CoordX + foe4SizeX/5, foe4CoordY - 60);
                
                fill(#E505FF);

                foe4attacked = true;
                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE); 
                if (foe4Flash == true && foe4attacked == true) {
                  foe4Attack = false;
                  foe4Alive = true;
                  foe4Interupt = true; 
                  foe4Flash = false;
                  foe4interval = int(millis()/1000) + 5;
                  
                  foe4whiteint = int(millis()/1000) + 3; 
                  foe4flashint = int(millis()/1000) + 3;
                  foe4redint = int(millis()/1000) + 3; 
                  foe4flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe4Interupt == true) {
                  foe4Interupt = false;
                  foe4attacked = false;       
                }                
              }
              if (mouseX <= foe5SizeX + foe5CoordX + 140 && mouseX >= foe5CoordX - 140
              && (mouseY <= foe5SizeY + foe5CoordY + 140 && mouseY >= foe5CoordY - 140) && foe5HP > 0) { 
                
                image(foe5, foe5CoordX - 10, foe5CoordY - 60, foe5SizeX * 1.1, foe5SizeY * 1.1);
          
                image(musicNote2, foe5CoordX + 5, foe5CoordY - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foe5HP -= 10;
                text("  " + 10, foe5CoordX + foe5SizeX/5, foe5CoordY - 60);
                
                fill(#E505FF);

                foe5attacked = true;
                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE);  
                if (foe5Flash == true && foe5attacked == true) {
                  foe5Attack = false;
                  foe5Alive = true;
                  foe5Interupt = true; 
                  foe5Flash = false;
                  foe5interval = int(millis()/1000) + 5;
                  
                  foe5whiteint = int(millis()/1000) + 3; 
                  foe5flashint = int(millis()/1000) + 3;
                  foe5redint = int(millis()/1000) + 3; 
                  foe5flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe5Interupt == true) {
                  foe5Interupt = false;
                  foe5attacked = false;       
                }                
              }
              if (mouseX <= foe6SizeX + foe6CoordX + 140 && mouseX >= foe6CoordX - 140
              && (mouseY <= foe6SizeY + foe6CoordY + 140 && mouseY >= foe6CoordY - 140) && foe6HP > 0) { 

                image(foe6, foe6CoordX - 10, foe6CoordY - 60, foe6SizeX * 1.1, foe6SizeY * 1.1);
          
                image(musicNote2, foe6CoordX + 5, foe6CoordY - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foe6HP -= 10;
                text("  " + 10, foe6CoordX + foe6SizeX/5, foe6CoordY - 60);
                
                fill(#E505FF);
              
                foe6attacked = true;
                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE);  
                if (foe6Flash == true && foe6attacked == true) {
                  foe6Attack = false;
                  foe6Alive = true;
                  foe6Interupt = true; 
                  foe6Flash = false;
                  foe6interval = int(millis()/1000) + 5;
                  
                  foe6whiteint = int(millis()/1000) + 3; 
                  foe6flashint = int(millis()/1000) + 3;
                  foe6redint = int(millis()/1000) + 3; 
                  foe6flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe6Interupt == true) {
                  foe6Interupt = false;
                  foe6attacked = false;       
                }                
              }
              if (mouseX <= foe7SizeX + foe7CoordX + 140 && mouseX >= foe7CoordX - 140
              && (mouseY <= foe7SizeY + foe7CoordY + 140 && mouseY >= foe7CoordY - 140) && foe7HP > 0) { 

                image(foe7, foe7CoordX - 10, foe7CoordY - 60, foe7SizeX * 1.1, foe7SizeY * 1.1);
          
                image(musicNote2, foe7CoordX + 5, foe7CoordY - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foe7HP -= 10;
                text("  " + 10, foe7CoordX + foe7SizeX/5, foe7CoordY - 60);
                
                fill(#E505FF);
              
                foe7attacked = true;
                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE);  
                if (foe7Flash == true && foe7attacked == true) {
                  foe7Attack = false;
                  foe7Alive = true;
                  foe7Interupt = true; 
                  foe7Flash = false;
                  foe7interval = int(millis()/1000) + 5;
                  
                  foe7whiteint = int(millis()/1000) + 3; 
                  foe7flashint = int(millis()/1000) + 3;
                  foe7redint = int(millis()/1000) + 3; 
                  foe7flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe7Interupt == true) {
                  foe7Interupt = false;
                  foe7attacked = false;       
                }                
              }  
              if (mouseX <= foe8SizeX + foe8CoordX + 140 && mouseX >= foe8CoordX - 140
              && (mouseY <= foe8SizeY + foe8CoordY + 140 && mouseY >= foe8CoordY - 140) && foe8HP > 0) { 

                image(foe8, foe8CoordX - 10, foe8CoordY - 60, foe8SizeX * 1.1, foe8SizeY * 1.1);
          
                image(musicNote2, foe8CoordX + 5, foe8CoordY - 60, 100, 100);

                noFill();
                strokeWeight(7);
                stroke(#FFC246);
                ellipse(cursorX, cursorY, 280, 280);
                ellipse(cursorX, cursorY , 200, 200);
                ellipse(cursorX, cursorY , 120, 120);
                ellipse(cursorX, cursorY , 60, 60);
                
                image(trombone, cursorX - 40, cursorY - 15, 100, 40);
      
                foe8HP -= 10;
                text("  " + 10, foe8CoordX + foe8SizeX/5, foe8CoordY - 60);
                
                fill(#E505FF);
              
                foe8attacked = true;
                monsterTrombone = true;
                player2 = minim2.loadFile("secondTrumpet.mp3", 500);
                player2.play();
                player2.shiftGain(player2.getGain(), -30,FADE);  
                if (foe8Flash == true && foe8attacked == true) {
                  foe8Attack = false;
                  foe8Alive = true;
                  foe8Interupt = true; 
                  foe8Flash = false;
                  foe8interval = int(millis()/1000) + 5;
                  
                  foe8whiteint = int(millis()/1000) + 3; 
                  foe8flashint = int(millis()/1000) + 3;
                  foe8redint = int(millis()/1000) + 3; 
                  foe8flash2int = int(millis()/1000) + 3;              
             
                }        
                if (foe8Interupt == true) {
                  foe8Interupt = false;
                  foe8attacked = false;       
                }                
              }              
            }            
          } //stage2 end
          
        }
      }
      if (weapon == "Violin") {
        if (violinBar > 0 && violinDrained == false) {
          violinBar -= originalWeaponBar/10;
          currentViolinBarX += originalWeaponBar/10;
          
          if (monsterViolin == true) {
            monsterViolin = false;
            if (shield == true) {
              shield = false;
              if (shieldt == 1) {
                shieldInterval += 2;
              }
            }

            if (violinBar == 0) {
              violinDrained = true;
              violinReplenish = int(millis()/1000) + 10;
            }
          }
          if (tutorialStage == true) {
            if (mouseX <= foetutorialSizeX + foetutorialX && mouseX >= foetutorialX
            && (mouseY <= foetutorialSizeY + foetutorialY && mouseY >= foetutorialY) && foeTHP > 0) { 

              image(foetutorial, foetutorialX - 15, foetutorialY - 30, foetutorialSizeX * 1.2, foetutorialSizeY * 1.2);
          
              image(musicNote1, foetutorialX + foetutorialSizeX/5, foetutorialY - foetutorialY/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              image(violin, cursorX, cursorY - 20, 46.5, 50);
      
              foeTHP -= damage;
              text("  " + damage, foetutorialX + foetutorialSizeX/4, foetutorialY - foetutorialY/11);
              fill(#E505FF);
              foeTattacked = true;
              monsterViolin = true;
              
              if (foeTFlash == true && foeTattacked == true) {
                foeTAttack = false;
                foeTAlive = true;
                foeTInterupt = true; 
                foeTFlash = false;
                foeTinterval = int(millis()/1000) + 5;
                foeTwhiteint = int(millis()/1000) + 3; 
                foeTflashint = int(millis()/1000) + 3;
                foeTredint = int(millis()/1000) + 3; 
                foeTflash2int = int(millis()/1000) + 3;   
                player2 = minim2.loadFile("violinFlinch.mp3", 500);
                player2.play();            
              }        
              else if (foeTFlash == false) {
                player2 = minim2.loadFile("violin.mp3", 400);
                player2.play();
              }
              if (foeTInterupt == true) {
                foeTInterupt = false;
                foeTattacked = false;     
              }              
            }
            if (mouseX <= foeT2SizeX + foeT2X && mouseX >= foeT2X
            && (mouseY <= foeT2SizeY + foeT2Y && mouseY >= foeT2Y) && foeT2HP > 0) { 

              image(foeT2, foeT2X - 15, foeT2Y - 30, foeT2SizeX * 1.2, foeT2SizeY * 1.2);
          
              image(musicNote1, foeT2X + foeT2SizeX/5, foeT2Y - foeT2Y/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              
              image(violin, cursorX, cursorY - 20, 46.5, 50);
              
              foeT2HP -= damage;
              text("  " + damage, foeT2X + foeT2SizeX/4, foeT2Y - foeT2Y/11);
              fill(#E505FF);
              monsterViolin = true;
              player2 = minim2.loadFile("violin.mp3", 400);
              player2.play();              
            } 
            if (mouseX <= foeT3SizeX + foeT3X && mouseX >= foeT3X
            && (mouseY <= foeT3SizeY + foeT3Y && mouseY >= foeT3Y) && foeT3HP > 0) { 

              image(foeT3, foeT3X - 15, foeT3Y - 30, foeT3SizeX * 1.2, foeT3SizeY * 1.2);
          
              image(musicNote1, foeT3X + foeT3SizeX/5, foeT3Y - foeT3Y/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              
              image(violin, cursorX, cursorY - 20, 46.5, 50);
      
              foeT3HP -= damage;
              text("  " + damage, foeT3X + foeT3SizeX/4, foeT3Y - foeT3Y/11);
              fill(#E505FF);
              monsterViolin = true;
              player2 = minim2.loadFile("violin.mp3", 400);
              player2.play();              
            }            
          }
          //stage1 
          if (stage1 == true) {
            if (mouseX <= foe1SizeX + foe1CoordX && mouseX >= foe1CoordX
            && (mouseY <= foe1SizeY + foe1CoordY && mouseY >= foe1CoordY) && foe1HP > 0) { 

              image(foe1, foe1CoordX - 15, foe1CoordY - 30, foe1SizeX * 1.2, foe1SizeY * 1.2);
          
              image(musicNote1, foe1CoordX + foe1SizeX/5, foe1CoordY - foe1CoordY/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              image(violin, cursorX, cursorY - 20, 46.5, 50);
      
              foe1HP -= damage;
              text("  " + damage, foe1CoordX + foe1SizeX/4, foe1CoordY - foe1CoordY/11);
              fill(#E505FF);
              foe1attacked = true;
              monsterViolin = true;
              
              if (foe1Flash == true && foe1attacked == true) {
                foe1Attack = false;
                foe1Alive = true;
                foe1Interupt = true; 
                foe1Flash = false;
                foe1interval = int(millis()/1000) + 5;
                foe1whiteint = int(millis()/1000) + 3; 
                foe1flashint = int(millis()/1000) + 3;
                foe1redint = int(millis()/1000) + 3; 
                foe1flash2int = int(millis()/1000) + 3;   
                player2 = minim2.loadFile("violinFlinch.mp3", 500);
                player2.play();            
              }        
              else if (foe1Flash == false) {
                player2 = minim2.loadFile("violin.mp3", 400);
                player2.play();
              }
              if (foe1Interupt == true) {
                foe1Interupt = false;
                foe1attacked = false;     
              }              
            }
            if (mouseX <= foe2SizeX + foe2CoordX && mouseX >= foe2CoordX
            && (mouseY <= foe2SizeY + foe2CoordY && mouseY >= foe2CoordY) && foe2HP > 0) { 

              image(foe2, foe2CoordX - 15, foe2CoordY - 30, foe2SizeX * 1.2, foe2SizeY * 1.2);
          
              image(musicNote1, foe2CoordX + foe2SizeX/5, foe2CoordY - foe2CoordY/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              
              image(violin, cursorX, cursorY - 20, 46.5, 50);
              
              foe2HP -= damage;
              text("  " + damage, foe2CoordX + foe2SizeX/4, foe2CoordY - foe2CoordY/11);
              fill(#E505FF);
              foe2attacked = true;
              monsterViolin = true;
   
              if (foe2Flash == true && foe2attacked == true) {
                foe2Attack = false;
                foe2Alive = true;
                foe2Interupt = true; 
                foe2Flash = false;
                foe2interval = int(millis()/1000) + 5;
                foe2whiteint = int(millis()/1000) + 3; 
                foe2flashint = int(millis()/1000) + 3;
                foe2redint = int(millis()/1000) + 3; 
                foe2flash2int = int(millis()/1000) + 3;   
                player2 = minim2.loadFile("violinFlinch.mp3", 500);
                player2.play();            
              }        
              else if (foe2Flash == false) {
                player2 = minim2.loadFile("violin.mp3", 400);
                player2.play();
              }
              if (foe2Interupt == true) {
                foe2Interupt = false;
                foe2attacked = false;     
              }              
            } 
            if (mouseX <= foe3SizeX + foe3CoordX && mouseX >= foe3CoordX
            && (mouseY <= foe3SizeY + foe3CoordY && mouseY >= foe3CoordY) && foe3HP > 0) { 

              image(foe3, foe3CoordX - 15, foe3CoordY - 30, foe3SizeX * 1.2, foe3SizeY * 1.2);
          
              image(musicNote1, foe3CoordX + foe3SizeX/5, foe3CoordY - foe3CoordY/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              
              image(violin, cursorX, cursorY - 20, 46.5, 50);
      
              foe3HP -= damage;
              text("  " + damage, foe3CoordX + foe3SizeX/4, foe3CoordY - foe3CoordY/11);
              fill(#E505FF);
              foe3attacked = true;
              monsterViolin = true;
              
              if (foe3Flash == true && foe3attacked == true) {
                foe3Attack = false;
                foe3Alive = true;
                foe3Interupt = true; 
                foe3Flash = false;
                foe3interval = int(millis()/1000) + 5;
                foe3whiteint = int(millis()/1000) + 3; 
                foe3flashint = int(millis()/1000) + 3;
                foe3redint = int(millis()/1000) + 3; 
                foe3flash2int = int(millis()/1000) + 3;   
                player2 = minim2.loadFile("violinFlinch.mp3", 500);
                player2.play();            
              }        
              else if (foe3Flash == false) {
                player2 = minim2.loadFile("violin.mp3", 400);
                player2.play();
              }
              if (foe3Interupt == true) {
                foe3Interupt = false;
                foe3attacked = false;     
              }              
            }            
          }
          if (stage2 == true) {
            if (mouseX <= foe4SizeX + foe4CoordX && mouseX >= foe4CoordX
            && (mouseY <= foe4SizeY + foe4CoordY && mouseY >= foe4CoordY) && foe4HP > 0) { 

              image(foe4, foe4CoordX - 15, foe4CoordY - 30, foe4SizeX * 1.2, foe4SizeY * 1.2);
          
              image(musicNote1, foe4CoordX + foe4SizeX/5, foe4CoordY - foe4CoordY/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              
              image(violin, cursorX, cursorY - 20, 46.5, 50);
      
              foe4HP -= damage;
              text("  " + damage, foe4CoordX + foe4SizeX/4, foe4CoordY - foe4CoordY/11);
              fill(#E505FF);
              foe4attacked = true;
              monsterViolin = true;
              
              if (foe4Flash == true && foe4attacked == true) {
                foe4Attack = false;
                foe4Alive = true;
                foe4Interupt = true; 
                foe4Flash = false;
                foe4interval = int(millis()/1000) + 5;
                foe4whiteint = int(millis()/1000) + 3; 
                foe4flashint = int(millis()/1000) + 3;
                foe4redint = int(millis()/1000) + 3; 
                foe4flash2int = int(millis()/1000) + 3;   
                player2 = minim2.loadFile("violinFlinch.mp3", 500);
                player2.play();            
              }        
              else if (foe4Flash == false) {
                player2 = minim2.loadFile("violin.mp3", 400);
                player2.play();
              }
              if (foe4Interupt == true) {
                foe4Interupt = false;
                foe4attacked = false;     
              }              
            }
            if (mouseX <= foe5SizeX + foe5CoordX && mouseX >= foe5CoordX
            && (mouseY <= foe5SizeY + foe5CoordY && mouseY >= foe5CoordY) && foe5HP > 0) { 

              image(foe5, foe5CoordX - 15, foe5CoordY - 30, foe5SizeX * 1.2, foe5SizeY * 1.2);
          
              image(musicNote1, foe5CoordX + foe5SizeX/5, foe5CoordY - foe5CoordY/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              
              image(violin, cursorX, cursorY - 20, 46.5, 50);
      
              foe5HP -= damage;
              text("  " + damage, foe5CoordX + foe5SizeX/4, foe5CoordY - foe5CoordY/11);
              fill(#E505FF);
              foe5attacked = true;
              monsterViolin = true;
              
              if (foe5Flash == true && foe5attacked == true) {
                foe5Attack = false;
                foe5Alive = true;
                foe5Interupt = true; 
                foe5Flash = false;
                foe5interval = int(millis()/1000) + 5;
                foe5whiteint = int(millis()/1000) + 3; 
                foe5flashint = int(millis()/1000) + 3;
                foe5redint = int(millis()/1000) + 3; 
                foe5flash2int = int(millis()/1000) + 3;   
                player2 = minim2.loadFile("violinFlinch.mp3", 500);
                player2.play();            
              }        
              else if (foe5Flash == false) {
                player2 = minim2.loadFile("violin.mp3", 400);
                player2.play();
              }
              if (foe5Interupt == true) {
                foe5Interupt = false;
                foe5attacked = false;     
              }              
            } 
            if (mouseX <= foe6SizeX + foe6CoordX && mouseX >= foe6CoordX
            && (mouseY <= foe6SizeY + foe6CoordY && mouseY >= foe6CoordY) && foe6HP > 0) { 

              image(foe6, foe6CoordX - 15, foe6CoordY - 30, foe6SizeX * 1.2, foe6SizeY * 1.2);
          
              image(musicNote1, foe6CoordX + foe6SizeX/5, foe6CoordY - foe6CoordY/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              
              image(violin, cursorX, cursorY - 20, 46.5, 50);
      
              foe6HP -= damage;
              text("  " + damage, foe6CoordX + foe6SizeX/4, foe6CoordY - foe6CoordY/11);
              fill(#E505FF);
              foe6attacked = true;
              monsterViolin = true;
              
              if (foe6Flash == true && foe6attacked == true) {
                foe6Attack = false;
                foe6Alive = true;
                foe6Interupt = true; 
                foe6Flash = false;
                foe6interval = int(millis()/1000) + 5;
                foe6whiteint = int(millis()/1000) + 3; 
                foe6flashint = int(millis()/1000) + 3;
                foe6redint = int(millis()/1000) + 3; 
                foe6flash2int = int(millis()/1000) + 3;   
                player2 = minim2.loadFile("violinFlinch.mp3", 500);
                player2.play();            
              }        
              else if (foe6Flash == false) {
                player2 = minim2.loadFile("violin.mp3", 400);
                player2.play();
              }
              if (foe6Interupt == true) {
                foe6Interupt = false;
                foe6attacked = false;     
              }              
            }
            if (mouseX <= foe7SizeX + foe7CoordX && mouseX >= foe7CoordX
            && (mouseY <= foe7SizeY + foe7CoordY && mouseY >= foe7CoordY) && foe7HP > 0) { 

              image(foe7, foe7CoordX - 15, foe7CoordY - 30, foe7SizeX * 1.2, foe7SizeY * 1.2);
          
              image(musicNote1, foe7CoordX + foe7SizeX/5, foe7CoordY - foe7CoordY/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              
              image(violin, cursorX, cursorY - 20, 46.5, 50);
      
              foe7HP -= damage;
              text("  " + damage, foe7CoordX + foe7SizeX/4, foe7CoordY - foe7CoordY/11);
              fill(#E505FF);
              foe7attacked = true;
              monsterViolin = true;
              
              if (foe7Flash == true && foe7attacked == true) {
                foe7Attack = false;
                foe7Alive = true;
                foe7Interupt = true; 
                foe7Flash = false;
                foe7interval = int(millis()/1000) + 5;
                foe7whiteint = int(millis()/1000) + 3; 
                foe7flashint = int(millis()/1000) + 3;
                foe7redint = int(millis()/1000) + 3; 
                foe7flash2int = int(millis()/1000) + 3;   
                player2 = minim2.loadFile("violinFlinch.mp3", 500);
                player2.play();            
              }        
              else if (foe7Flash == false) {
                player2 = minim2.loadFile("violin.mp3", 400);
                player2.play();
              }
              if (foe7Interupt == true) {
                foe7Interupt = false;
                foe7attacked = false;     
              }              
            } 
            if (mouseX <= foe8SizeX + foe8CoordX && mouseX >= foe8CoordX
            && (mouseY <= foe8SizeY + foe8CoordY && mouseY >= foe8CoordY) && foe8HP > 0) { 

              image(foe8, foe8CoordX - 15, foe8CoordY - 30, foe8SizeX * 1.2, foe8SizeY * 1.2);
          
              image(musicNote1, foe8CoordX + foe8SizeX/5, foe8CoordY - foe8CoordY/10, 100, 100);
      
              noFill();
              strokeWeight(5);
              stroke(damageWave);
              ellipse(cursorX, cursorY, 140, 140);
              ellipse(cursorX, cursorY , 100, 100);
              ellipse(cursorX, cursorY , 50, 50);
              
              image(violin, cursorX, cursorY - 20, 46.5, 50);
      
              foe8HP -= damage;
              text("  " + damage, foe8CoordX + foe8SizeX/4, foe8CoordY - foe8CoordY/11);
              fill(#E505FF);
              foe8attacked = true;
              monsterViolin = true;
              
              if (foe8Flash == true && foe8attacked == true) {
                foe8Attack = false;
                foe8Alive = true;
                foe8Interupt = true; 
                foe8Flash = false;
                foe8interval = int(millis()/1000) + 5;
                foe8whiteint = int(millis()/1000) + 3; 
                foe8flashint = int(millis()/1000) + 3;
                foe8redint = int(millis()/1000) + 3; 
                foe8flash2int = int(millis()/1000) + 3;   
                player2 = minim2.loadFile("violinFlinch.mp3", 500);
                player2.play();            
              }        
              else if (foe8Flash == false) {
                player2 = minim2.loadFile("violin.mp3", 400);
                player2.play();
              }
              if (foe8Interupt == true) {
                foe8Interupt = false;
                foe8attacked = false;     
              }              
            }//stage2 end            
            
          }
          
        }
      }
      if(foe1HP <= 0) {
        foe1Alive = false;
      }
      if(foe2HP <= 0) {
        foe2Alive = false;
      }
      if(foe3HP <= 0) {
        foe3Alive = false;
      }
      if (foe4HP <= 0) {
        foe4Alive = false;
      }  
      if (foe5HP <= 0) {
        foe5Alive = false;
      }
      if (foeTHP <= 0) {
        foeTAlive = false;
      }
      if (foeT2HP <= 0) {
        foeT2Alive = false;
      }
      if (foeT3HP <= 0) {
        foeT3Alive = false;
      }      
      if (foeTHP <= 0 && foeT2HP <= 0 && foeT3HP <= 0 && tutorialStage == true && playerAlive == true) {
        tutorialVictory = true;
        tutorialVictoryPage = true;
        tutorialStage = false;
        playerAlive = false; 
        minim.stop();

        player3 = minim3.loadFile("Victory.mp3", 800);
        player3.play();    
        player3.shiftGain(player3.getGain(),-15,FADE);
        player3.loop();          
      }      
      
      if (foe1HP <= 0 && foe2HP <= 0 && foe3HP <= 0 && stage1 == true && playerAlive == true) {
        victory = true;
        victoryPage = true;
        stage1 = false;
        stage1V = true;
        playerAlive = false; 
        minim.stop();
        
        player3 = minim3.loadFile("Victory.mp3", 800);
        player3.play();    
        player3.shiftGain(player3.getGain(),-15,FADE);
        player3.loop();      
      }
      if (foe4HP <= 0 && foe5HP <= 0 && foe6HP <= 0 && foe7HP <= 0 && foe8HP <= 0
      && stage2 == true && playerAlive == true) {
        victory = true;
        victoryPage = true;
        stage2 = false;
        stage2V = true;
        
        lastStageV = true;
        
        playerAlive = false; 
        minim.stop();
        
        player3 = minim3.loadFile("Victory.mp3", 800);
        player3.play();    
        player3.shiftGain(player3.getGain(),-15,FADE);
        player3.loop();      
      }      
      
    }
  }
  if (tutorialVictory == true) {
    if (mouseButton == RIGHT && tutorialVictoryPage == true) {
      tutorialVictoryPage = false;
      tutorialConclude = true;
      //tutorialEnd = true;
    }
    else if (mouseButton == RIGHT && tutorialConclude == true) {
      tutorialVictory = false;
      tutorialConclude = false;
      stage1 = true;
      warmUp = true;
      
      playerHP = 100;
      currentHP = playerHP;
      HPbar = originalHPbar;
      currentHPX = originalHPX;

      violinBar = 0;
      tromboneBar = 0;
      currentViolinBarX = 465;
      currentTromboneBarX = 225;
      shieldBar = 190;
      currentShieldBarX = originalShieldBarX;
      shieldDrained = false;
      playerAlive = true;
      weapon = "Violin";
      minim3.stop();
      
      player = minim.loadFile("Battle.mp3", 800);
      player.play();
      player.shiftGain(player.getGain(),-15,FADE);
      player.loop();      
    }

  }
  if (victory == true) {
    if (mouseButton == RIGHT && victoryPage == true) {
      victoryPage = false;
      if (lastStageV == true) {
        stayTuned = true;
      }
      else {
        victoryConclude = true;
      }
      //tutorialEnd = true;
    }
    //If I stop at this level, use musiccredits
    else if (mouseButton == RIGHT && victoryConclude == true) {
      victory = false; //need this because there will be multiple victories
      victoryConclude = false;
      //use boolean stagexvictory to determine victory
      if (stage1V == true) {
        stage2 = true;
      }
      warmUp = true;
      
      playerHP = 100;
      currentHP = playerHP;
      HPbar = originalHPbar;
      currentHPX = originalHPX;

      violinBar = 0;
      tromboneBar = 0;
      currentViolinBarX = 465;
      currentTromboneBarX = 225;
      shieldBar = 190;
      currentShieldBarX = originalShieldBarX;
      shieldDrained = false;
      playerAlive = true;
      weapon = "Violin";
      minim3.stop();
      
      player = minim.loadFile("Battle.mp3", 800);
      player.play();
      player.shiftGain(player.getGain(),-15,FADE);
      player.loop();      
    }
    else if (mouseButton == RIGHT && stayTuned == true) {
      stayTuned = false;
      musicCredits = true;
    }
    else if (mouseButton == RIGHT && musicCredits == true) {
      musicCredits = false;
      victory = false;
      
      warmUp = true;
  //reset first attacks
      firstTAttack = true; 
      first1Attack = true;
      first2Attack = true;
      first3Attack = true;
      first4Attack = true;
      first5Attack = true;
      first6Attack = true;
      first7Attack = true;
      first8Attack = true;
      
      playerHP = 100;
      currentHP = playerHP;
      HPbar = originalHPbar;
      currentHPX = originalHPX;
//reset all enemies
      foeTHP = 150;
      foeT2HP = 150;
      foeT3HP = 150;
      foe1HP = 150;
      foe2HP = 150;
      foe3HP = 150;
      foe4HP = 150;
      foe5HP = 150;
      foe6HP = 150;
      foe7HP = 150;
      foe8HP = 150;
      
      violinBar = 0;
      tromboneBar = 0;
      currentViolinBarX = 465;
      currentTromboneBarX = 225;
      shieldBar = 190;
      currentShieldBarX = originalShieldBarX;
      shieldDrained = false;
//reset all enemies
      foeTAlive = true;
      foeT2Alive = true;
      foeT3Alive = true;
      foe1Alive = true;
      foe2Alive = true;
      foe3Alive = true;
      foe4Alive = true;
      foe5Alive = true;
      foe6Alive = true;
      foe7Alive = true;
      foe8Alive = true;
      
      playerAlive = true;
      weapon = "Violin";
      
      titlePage = true;
      minim3.stop(); 
      messageOver = false;
      player = minim.loadFile("Title Theme.mp3", 800);
      player.play();
      player.shiftGain(player.getGain(),-15,FADE);
      player.loop();      
    }    
    else if (mouseButton == LEFT && musicCredits == true) {
      musicCredits = false;
      stayTuned = true;
    }    

  }  
  if (redTDead == true) {
    if (mouseButton == RIGHT && redDeadPage == true) {
      redDeadPage = false;
      tutorialDead = true;
      player3 = minim3.loadFile("death.mp3", 800);
      player3.play();    
      player3.shiftGain(player3.getGain(),-15,FADE);
      player3.loop();       
    }
    else if (mouseButton == RIGHT && tutorialDead == true) {
      tutorialDead = false;
      tutorialRestart = true;
    }
    //use this for starting another level
    //stageOne = true;
    else if (mouseButton == RIGHT && tutorialRestart == true) {
      warmUp = true;
      firstTAttack = true;
      playerHP = 100;
      currentHP = playerHP;
      HPbar = originalHPbar;
      currentHPX = originalHPX;
      foeTHP = 150;
      foeT2HP = 150;
      foeT3HP = 150;
      violinBar = 0;
      tromboneBar = 0;
      currentViolinBarX = 465;
      currentTromboneBarX = 225;
      shieldBar = 190;
      currentShieldBarX = originalShieldBarX;
      shieldDrained = false;
      foeTAlive = true;
      foeT2Alive = true;
      foeT3Alive = true;
      playerAlive = true;
      tutorialRestart = false;
      redTDead = false;
      weapon = "Violin";
      minim3.stop();
      
      player = minim.loadFile("Battle.mp3", 800);
      player.play();
      player.shiftGain(player.getGain(),-15,FADE);
      player.loop();      
    }
  }
  if (redDead == true) {
    if (mouseButton == RIGHT && redDeadPage == true) {
      redDeadPage = false;
      playerDead = true;
      player3 = minim3.loadFile("death.mp3", 800);
      player3.play();    
      player3.shiftGain(player3.getGain(),-15,FADE);
      player3.loop();      
      println("Here");
    }
    else if (mouseButton == RIGHT && playerDead == true) {
      playerDead = false;
      tryAgain = true;
    }
    //use this for starting another level
    //stageOne = true;
    else if (mouseButton == RIGHT && tryAgain == true) {
      warmUp = true;

      playerHP = 100;
      currentHP = playerHP;
      HPbar = originalHPbar;
      currentHPX = originalHPX;

      violinBar = 0;
      tromboneBar = 0;
      currentViolinBarX = 465;
      currentTromboneBarX = 225;
      shieldBar = 190;
      currentShieldBarX = originalShieldBarX;
      shieldDrained = false;
      weapon = "Violin";
      playerAlive = true;
      tryAgain = false;
      redDead = false;
      
      //depending on stage, different stage will be restarted
      if (stage1Dead == true) {
        stage1Dead = false;
        stage1 = true;
        first1Attack = true;
        first2Attack = true;
        first3Attack = true;        
        foe1HP = 150;
        foe2HP = 150;
        foe3HP = 150;  
        foe1Alive = true;
        foe2Alive = true;
        foe3Alive = true;      
      }
      if (stage2Dead == true) {
        stage2Dead = false;
        stage2 = true;
        first4Attack = true;
        first5Attack = true;
        first6Attack = true;
        first7Attack = true;
        first8Attack = true;
        foe4HP = 150;
        foe5HP = 150;
        foe6HP = 150; 
        foe7HP = 150;
        foe8HP = 150;
        foe4Alive = true;
        foe5Alive = true;
        foe6Alive = true;  
        foe7Alive = true;
        foe8Alive = true;
      }      
      
      minim3.stop();
      
      player = minim.loadFile("Battle.mp3", 800);
      player.play();
      player.shiftGain(player.getGain(),-15,FADE);
      player.loop();      
    }
  }  
}
void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == 3) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
  else if (axis == 2) { //Horizontal gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }
}
