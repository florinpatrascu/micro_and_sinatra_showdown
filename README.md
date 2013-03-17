## (µ)Micro and Sinatra showdown

### The goal  
  
Comparing the performance of two simple "Hello World" web applications using the Micro and Sinatra frameworks. The two apps will run in "production" mode and the "audience" will be a room full with opinionated [ab](http://httpd.apache.org/docs/2.2/programs/ab.html) audiophiles making 8,000 requests. The benchmark is simple: a short run to warm the frameworks up (100 requests, 10 concurrently). And then ran the big bench at 10,000 requests, 50 concurrently, and the best run out of five is recorded and compared. A future test will measure the memory consumption using the passenger-memory-stat for Sinatra and Micro's internal `sys/info` support for collecting data about the memory consumption, CPU usage and GC activity. For now we keep the things simple.

### The "stage"
Micro is using the embedded [Jetty 6.1.21](http://jetty.codehaus.org/jetty/) server and Sinatra will use [Thin](http://code.macournoyer.com/thin/). Other details:

- A Mac having the following characteristics: `2.8 GHz Intel Core i5, 8 GB 1067 MHz DDR3`
- **Java**: `java version "1.6.0_41", 64-Bit Server VM (build 20.14-b01-445, mixed mode)` 
- **Ruby**: `ruby 1.9.3p327 (2012-11-10 revision 37606) [x86_64-darwin12.2.0]`

### The web application

A very simple "Hello World" web application with a very basic a layout, some CSS and a small logo for adding some static resources into the mix. Micro is using the default template view renderer: [Velocity](http://velocity.apache.org/), and the Sinatra app will use ERB, which is included with Ruby. The view templates will be stored in distinct files, using inline templates being out of scope; sorry Sinatra ;)

### Tools

 - [ab](http://httpd.apache.org/docs/2.2/programs/ab.html) - the Apache HTTP server benchmarking tool
 - [Gnuplot](http://www.gnuplot.info/) - a portable command-line driven graphing utility for Linux, OS/2, MS Windows, OSX, VMS, and many other platforms.

### The results

