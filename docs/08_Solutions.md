# Solutions {#solutions}

## Chapter 1. Introduction

## Chapter 2. Variables, values and types
### Exercise 1. String concatenation

1.

* The statement 'Veni, vidi, vici.' was coined by Gaius Julius Caesar.
* The statement 'Veni, vidi, vici.', 'I came, I saw, I conquered.', was coined by Gaius Julius Caesar.
* The statement 'Veni, vidi, vici.' was coined by Gaius Julius Caesar, supposedly around 47 BC.
*Alternatively*, it is also correct to say that the execution stops before the print statement due to the errornous string concatenation in the line before.

2. The `+` operator joins two strings, resulting in one string. The string at the left side of the operator precedes the string at the right side of the operator in the resulting string.

3. `myString = myString + s1 + s2 + year + s3`: the variable `year`is of type `int` which causes a TypeError during concatenation; integer objects and string objects cannot be concatenated. The error can be solved by either explicit typecasting or changing the variable `year` into a string to start with.

```python
myString = myString + s1 + s2 + str(year) + s3
year = "47"
```

### Exercise 2. Variable names

* `2ndMan`: the variable name starts with a digit
* `m@n3`: the `@` signs is an illegal character
* `man 5`: the space between `man`and `5` is illegal
* `man_no._7`: the fullstop is illegal. Python will think that `man_no` is a class (which it is not by default) and therefore throw a NameError
* `8thMan`: starting with a digit

### Exercise 3. Stroop task welcome message

*Note*: The below description of what the specified code does is not expected from students. The intention is that they think about what happens internally in PyGame when implementing a task such as 'printing something to the screen'.


```python
text_surface = font.render(msgText,True,msgColor,BACKGR_COL)
text_rectangle = text_surface.get_rect()
text_rectangle.center = (SCREEN_SIZE[0]/2.0,225)
screen.blit(text_surface,text_rectangle)
```

* Line 1 initializes a new Surface object with the pre-defined message `msgText` and color `msgColor` rendered on it and assigns it to the variable `text_surface`. PyGame draws text on a new Surface to create an image (Surface) of the text, then blit this image onto another Surface.
* Lines 2 and 3 transform the surface to rectangular shape and specify the center of this rectangular shape in relation to the screen size of the program window.
* Line 4 copies the text Surface and position to the screen Surface, making it visible.

