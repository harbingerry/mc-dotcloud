#!/bin/bash

MC_HOME="$HOME/minecraft"
JRE_URL="http://download.oracle.com/otn-pub/java/jdk/7u11-b21/jre-7u11-linux-x64.tar.gz"
JAVA_HOME="$HOME/java"

if [ -d $MC_HOME ]; then
  echo "Minecraft already setup"
else
  mv minecraft ~
  cp crontab ~
  cp run ~
  cp startmcserver ~
  cp world_backup_git ~
  
  mkdir -p $JAVA_HOME
  cd $JAVA_HOME
  wget -c --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F" "$JRE_URL" --output-document="jre.tar.gz"
  tar xzf jre.tar.gz
  rm jre.tar.gz
  mv * ./jre
fi