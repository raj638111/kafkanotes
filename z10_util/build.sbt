// Copyright (C) HomeAway, Inc.

name := "z10_util"

version := "0.0.2"

scalaVersion := "2.11.8"

scalaSource in Compile := baseDirectory.value / "Code"
scalaSource in Test := baseDirectory.value / "Test"

libraryDependencies ++= Seq(
	"log4j" % "log4j" % "1.2.17"
)