For further clarification, consult the [PyGame documentation](http://www.pygame.org/docs/ref/font.html).

### Exercise 4. Printing


```python
participants = 52
trials = 200
experimental_sessions = 3
trials_pp = trials * experimental_sessions
conditions = 4
condition1 = "easy/limited"
condition2 = "easy/unlimited"
condition3 = "difficult/limited"
condition4 = "difficult/unlimited"
print "In total,", participants, "participants participated in the study."
```

```
## In total, 52 participants participated in the study.
```

```python
print "A 2x2 factorial between-subjects design was employed."
```

```
## A 2x2 factorial between-subjects design was employed.
```

```python
print "The study examined the interaction of two independent variables: "
```

```
## The study examined the interaction of two independent variables:
```

```python
print "task difficulty (easy, difficult) and time (limited, unlimited)."
```

```
## task difficulty (easy, difficult) and time (limited, unlimited).
```

```python
print conditions, "conditions were devised, plus a control condition."
```

```
## 4 conditions were devised, plus a control condition.
```

```python
print "The conditions were:",condition1,",",condition2,",",condition3,"and",condition4
```

```
## The conditions were: easy/limited , easy/unlimited , difficult/limited and difficult/unlimited
```

```python
print "Participants were tested in", experimental_sessions, "experimental sessions."
```

```
## Participants were tested in 3 experimental sessions.
```

```python
print "Each session consisted of",trials,"trials."
```

```
## Each session consisted of 200 trials.
```

```python
print "In total, each partcipant thus completed", trials_pp, "trials."
```

```
## In total, each partcipant thus completed 600 trials.
```

2. Initially, the variable `trials`is a string. Multiplying the variable by three thus results in a string consisting of three times the value of `trials`. This can be fixed either by initializing `trials` as an integer or using explicit typecasting.


```python
trials_pp = int(trials) * experimental_sessions
```

### Exercise 5. Using Python as calculator


```python
n1 = 37
n2 = 456
n3 = 1027%n1
n2 = n2/n3
n2 += 4
n4 = n2%5
n4 -= 17
n4 = 65%n4/float(2)
print n4
```

```
## -1.5
```

### Exercise 6. A Boolean puzzle


```python
n1 = 238
n2 = 17
print n1 > n2
```

```
## True
```

```python
print n1/17 == 14
```

```
## True
```

```python
print n1*n2/float(n1) == n2
```

```
## True
```

```python
print n1+(-n1) == n2 - n2 and n1+(-n1) == 972%243 and n2-n2 == 0
```

```
## True
```

```python
print n2*(n1*47/n2) == n1*47
```

```
## True
```

```python
print n1/4 == n2/1*3 or n1/4 == n2/17*59
```

```
## True
```

Hardcoded results are also valid, for example


```python
print n1+(-238) == n2 - 17 and n1+(-238) == 972%243 and n2-17 == 0
```

Only for `n1*n2/float(n1) == n2` hardcoding will not work.



## Chapter 3. Conditionals

### Exercise 1. Following the control flow


```python
myString = "Hello, World!"
if len(myString) >= 13 or "ello" in myString:
    myString = "Hi, programming aspirant!"
elif len(myString) <= 12 and "ello" in myString:
    myString = "Hello, from the other side."
print myString
```

```
## Hi, programming aspirant!
```

```python
if "Hi" in myString:
    if len(myString) < 25:
        myString = "Wow, my computer seems to answer!"
    elif len(myString) > 25:
        myString = myString + " -- Your computer"
    else:
        myString = myString + " How are you?"
else:
    if len(myString) <= 29:
        myString = "How are you, my computer?"
    elif len(myString) == 27 and "Hello" in myString:
        myString = myString + " I must have called a thousand times."
    else:
        myString = myString + " -- Adele"
print myString
```

```
## Hi, programming aspirant! How are you?
```

```python
if "computer" in myString or len(myString) == 38 or "HI" in myString:
    myString = myString + " I myself am doing fine."
else:
    myString = myString + " I am doing just fine."
print myString
```

```
## Hi, programming aspirant! How are you? I myself am doing fine.
```


### Exercise 2. Indentation


```python
myNumber = 4
if myNumber < 20 and myNumber > 0:
    if myNumber > 0 and myNumber < 15:
        myNumber = myNumber + 3
    else:
        myNumber = myNumber - 3
        print "This is a dead end statement."
elif myNumber > 20:
    print "This should only be printed if myNumber exceeds 20!"
else:
    myNumber = 17
```


### Exercise 3. Pseudo code conditionals

```{}

1.
If not rain
    if Jan has time
        do swimming
    else
        do hiking
else
    do read
    
2.
if age >= 18 and not alcohol abuse
    set participation to True
    
3.
if rain
    set wet to True
    
4.
if eligible
    do briefing
    if condition equals A
        do lead to 001
    else
        do lead to 002
else
    do explain

```

Number 3 is an example of the infamous *Modus Ponens*, where a condition a *implies* condition b. Whenever a is `True`, b must also be `True`.
Why is it so famous? Two reasons:

1. In mathematical proofs, *a* is called the *sufficient condition* for *b*, meaning that when a is True, b must be True as well. However, that does not exclude the possibility that b becomes True due to another condition c. For example:

    > When it rains the streets are wet

    does not exclude the possibility that the street is wet because  it has been washed with water.

2. In psychology of reasoning it has been shown that people have difficulties with checking the modus ponens. When asked to verify the above example, most people would first check whether the street is wet, although the most relevant  question is whether it is raining, indeed.

### Exercise 4. Modify Stroop Task


```python
import pygame
import sys
from time import time
import random
from pygame.locals import *
from pygame.compat import unichr_, unicode_
##### VARIABLES #####
# Colors
col_white = (250, 250, 250)
col_black = (0, 0, 0)
col_gray = (220, 220, 220)
col_red = (250, 0, 0)
col_green = (0, 200, 0)
col_blue = (0, 0, 250)
col_yellow = (250,250,0)
NTRIALS = 5
WORDS    = ("red", "green", "blue")
COLORS   = {"red": col_red,
            "green": col_green,
            "blue": col_blue}
KEYS     = {"red": K_b,
            "green": K_n,
            "blue": K_m}
BACKGR_COL = col_gray
SCREEN_SIZE = (700, 500)
pygame.init()
pygame.display.set_mode(SCREEN_SIZE) 
pygame.display.set_caption("Stroop Test")
screen = pygame.display.get_surface()
screen.fill(BACKGR_COL)
font = pygame.font.Font(None, 80)
font_small = pygame.font.Font(None, 40) 
def main():
    """ Start the Stroop task.
    """
    ## Variables
    STATE = "welcome"
    trial_number = 0
    # for gathering the response times
    RT = []
    while True:
        pygame.display.get_surface().fill(BACKGR_COL)        
        # Changing states by user input
        for event in pygame.event.get():
            # welcome screen --> prepare next trial (space bar)
            if STATE == "welcome":
                if event.type == KEYDOWN and event.key == K_SPACE:
                    STATE = "prepare_next_trial"
                    print(STATE)
            # wait for response --> feedback (b, n, m)
            elif STATE == "wait_for_response":
                if event.type == KEYDOWN and event.key in KEYS.values():
                    # remember when the user has reacted
                    time_when_reacted = time()
                    # calculate the response time
                    this_reaction_time = time_when_reacted - time_when_presented
                    RT.append(this_reaction_time)
                    # was the response correct?
                    this_correctness = (event.key == KEYS[this_color])
                    STATE = "feedback"
                    print(STATE)
            if event.type == QUIT:
                STATE = "quit"
        # automatic state transitions
        # prepare next trial --> wait for response (immediatly)
        if STATE == "prepare_next_trial":
            trial_number = trial_number + 1
            # randomly pick word and color
            this_word  = pick_color()
            this_color = pick_color()
            # remember when stimulus was presented
            time_when_presented = time()
            STATE = "wait_for_response"
            print(STATE)
        # show feedback, then advance to next trial or goodbye  (for 1s)
        if STATE == "feedback" and (time() - time_when_reacted) > 1:
            if trial_number < NTRIALS:
                STATE = "prepare_next_trial"
            else:
                STATE = "goodbye"
            print(STATE)
        # Drawing to the screen
        if STATE == "welcome":
            draw_welcome()
            draw_button(SCREEN_SIZE[0]*1/4, 450, "Red: B", col_red)
            draw_button(SCREEN_SIZE[0]*2/4, 450, "Green: N", col_green)
            draw_button(SCREEN_SIZE[0]*3/4, 450, "Blue: M", col_blue)
        
        if STATE == "wait_for_response":
            draw_stimulus(this_color, this_word)
            draw_button(SCREEN_SIZE[0]*1/4, 450, "Red: B", col_red)
            draw_button(SCREEN_SIZE[0]*2/4, 450, "Green: N", col_green)
            draw_button(SCREEN_SIZE[0]*3/4, 450, "Blue: M", col_blue)
        
        if STATE == "feedback":
            draw_feedback(this_correctness, this_reaction_time)
        
        if STATE == "goodbye":
            draw_goodbye()
        
        if STATE == "quit":
            pygame.quit()
            sys.exit()
        pygame.display.update()
        
def pick_color():
    """ Return a random word.
    """
    random_number = random.randint(0,2)
    return WORDS[random_number]
def draw_button(xpos, ypos, label, color):
    text = font_small.render(label, True, color, BACKGR_COL)
    text_rectangle = text.get_rect()
    text_rectangle.center = (xpos, ypos)
    screen.blit(text, text_rectangle)
def draw_welcome():
    text_surface = font.render("STROOP Experiment", True, col_black, BACKGR_COL)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,150)
    screen.blit(text_surface, text_rectangle)
    text_surface = font_small.render("Press Spacebar to continue", True, col_black, BACKGR_COL)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,300)
    screen.blit(text_surface, text_rectangle)
def draw_stimulus(color, word):
    text_surface = font.render(word, True, COLORS[color], col_gray)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,150)
    screen.blit(text_surface, text_rectangle)
def draw_feedback(correct, reaction_time):
    if correct:
        text_surface = font_small.render("correct", True, col_black, BACKGR_COL)
        text_rectangle = text_surface.get_rect()
        text_rectangle.center = (SCREEN_SIZE[0]/2.0,150)
        screen.blit(text_surface, text_rectangle)
        text_surface = font_small.render(str(int(reaction_time * 1000)) + "ms", True, col_black, BACKGR_COL)
        text_rectangle = text_surface.get_rect()
        text_rectangle.center = (SCREEN_SIZE[0]/2.0,200)
        screen.blit(text_surface, text_rectangle)
        if reaction_time > 5:
            text_surface = font_small.render("Come on, you can be faster!", True, col_black, BACKGR_COL)
            text_rectangle = text_surface.get_rect()
            text_rectangle.center = (SCREEN_SIZE[0]/2.0,250)
            screen.blit(text_surface, text_rectangle)
            
    else:
        text_surface = font_small.render("Wrong key!", True, col_red, BACKGR_COL)
        text_rectangle = text_surface.get_rect()
        text_rectangle.center = (SCREEN_SIZE[0]/2.0,150)
        screen.blit(text_surface, text_rectangle)
        #text_surface = font_small.render("Press Spacebar to continue", True, col_black, BACKGR_COL)
def draw_goodbye():
    text_surface = font_small.render("END OF THE EXPERIMENT", True, col_black, BACKGR_COL)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,150)
    screen.blit(text_surface, text_rectangle)
    text_surface = font_small.render("Close the application.", True, col_black, BACKGR_COL)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,200)
    screen.blit(text_surface, text_rectangle)
    
main()
```



### Exercise 5. Simplify nested conditionals

```python
# participant details #
age = 20
gender = "Male"
study = "Psychology"
speaks_Dutch = True
coffee = True
condition = "not eligible for the experiment"
## version 1
### The order of checking for study, coffee and
### language proficiency are interchangable
if age >= 18:
    if study == "Psychology" or study == "Communication Sciences":
        if coffee == True and speaks_Dutch == True:
            if gender == "Female":
                condition = "A"
            else:
                condition = "B"
        else:
            print "Participant is not eligible to take part in the experiment."
    else:
        print "Participant is not eligible to take part in the experiment."
else:
    print "Participant is not eligible to take part in the experiment."
    
## version 2             
if age >= 18 and study == "Psychology" or study == "Communication Sciences" and coffee == True and speaks_Dutch == True:
    if gender == "Female":
        condition = "A"
    else:
        condition = "B"
else:
    print "Participant is not eligible to take part in the experiment."
```

### Exercise 6. Flow chart conditionals


```python
n = -1
if n > 0:
    n = 2*n
else:
    n += 1
if n > 4*241%17:
    n -= 5
else:
    if n > 10:
        n += 50
    else:
        n = n%2
print n
```




## Chapter 4. Lists
### Exercise 1. Shopping list

`['buns',
 'cheese',
 'milk',
 'oatmeal',
 'blueberries',
 'oranges',
 'apples',
 'chocolate',
 ['eggs', 'yoghurt', 'salmon'],
 ['icing sugar',
  'whipping cream',
  'lemons',
  'flower',
  'vanilla sugar',
  'eggs',
  'baking powder',
  'margarine']]`
  
### Exercise 2. Dictionnaries

```python
('Erik', 'Erikson', (1902, 1994))
('Theory of Cognitive Development',)
1856
"Frederic"
"Skinner Box"
"positive reinforcement"
```



### Exercise 3. Selecting elements


```python
shoppingList[2]
shoppingList[0][0]
grades["p3"][3]
grades["p5"][1]
grades["p6"][0]
grades["p1"][4][2]
grades["p5"][4][0]
grades["p6"][4][1]
```

### Exercise 4. Adjust a dictionnary data set


```python
#1
dataset['p1'][5] = 6.1
dataset['p7'][5] = 7.4
#2
dataset['p5'][0] = 23
dataset['p5'][1] = "Female"
#3
dataset['p4'][4][2] = True
dataset['p4'][4][3] = True
## or
dataset['p4'][4] = [True,True,True,True,True]
#4
dataset['p2'][3] = "B-Health_Sciences"
#5
dataset['p4'].append("expelled")
## or
dataset['p4'] = dataset['p4'] + ["expelled"]
#final dataset
dataset = {'p1':[21,"Female","Dutch","B-Psychology",[True,False,True,False,False],6.1],
           'p2':[20,"Female","Dutch","B-Health_Sciences",[True,True,True,False,True],8.4],
           'p3':[21,"Female","Dutch","B-Applied_Mathematics",[False,True,True,False,True],7.8],
           'p4':[23,"Male", "German","B-Communication_Science",[True,True,True,True,True],8.8,"expelled"],
           'p5':[23,"Female","Dutch","M-Business_Administration",[False,False,True,True,True],7.6],
           'p6':[19,"Male","Swedish","B-Computer_Science",[True,False,False,True,False],7.5],
           'p7':[19,"Male","German","B-Communication_Science",[True,True,False,True,True],7.4]
           }
```


### Exercise 5. A dictionnary data set

```python
import numpy as np
participants = {'p1':("Male",19,"Dutch","Student"),
                'p2':("Male",47,"Dutch","Pharmacist"),
                'p3':("Male",31,"Italian","PhD Student"),
                'p4':("Female",22,"German","Student"),
                'p5':("Female",46,"Dutch","Florist"),
                'p6':("Male",27,"Dutch","Student"),
                'p7':("Female",22,"Dutch","Police trainee"),
                'p8':("Female",26,"Indian","Architect"),
                'p9':("Male",18,"American","Student"),
                'p10':("Male",20,"Chinese","Student")
               }
""" Calculate the average age """
mean_age = (participants['p1'][1]+participants['p2'][1]+participants['p3'][1]+participants['p4'][1]+participants['p5'][1]+participants['p6'][1]+participants['p7'][1]+participants['p8'][1]+participants['p9'][1]+participants['p10'][1])/float(len(participants))
# A more elegant, manual solution you will learn about in "Chapter 5. Loops"
# would be as follows:
age_sum = 0
for key in participants.keys():
    age_sum += participants[key][1]
loop_mean = age_sum/float(len(participants))
# Using Numpy greatly simplifies calculations, but
# you first need to transform the data to fit your needs.
# You will see, however, that extracting the age variable and saving it
# separately will simplify other statistical operations later on.
age = [participants['p1'][1],
       participants['p2'][1],
       participants['p3'][1],
       participants['p4'][1],
       participants['p5'][1],
       participants['p6'][1],
       participants['p7'][1],
       participants['p8'][1],
       participants['p9'][1],
       participants['p10'][1]]
numpy_mean = np.mean(age)
""" Calculate the standard deviation of the age variable """
std_age = np.std(age)
""" Calculate the minimum and maximum of the age variable """
minimum = np.nanmin(age)
maximum = np.nanmax(age)
```


### Exercise 6. Stroop extension

```python
# -*- coding: utf-8 -*-
import pygame
import sys
from time import time
import random
from pygame.locals import *
from pygame.compat import unichr_, unicode_
##### VARIABLES #####
# Colors
col_white = (250, 250, 250)
col_black = (0, 0, 0)
col_gray = (220, 220, 220)
col_red = (250, 0, 0)
col_green = (0, 200, 0)
col_blue = (0, 0, 250)
col_yellow = (250,250,0)
col_pink = (250,0,127)
NTRIALS = 5
WORDS    = ("red", "green", "blue", "yellow", "pink")
COLORS   = {"red": col_red,
            "green": col_green,
            "blue": col_blue,
            "yellow": col_yellow,
            "pink": col_pink}
KEYS     = {"red": K_b,
            "green": K_n,
            "blue": K_m,
            "yellow":K_v,
            "pink":K_c}
BACKGR_COL = col_gray
SCREEN_SIZE = (700, 500)
pygame.init()
pygame.display.set_mode(SCREEN_SIZE) 
pygame.display.set_caption("Stroop Test")
screen = pygame.display.get_surface()
screen.fill(BACKGR_COL)
font = pygame.font.Font(None, 80)
font_small = pygame.font.Font(None, 40)
p_numbers = range(1,11)
conditions = {"Stroop_3":[1,2,4,8,10],
              "Stroop_5":[3,5,6,7,9]}
def main():
    """ Start the Stroop task.
    """
    ## Variables
    STATE = "welcome"
    trial_number = 0
    # initialize participant number
    p_number = 0
    # for gathering the response times
    RT = []
    while True:
        pygame.display.get_surface().fill(BACKGR_COL)        
        # Changing states by user input
        for event in pygame.event.get():
            # welcome screen --> prepare next trial (space bar)
            if STATE == "welcome":
                if event.type == KEYDOWN and event.key == K_SPACE:
                    STATE = "enter_participant_number"
                    print(STATE)
            # wait for response --> feedback (b, n, m)
            elif STATE == "wait_for_response":
                if event.type == KEYDOWN and event.key in KEYS.values():
                    # remember when the user has reacted
                    time_when_reacted = time()
                    # calculate the response time
                    this_reaction_time = time_when_reacted - time_when_presented
                    RT.append(this_reaction_time)
                    # was the response correct?
                    this_correctness = (event.key == KEYS[this_color])
                    STATE = "feedback"
                    print(STATE)
            
            elif STATE == "enter_participant_number":
                p_number = prompt()
                STATE = "transition_experiment"
                print STATE + "\nRETURN TO PYGAME WINDOW"
                
            elif STATE == "transition_experiment":
                if event.type == KEYDOWN and event.key == K_SPACE:
                    STATE = "prepare_next_trial"
            if event.type == QUIT:
                STATE = "quit"
        # automatic state transitions
        # prepare next trial --> wait for response (immediatly)
        if STATE == "prepare_next_trial":
            trial_number = trial_number + 1
            # randomly pick word and color
            # depending on condition
            if p_number in conditions["Stroop_3"]:
                this_word  = pick_color()
                this_color = pick_color()
            else:
                this_word = pick_color5()
                this_color = pick_color5()
            # remember when stimulus was presented
            time_when_presented = time()
            STATE = "wait_for_response"
            print(STATE)
        # show feedback, then advance to next trial or goodbye  (for 1s)
        if STATE == "feedback" and (time() - time_when_reacted) > 1:
            if trial_number < NTRIALS:
                STATE = "prepare_next_trial"
            else:
                STATE = "goodbye"
            print(STATE)
        # Drawing to the screen
        if STATE == "welcome":
            draw_welcome()
            draw_button(SCREEN_SIZE[0]*1/6, 450, "Pink: C", col_pink)
            draw_button(SCREEN_SIZE[0]*2/6, 450, "Yellow: V", col_yellow)
            draw_button(SCREEN_SIZE[0]*3/6, 450, "Red: B", col_red)
            draw_button(SCREEN_SIZE[0]*4/6, 450, "Green: N", col_green)
            draw_button(SCREEN_SIZE[0]*5/6, 450, "Blue: M", col_blue)
        
        if STATE == "enter_participant_number":
            draw_enter()
        
        if STATE == "transition_experiment":
            draw_transition()
            if p_number in conditions["Stroop_3"]:
                draw_button(SCREEN_SIZE[0]*1/4, 450, "Red: B", col_red)
                draw_button(SCREEN_SIZE[0]*2/4, 450, "Green: N", col_green)
                draw_button(SCREEN_SIZE[0]*3/4, 450, "Blue: M", col_blue)
            else:
                draw_button(SCREEN_SIZE[0]*1/6, 450, "Pink: C", col_pink)
                draw_button(SCREEN_SIZE[0]*2/6, 450, "Yellow: V", col_yellow)
                draw_button(SCREEN_SIZE[0]*3/6, 450, "Red: B", col_red)
                draw_button(SCREEN_SIZE[0]*4/6, 450, "Green: N", col_green)
                draw_button(SCREEN_SIZE[0]*5/6, 450, "Blue: M", col_blue)
        
        if STATE == "wait_for_response":
            draw_stimulus(this_color, this_word)
            if p_number in conditions["Stroop_3"]:
                draw_button(SCREEN_SIZE[0]*1/4, 450, "Red: B", col_red)
                draw_button(SCREEN_SIZE[0]*2/4, 450, "Green: N", col_green)
                draw_button(SCREEN_SIZE[0]*3/4, 450, "Blue: M", col_blue)
            else:
                draw_button(SCREEN_SIZE[0]*1/6, 450, "Pink: C", col_pink)
                draw_button(SCREEN_SIZE[0]*2/6, 450, "Yellow: V", col_yellow)
                draw_button(SCREEN_SIZE[0]*3/6, 450, "Red: B", col_red)
                draw_button(SCREEN_SIZE[0]*4/6, 450, "Green: N", col_green)
                draw_button(SCREEN_SIZE[0]*5/6, 450, "Blue: M", col_blue)
        
        if STATE == "feedback":
            draw_feedback(this_correctness, this_reaction_time)
        
        if STATE == "goodbye":
            draw_goodbye()
        
        if STATE == "quit":
            pygame.quit()
            sys.exit()
        pygame.display.update()
def prompt():
    p_number = 0
    while p_number == 0:
        p_number = int(raw_input("Please enter participant number here:"))
    if p_number in range(1,len(p_numbers)+1):
        return p_number
    else:
        print "Unknown participant number, valid participant numbers are 1 to 10"
        prompt()
                    
def pick_color():
    """ Return a random word.
    """
    random_number = random.randint(0,2)
    return WORDS[random_number]
def pick_color5():
    """ Return a random word,
    5 color Stroop version
    """
    random_number = random.randint(0,4)
    return WORDS[random_number]
def draw_button(xpos, ypos, label, color):
    text = font_small.render(label, True, color, BACKGR_COL)
    text_rectangle = text.get_rect()
    text_rectangle.center = (xpos, ypos)
    screen.blit(text, text_rectangle)
def draw_welcome():
    text_surface = font.render("STROOP Experiment", True, col_black, BACKGR_COL)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,150)
    screen.blit(text_surface, text_rectangle)
    text_surface = font_small.render("Press Spacebar to continue", True, col_black, BACKGR_COL)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,300)
    screen.blit(text_surface, text_rectangle)
def draw_enter():
    text_surface = font_small.render("Please enter participant number in console", True, col_black, BACKGR_COL)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,250)
    screen.blit(text_surface, text_rectangle)
def draw_transition():
    text_surface = font_small.render("Press Spacebar to start the experiment", True, col_black, BACKGR_COL)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,250)
    screen.blit(text_surface, text_rectangle)
def draw_stimulus(color, word):
    text_surface = font.render(word, True, COLORS[color], col_gray)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,150)
    screen.blit(text_surface, text_rectangle)
def draw_feedback(correct, reaction_time):
    if correct:
        text_surface = font_small.render("correct", True, col_black, BACKGR_COL)
        text_rectangle = text_surface.get_rect()
        text_rectangle.center = (SCREEN_SIZE[0]/2.0,150)
        screen.blit(text_surface, text_rectangle)
        text_surface = font_small.render(str(int(reaction_time * 1000)) + "ms", True, col_black, BACKGR_COL)
        text_rectangle = text_surface.get_rect()
        text_rectangle.center = (SCREEN_SIZE[0]/2.0,200)
        screen.blit(text_surface, text_rectangle)
    else:
        text_surface = font_small.render("Wrong key!", True, col_red, BACKGR_COL)
        text_rectangle = text_surface.get_rect()
        text_rectangle.center = (SCREEN_SIZE[0]/2.0,150)
        screen.blit(text_surface, text_rectangle)
        #text_surface = font_small.render("Press Spacebar to continue", True, col_black, BACKGR_COL)
def draw_goodbye():
    text_surface = font_small.render("END OF THE EXPERIMENT", True, col_black, BACKGR_COL)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,150)
    screen.blit(text_surface, text_rectangle)
    text_surface = font_small.render("Close the application.", True, col_black, BACKGR_COL)
    text_rectangle = text_surface.get_rect()
    text_rectangle.center = (SCREEN_SIZE[0]/2.0,200)
    screen.blit(text_surface, text_rectangle)
    
main()
```

## Chapter 5. Loops
### Exercise 1. Following the control flow


```python
['p2', 'p3', 'p1', 'p6', 'p7', 'p4', 'p5', 'p10', 'p8', 'p9']
(20, 'Female', 'Dutch', 'B-Psychology')
(20, 'Female', 'Dutch', 'B-Psychology')
20
5
4
21.8
19.75
```

### Exercise 2. Debugging


```python
data = {'p1':(21,"Female","Condition B",[0.675,0.777,0.778,0.62,0.869]),
        'p2':(20,"Female","Condition A",[0.599,0.674,0.698,0.569,0.7]),
        'p3':(21,"Female","Condition A",[0.655,0.645,0.633,0.788,0.866]),
        'p4':(23,"Male", "Condition A",[0.721,0.701,0.743,0.682,0.654]),
        'p5':(20,"Male","Condition B",[0.721,0.701,0.743,0.682,0.654]),
        'p6':(19,"Male","Condition B",[0.711,0.534,0.637,0.702,0.633]),
        'p7':(19,"Male","Condition B",[0.687,0.657,0.766,0.788,0.621]),
        'p8':(24,"Female","Condition A",[0.666,0.591,0.607,0.704,0.59]),
        'p9':(23,"Female","Condition B",[0.728,0.544,0.671,0.689,0.644]),
        'p10':(18,"Male","Condition A",[0.788,0.599,0.621,0.599,0.623])
        }
fastest = ("initialization",100)
for participant in data:
    RTsum = 0
    for i in range(len(data[participant][3])-1):
        RTsum += data[participant][3][i]
    RTmean = RTsum/len(data[participant][3])
    if RTmean < fastest[1]:
        fastest = (participant,RTmean)
        
slowest = ("initialization",0)
for participant in data:
    RTsum = 0
    for RT in data[participant][3]:
        RTsum += RT
    RTmean = RTsum/len(data[participant][3])
    if RTmean > slowest[1]:
        slowest = (participant,RTmean)
        
all_mean = 0
all_sum = 0
number_of_trials = 0
for participant in data:
    counter = 0
    while counter < len(data[participant][3]):
        all_sum += data[participant][3][counter]
        number_of_trials += 1
        counter += 1
all_mean = all_sum/number_of_trials*len(data)
    
print "fastest:", fastest
print "slowest:", slowest
print "all_mean:", all_mean
```


### Exercise 3. Nested loops


```python
participants = [
    ("p1", ["Condition 1","Location A","withdrew","no audio"]),
    ("p2", ["Condition 1","Location A","no audio","no video"]),
    ("p3", ["Condition 2","Location B"]),
    ("p4", ["Condition 1","Location A","withdrew"]),
    ("p5", ["Condition 2","Location A"]),
    ("p6", ["Condition 2","Location B","withdrew"]),
    ("p7", ["Condition 1","Location A","no video"]),
    ("p8", ["Condition 1","Location B"]),
    ("p9", ["Condition 2","Location B","withdrew"]),
    ("p10",["Condition 1","Location A","withdrew"])]
counter = 0
for (participant,expInfo) in participants:
        for info in expInfo:
            if info == "withdrew":
                counter += 1
        
print "The number of participants who withdrew their participation is", counter
```

### Exercise 4. Data transformation using loops

```python
participants = [
    ("p1", ["Condition 1","Location A","withdrew","no audio"]),
    ("p2", ["Condition 1","Location A","no audio","no video"]),
    ("p3", ["Condition 2","Location B"]),
    ("p4", ["Condition 1","Location A","withdrew"]),
    ("p5", ["Condition 2","Location A"]),
    ("p6", ["Condition 2","Location B","withdrew"]),
    ("p7", ["Condition 1","Location A","no video"]),
    ("p8", ["Condition 1","Location B"]),
    ("p9", ["Condition 2","Location B","withdrew"]),
    ("p10",["Condition 1","Location A","withdrew"])]
dict_participants = {}
for participant in participants:
    dict_participants[participant[0]] = participant[1]
counterA = 0
counterB = 0
for key in dict_participants:
    if dict_participants[key][1] == "Location A":
        counterA += 1
    else:
        counterB += 1
## or using nested loops
counterA1 = 0
counterB1 = 0
for key in dict_participants:
    for info in dict_participants[key]:
        if info == "Location A":
            counterA1 += 1
        elif info == "Location B":
            counterB1 += 1
print "The number of participants who were tested at location A is", counterA, counterA1
print "The number of participants who were tested at location B is", counterB, counterB1
```


### Exercise 5. Calculating a mean


```python
import numpy as np
seq = range(1000)
counter = 0
sum = 0.0
while counter <= 999:
    sum += seq[counter]
    counter += 1
mean = sum/len(seq)
print mean, np.mean(seq)
```

### Exercise 6. A guessing game


```python
import random
import sys
number = random.randint(0,1000)
guesses = 0
while(True):
    try:
        user_input = input("Please enter a number between 0 and 1000")
    except SyntaxError:
        sys.exit() 
    if user_input == number:
        print "Ding Ding Ding! Correct! The number was", number
        guesses +=1
        print guesses, "guesses needed"
        break
    elif user_input > number:
        print "My number is smaller"
        guesses +=1
    elif user_input < number:
        print "My number is larger"
        guesses +=1
sys.exit()
```


## Chapter 6. Functions

### Exercise 1. Following the control flow


```python
"x equals 10"
"y equals 17.5"
"anumber equals 10.0"
```

### Exercise 2. An imperfect list sorting attempt

* *Line 6/7*. The `insert` function does not return the resulting list.
* *Line 20 and 21*. The output of the `swap` function is not assigned to any variable and thereby, the manipulation performed on `myList1` is not stored in memory.
* *Line 22*. Only two arguments are provided during the function call of `insert`. The function, however, requires three arguments: an element to be inserted, a position indicating where to insert the element, and a list into which the element is to be inserted.
* *Line 25*. The `swap` function is used incorrectly. First of all, the function only takes three arguments, but five arguments are provided. The person tried to swap several element pairs at once while the function is only suitable for swapping one pair at a time!
* *Line 25*. Second, the order of the arguments provided to the swap function is messed up. The function first takes one element to be swapped, then the element with which the first element should be swapped and only then the list which contains the two elements.
* *Line 26*. The `insert` function is as it is defined not suitable for appending elements at the end of a list. This can be solved in one of two ways: either, the function is left as is and instead of using insert, the built-in function `append()` can be used. Or, and this makes the insertion function more robust, a check is added to the function, appending any element that is supposed to be inserted at a position that exceeds the index range of the list.


```python
def insert(a,position,alist):
    result = copy.deepcopy(alist)
    if position >= len(result):
        return result.append(a)
    else:
        return result[:position] + [a] + result[position:]
```


### Exercise 3. An errorneous sorting algorithm


```python
import copy
import random
def swap(a,b,alist):
    index_a, index_b = alist.index(a), alist.index(b)
    index_a, index_b = index_b, index_a
    result = copy.deepcopy(alist)
    result[index_a], result[index_b] = a,b
    return result
def bubbleSort(alist):
    result = copy.deepcopy(alist)
    for iteration in range(len(result)-1):
        for index in range(len(result)-1,0,-1):
            if result[index] < result[index-1]:
                result = swap(result[index],result[index-1],result)
    return result
myList = range(51)
random.shuffle(myList)
print myList
print bubbleSort(myList)
```

### Exercise 4.
### Exercise 5.
### Exercise 6. Insertion sort algorithm


```python
import copy
import random
def insertionSort(alist):
    result = copy.deepcopy(alist)
    for index in range(1,len(result)):
        
        # Temporarily assign the element that is to be compared to the
        # (sorted) sublist at the left of the element's position
        value = result[index]
        # Remember the position in the list of the element under investigation
        position = index 
        
        # Stepwise, compare each element left to the designated element (b) and the
        # designated element (value). Whenever b is larger than value, update position
        # by shifting the position of b to the current value of position, thus in fact,
        # one place to the right. Continue until position equals 0 and there are no more elements b
        # left to compare value to.
        while position > 0 and result[position-1] > value:
            result[position] = result[position-1]
            position -= 1
        
        # Insert the value that has been compared to at the right position in the list
        result[position] = value
    return result
myList = range(51)
random.shuffle(myList)
print insertionSort(myList)
```
