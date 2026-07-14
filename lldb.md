# LLDB

What                    | cmd
------------------------|-----------------
Break on C++ exceptions | break set -E C++
select frame 1          | frame select 1

## C++

```bash
# Create a breakpoint when entering method
b agxModel::ReconfigureRequest::computeTransforms

# Get pid
process status


```


## Python

Create a breakpoint exiting into python debugger:
```python
breakpoint()
```

Create a breakpoint using c++ debugger - use SIGTRAP
```python
os.kill(os.getpid(), signal.SIGTRAP)
```


### Suggestions

- Run `lldb -- python <script>` from venv, not via uv.
