# fastp-docker
fastp suite in Ubuntu 20.04

Ubuntu 20.04 with [fastp](https://github.com/OpenGene/fastp#or-download-binary-only-for-linux-systems-httpopengeneorgfastpfastp)

I am not part of the developer team of fastp - I just made this image.

To run software you can do the following (this will mount the directory `/in` of the container to the current working directory on your local machine, and allow you to access files in this directory and any sub-directories):
```bash
# run fastp
$ docker run --rm -v $(pwd):/in -w /in chrishah/fastp:0.23.1 fastp --version
```

You can also enter the container environment and work within it. All executables should be in the `PATH`.
```bash
$ docker run -it --rm -v $(pwd):/in -w /in chrishah/fastp:0.23.1 /bin/bash
```
