mkdir -p target/osgi-lib
cd target/osgi-lib

echo 'organization := "org.osgi.service"
moduleName := "org.osgi.service.prefs"
val osgiPrefsVersion = "1.1.2"
version := osgiPrefsVersion
libraryDependencies := Seq("org.osgi" % "org.osgi.service.prefs" % osgiPrefsVersion)
crossVersion := CrossVersion.disabled' > build.sbt

sbt publishLocal
