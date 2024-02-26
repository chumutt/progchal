
## How to use Roswell to build and share binaries

From the project root:

Run as a script:

    chmod +x roswell/name-generator.ros
    ./roswell/name-generator.ros

Build a binary:

    ros build roswell/name-generator.ros

and run it:

    ./roswell/name-generator

Or install it in ~/.roswell/bin:

    ros install roswell/name-generator.ros

It creates the binary in ~/.roswell/bin/
Run it:

    ~/.roswell/bin/name-generator [name]~&

Your users can install the script with ros install chu/name-generator

Use `+Q` if you don't have Quicklisp dependencies to save startup time.
Use `ros build --disable-compression` to save on startup time and loose on application size.


## See

- https://github.com/roswell/roswell/wiki/
- https://github.com/roswell/roswell/wiki/Reducing-Startup-Time
