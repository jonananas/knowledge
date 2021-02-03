# Unreal engine

## Intro
- Your first hour in UE4: https://learn.unrealengine.com/course/2503277
    - Very good to get basic understanding. You create your first level with ligthing etc.
- Introducing Unreal Engine
    - Overview of the editor windows, reiterates stuff from first hour, but adds some details. You do not create anything.
    - Not very good if you like hands on, this is listening in. Prefer "first hour"



### Course plan
- Blueprints - Essential Concepts, 
- Exploring Blueprints - learning path: https://learn.unrealengine.com/home/LearningPath/90587?r=False&ts=637478560152899038
- Comprehending Projects and File Structure, 
- Best Practices for Creating and Using Plugins, 
- Programming Kickstart https://www.unrealengine.com/en-US/onlinelearning-courses/programming-kickstart

## Resources
- https://www.youtube.com/c/MathewWadsteinTutorials/featured for small specific youtube clips

## Mac OSX
- Why is this page documentation? https://docs.unrealengine.com/en-US/Basics/GettingStarted/RecommendedSpecifications/index.html


### Startup problems on OSX
When launching Unreal Engine, it complains "xcode install for metal compiler" cannot be found. Solution here: https://answers.unrealengine.com/questions/22161/view.html, ie to set active developer directory to current xcode installation, do:

    xcode-select -p # --> /Library/Developer/CommandLineTools
    sudo xcode-select --reset
    xcode-select -p # --> /Applications/Xcode.app/Contents/Developer



## Keyboard shortcuts
key    | what
-------|--------------------------------------------------
g      | toggle game mode
Ctrl-1 | Bookmark 1 viewport - pressing 1 again goes there
F11    | toggle immersive mode
f      | focus on selected object