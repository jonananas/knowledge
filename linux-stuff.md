# Linux misc stuff

## bc - An arbitrary precision calculator language

### Setting default scale

Make a file in home dir called .bc and put scale=2 on the first line followed by a carriage return.

    export BC_ENV_ARGS=~/.bc
    
Start bc, will have scale 10.

## rename

Rename PICT0021.JPG - PICT0099.JPG to PICT0020.JPG - PICT0098.JPG.
Q: How add automatic padding?

    rename 's/(PICT00)(\d+)(\.JPG)/$1.($2-1).$3/e' *