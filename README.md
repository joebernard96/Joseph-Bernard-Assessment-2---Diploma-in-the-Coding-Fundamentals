# Joseph-Bernard-Assessment-2---Diploma-in-the-Coding-Fundamentals

# Final Assessment - Joseph Bernard 

# Login Screen

Development - I placed all the Login features under an Integer Variable State=0, This was obviously because I wanted to separate out the Login Page and the Home Page. I did this using "Void Draw() { if(state==0)" and then drew all fields associated with the login screen in these brackets. 

## Username Field

Development- For the username field, what I decided to do was to create a dropdown by using the class function. for this I used the 2 String variables (one for the list of names and another for the option that would ultimately be selected), 2 Float variables (one for the x,y coordinates and one for the w,h) and a boolean (to expand the dropdown). I then used these variables to create the constructor. 

I then went about setting out the physical dimensions of the dropdown list and the functionality of the dropdown for the username. Here I used the selectedOption string variable and not (!) expression so that when the selected username from the dropdown is selected it comes up in the text box in black writing with a white background. Using the "else" command then when nothing had been selected and the field is empty it contains the writing ("Select a Name"). I then used an if statement and the "expanded" function (which I connected later with a void toggleExpansion function) to create the dimensions for the dropdown list when it is expanded. 

For the action of clicking on the dropdown then, I used a Boolean called "isMouseOver" and then put in the coordinates from the dropdown. I then combined this with the void mousePressed function and the previously mentioned toggleExpansion function and an If statement for the Co-Ordinates of the dropdown to fully finish it's functionailty.   

I used the email addresses of the participants of the Diploma in Coding Fundamentals Course as the names for the dropdown, after I completed the functionality of the dropdown I used a string variable "names" and created the 3 email address, I then used a void setup function and used the constructor dimensions (String[] options, float x, float y, float w, float h) to add the list of names to the dropdown. 

Improvement- One thing I struggle with massively here is the colour of the dropdown when it is expanded, I tried to align the colouring so that it would be all white with black text for the emails but for some reason the all the names in the dropdown, except the selected one you are hovering over, turn black. I tried fixing this, but it kept just turning all white and the text wasn't visible then. 

I also wanted to add a search field to be able to search the username but unfortunately, after a long few hour trying, wasn't able to. Overall, I wasn't too happy with what I put forward in the username field and feel the creation of dropdown is an area I have to look at going forward.  

## Password Field

Development - The first thing I did when creating the password field was create an empty string variable (i.e., "") for the actual password, this was because I knew that we could be entering the free text, so the field must be empty. I then created a Boolean "Password Clicked" as I only wanted the password to be entered when you clicked on the password field. I then created the physical dimensions of the password field, placing it just under the username dropdown (co-ordinates - 100,100,150,20). I then used the Password Clicked Boolean along with an If statement along with a string variable to bring in an asterisks when the user starts typing in the password field. I also used an else to convey that if the password field wasn't clicked it would read "Click here to enter password", a standard password field message. I then used the void KeyPressed function to ensure the entering of the password done correctly.

Improvement - Overall, I was quite happy with the password field. One slight error with it was that I couldn't get Colleges23 to be entered with a capital C, so I had to settle for colleges23. I tried code like "key!= CAPS" but unfortunately I couldn't get it to work. Another issue I would like to have fixed if I had time was the fact that when you click off the password field after entering the password, the default writing "Click here to enter password" appears again even though the password is still being held on the line. This could be extremely misleading to the user. 

## Login Button

Development/Improvement - Sadly, this is one feature I didn't manage to complete. However I found a suitable alternative, add to the void keyPressed function else if (key == Enter){goToHomeScreen():}. I also added a notification on the interface for the user saying "Press Enter When Details Entered" to inform the user of this.

# Home Page

Development - Similar to the Login Page, I used Integer variable also. I placed all the Home Page features under an Integer Variable "State = 1". Again, this was under the void draw function and with an if(state=1) and under these brackets I put all the different elements of the home page and their function. 

## Logout Button

Development - For the logout button I created it under the if (state==1) section of the void draw. I placed it in the top left corner of the homepage and used the void mouseClicked function and simply added in bracket after state=0 (which as previously stated represents the login screen) so that it will return to the homepage when pressed

Improvement - Overall, the logout button was an easy feature to add, if I had more time, I would have like to work on how it looked aesthetically (rather than just red and white) but it does what is required. 

## Print Profile Name

Development - Again started off by simply creating the shape under the "else if(state==1)" bracket. I then went to the Mouse Clicked function and added the dimensions of it there and also the code "&& state==1" to ensure that when the user logged out the names wouldn't be seen on the login screen. For the functionality, I used the users string variables and the boolean printuser.I created another string just beneath the names (which were a list of the groups emails) and called it fullname where it was a of the full names. I equalled the user string variable to printalluser ("i.e users=printallusers") and put printusers=true. I then used a join function to merge the fullname string with a ":" in order to make it look neat when they are printed. I then used the Return=true function so that when the print username button is hit it print all the names under the string fullname. 

Improvement - I think overall, the print profile name works well and as intended. One thing I would have liked to look at it if I had more time was where the names appeared. Possibly looking at making them appear in a form style rather than just random on the homepage could have been better for aesthetics. 

## Sort Button

Development - Followed a very similar path here to the print username with the shapes and dimensions being under the "else if(state==1)" bracket and then going to the Mouse Clicked Function and adding "&& state==1". What I did different was add the code "users=sortbynames();". and then scrolled down to the "Home Page Functionality section of my code and created a String called "sortbynames". I then put in brackets after it a three commands "fullname = sort(fullname)", so that it will sort my list of full names that I made out in a string variable when I was creating the username field, I then created a String for sortedusers that I equalled to printallusers (i.e sortedusers = printallusers) and then my last command in this bracket was "return sortedusers" which meant it would return the users sorted in alphabetical order once they were printed from the print username button. 

Improvement - Going back to the username field, I was looking to add a sort function to the dropdown in order to ensure the email address were coming up in alphabetical order. I wanted to do this as I felt this was a more realistic scenario in a console like this. Unfortunately, I wasn't able to do this, so I went with the sort button and the full name on the home page. I think the functionality and code still worked quiet well but just could have been in a more realistic place. 

# Overall Assessment

Given I am very new to the world of programming I was relatively happy with my assessment. 

However, one area I must improve on though is my use of hard-coding. Having "void Mousepressed" for all the command relating to the dropdown field and "void MouseClicked" for the rest of the button and fields is certainly not best practice and something I will have to look at in future projects as void methods do not produce any outputs. 




