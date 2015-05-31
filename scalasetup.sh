#!/bin/bash
#Script for installing Scala 2.11.4 and latest sbt
clear
echo "Removing old version of scala."
sudo apt-get remove scala-library scala
echo "Downloading and installing Scala 2.11.4"
sudo wget www.scala-lang.org/files/archive/scala-2.11.4.deb
sudo dpkg -i scala-2.11.4.deb
sudo apt-get update
sudo apt-get install scala
echo "Installing latest version of sbt"
echo "deb http://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-get update
sudo apt-get install sbt

