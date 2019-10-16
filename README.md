Simple example of Page Objects pattern using cucumber expressions with Rspec

Create a new directory under the project root named 'drivers' and 
download the latest Chromedriver and Geckodriver to the drivers directory.

The required browser can be passed as a command line argument

$cucumber BROWSER=chrome or 
$cucumber BROWSER=ff

or use a profile set up in the yaml file so

$cucumber -p chrome
$cucumber -p ff

