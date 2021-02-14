# bash-scripting
Bash script tutorials from https://linuxconfig.org/bash-scripting-tutorial

## [Linux Standard Streams](https://www.howtogeek.com/435903/what-are-stdin-stdout-and-stderr-on-linux/#:~:text=In%20Linux%2C%20stdin%20is%20the,stderr%20(standard%20error)%20stream.)
In Linux, `stdin` is the standard input stream. This accepts text as its input. Text output from the command to the shell is delivered via `stdout` (standard out stream). Error messages from the command are sent through the `stderr` (standard error) stream.

So you can see that there are two output streams, `stdout` and `stderr`, and one input stream, `stdin`.

## Streams Are Handled Like Files
Streams in Linux—like almost everything else—are treated as though they were files. You can read text from a file, and you can write text into a file. Both of these actions involve a stream of data. So the concept of handling a stream of data as a file isn’t that much of a stretch.

Each file associated with a process is allocated a unique number to identify it. This is known as the file descriptor. Whenever an action is required to be performed on a file, the file descriptor is used to identify the file.
These values are always used for stdin, stdout, and stderr:
* 0: stdin
* 1: stdout
* 2: stderr

The `>` redirection symbol works with `stdout` by default. You can use one of the numeric file descriptors to indicate which standard output stream you wish to redirect.

To explicitly redirect  stdout, use this redirection instruction:
* `1>`

To explicitly redirect  stderr, use this redirection instruction:
* `2>`

## [Redirecting stdout and stderr to the Same File](https://www.howtogeek.com/435903/what-are-stdin-stdout-and-stderr-on-linux/#:~:text=In%20Linux%2C%20stdin%20is%20the,stderr%20(standard%20error)%20stream.)
```bash
./error.sh > capture.txt 2>&1
```
Let's break that down
* `./error.sh`: Launches the error.sh script file.
* `> capture.txt`: Redirects the `stdout` stream to the capture.txt file, `>` is a shorthand to `1>`
* `2>&1`: This uses the `&>` redirect instruction. This instruction allows you to tell the shell to make one stream go to the same destination as another stream. In this case, we’re saying “redirect stream 2, stderr, to the same destination that stream 1, stdout, is being redirected to.”