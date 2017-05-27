# Linux misc stuff

## bc - An arbitrary precision calculator language

### Setting default scale

Make a file in home dir called .bc and put scale=2 on the first line followed by a carriage return.

    export BC_ENV_ARGS=~/.bc
    
Start bc, will have scale 10.