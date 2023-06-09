// Create Variables for Password Field
String password = "";
boolean passwordClicked = false;

//Variable to for Print users button
String users="";
boolean printusers=false;

//Create State to Seperate the two screens
int state=0;

// Create variables for Username dropdown list and create a class to represent a dropdown list
class DropdownList {
  String[] options;  // array of options
  float x, y;  // list position
  float w, h;  // list size
  boolean expanded;  // list expanded flag
  String selectedOption;  // selected option
  
// Create Constructor
  DropdownList(String[] options, float x, float y, float w, float h) {
    this.options = options;
    this.x= x;
    this.y = y;
    this.w = w;
    this.h = h;
    expanded = false;
    selectedOption = null;
  }


void draw() {
if(state==0) //--------> Login Page
{
    background(100,18,0); 
    

///Physcial Password Field    
  fill(255,255,255);
  rect(100, 150, 150, 20);
  fill(0);
  if (passwordClicked) {
    
    String asterisks = "";
    for (int i = 0; i < password.length(); i++) {
      asterisks += "*";
    }
    text(asterisks, 105, 158);
   } 
  else {
    text("Click here to enter password", 105, 158);
  }

    fill(255, 255, 255);
    text("Password:", width/2-150, height/2+10);

///Username label
  fill(255,255,255);
  text("Username:", width/2-150, 110);
  
/// Draw Press Enter button Notification
    fill(255,255,255);
    rect(width/2-100, height/2+60, 170, 40);
    fill(255, 0, 0);
    text("Press Enter When Details Entered", width/2-100, height/2+80);

///Username Dropdown List Functionaility
    stroke(255);
    fill(255,255,255);
    rect(x, y, w, h);
    textAlign(LEFT, CENTER);
    if (selectedOption != null) {
      fill(0,0,0);
      text(selectedOption, x + 5, y + h/2);
    } else {
      fill(0,0,0);
      text("Select a name", x + 5, y + h/2);
    }
    if (expanded) {
      stroke(255,255, 255);
      fill(255,255,255);
      for (int i = 0; i < options.length; i++) {
        float optionY = y + h + (i+1) * h;
        rect(x, optionY, w, h);
        textAlign(LEFT, CENTER);
        if (options[i].equals(selectedOption)) {
          fill(255, 255, 255);
        } else {
          fill(0,0,0);
        }
        text(options[i], x + 5, optionY + h/2);
      }
    }
  }
  else if(state==1) //---------> Home Page
  {
     background(0,128,0); 
      fill(255,0,0);
    text("Welcome to the Home Page!!", 150, 150);
    
    ///Logout Button
    fill(255,255,255);
    rect(10,10,50,20);
    fill(255,0,0);
    text("Logout", 16, 16);
     
        
    ///Print All Profile names
    fill(255,255,255);
    rect(80,10,70,20);
    fill(255,0,0);
    text("Print Names", 86, 20);
    
    
    //Sort Username button
    fill(255,255,255);
    rect(170,10,70,20);
    fill(255,0,0);
    text("Sort Names", 178, 20);
      
  }
  if(printusers)
    fill(255,0,0);
    text(users,50,59);
}

  // check if the mouse is over the list
  boolean isMouseOver(){
    return mouseX >= x && mouseX <= x + w && mouseY >= y && mouseY <= y + h;
  }
  
  // Creating the list expansion
  void toggleExpansion() {
    expanded = !expanded;
  }
  
 //Clicking on the dropdown
  void mousePressed() {
    if (isMouseOver()) {
      toggleExpansion();
    } else if (expanded) {
      for (int i = 0; i < options.length; i++) {
        float optionY = y + h + (i+1) * h;
        if (mouseX >= x && mouseX <= x + w && mouseY >= optionY && mouseY <= optionY + h) {
          selectedOption = options[i];
          toggleExpansion();
        }
      }
    }
  }
}

/// Asscoiate names to the dropdown list
String[] names = {"joebernard567@gmail.com", "erica@gmail.com", "paul@gmail.com"};  
String[] fullname={"Joe Bernard","Erica","Paul"};
DropdownList dropdown;  

void setup() {
  size(400, 300);
  
  dropdown = new DropdownList(names, 100, 100, 150, 20);  // Create Dimensions for the dropdown list
}

void draw() {
  background(255,255,255); // Colour of the Dropdown 
  dropdown.draw();  
}

//Clicking on the username Dropdown
void mousePressed() {
  dropdown.mousePressed();  
}

//Clicking on the Password and Print Username fields
void mouseClicked() {
  if (mouseX >= 100 && mouseX <= 310 && mouseY >= 150 && mouseY <= 170) { ////----> Password field Co-Ordinates (Login Page)
           background(255,255,255); 

    passwordClicked = true; 
  }  
  else {
    passwordClicked = false;
  }
  if (mouseX >= 10 && mouseX <= 60 && mouseY >= 10 && mouseY <= 30) ///// ---------> Logout Button
  {
    state=0;
    users="";
    draw();
  }
  if (mouseX >= 80 && mouseX <= 150 && mouseY >= 10 && mouseY <= 30&& state==1) ////-----> Print Username Field (Home Page)
  {
    //print users
    users=printallusers();
    printusers=true;
     draw();
  }
  
  if (mouseX >= 173 && mouseX <= 240 && mouseY >= 10 && mouseY <= 30&& state==1) //// -----> Sort Usernames Field (Home Page)
  {
    //sort users
    users=sortbynames();
    printusers=true;
     draw();
  }

}

// Typing in the password field
void keyPressed() {
  if (passwordClicked) {
    if (key == BACKSPACE) {
      if (password.length() > 0) {
        password = password.substring(0, password.length()-1);
      }
    }
    else if (key == ENTER) {
      goToHomeScreen();
    } 
    else if (key != ENTER && key != RETURN && key != TAB && key != ESC) {
      password += key;
    }
  }

  }
  
/// ------> Login Screen Functionality 
String username;

boolean authentication()
{
if (password.equals("colleges23"))
{
 return true;
}
else 
  {
  return false;
  }
}
void goToHomeScreen()
{
  boolean result=authentication();
 if (result==true)
 {
   
 state=1;
 draw();
 }
 else 
 {
  text("Enter correct password",105, 285);
 }

}

// Home Page Functionality 

String sortbynames()
{
  fullname= sort(fullname);
  String sortedusers=printallusers();
  return sortedusers;
}

String printallusers()
{
  String users="";
  users = join(fullname, " : "); 
  return users;
}
