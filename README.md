<h1 align="center">Travelia</h1>
<p align="center"><i><b>🎉 Travel the World 🎉</b></i></p>

This project is an attempt to record my skills in Java. It is an online trip planner written in HTML/JSP, CSS and JavaScript for frontend, and Java EE for backend, using MySQL for Database. Here is what you can do on this project:
  * As User, you can plan your trip to one of the added locations, for your choice of number of days.
  * Select a trip package, such as Honeymoon package, Group trip or Family trip.
  * You can book hotels at the location for staying the night.
  * View and cancel your booking if needed.
  * Provide feedback about how your trip went.
  * As admin, you can add locations for people to select as their desired holiday destination.
  * You can add/modify/delete the hotels, as well as the number of rooms in each hotel, available at the location.
  * View bookings already made.
  * Delete a location to take a trip to.
  * Add new / modify existing trip packages to specific locations.

## Prerequisites:
Before running the project on your system, make sure that you have the following installed and configured:
  - IntelliJ Idea (Community or Ultimate) (It is easier with IntelliJ as it can detect and add dependencies by itself)
  - MySql Server 8.0 or higher
  - Apache Tomcat (for local hosting) 10.1.13 or higher
  - Apache Maven 3.9.4 or higher

Required Dependencies:
  1. Jakarta EE Web Api version 9.1.0 or higher
  2. JUnit Jupiter API 5.9.2 or higher
  3. JUnit Jupiter Engine 5.9.2 or higher
  4. JDK 17 or higher
  5. MySQL JDBC connector (Driver) based on your version of MySQL server
  6. OpenTest4j 1.2.0 or higher
  7. JUnit PLatform Commons 1.9.2
  8. APIGuardian API 1.1.2
  9. JUnit Platform Engine 1.9.2

(All of the above dependencies can be installed using Maven)

Before Running the project, please make sure to:
  1. Run com.example.trip_planner.sql as this script will create the required database along with all necessary columns.
  2. Copy the MySQL JDBC driver jar file to your CATALINA_HOME/lib/ (OR installation directory of your Tomcat server/lib/). Tomcat will not be able to use the Driver resource otherwise.
  3. Go to com.kushagra.tripplanner.DataBConnection and modify the url for connecting to Database, such as the port number (project default is 3308), username (project default is 'root'), and password based on your system environment settings. (Note that you should do this before following step-4 of [Running the project](#Running the project)).
  4. Install and configure Maven latest version on your system. Set Maven system environment variable.

## Running the project:<br>
 Step-1: Clone the repository.<br>
 Step-2: Navigate to the root directory of the cloned project. Right click on the directory and select "Open folder as Intellij Project". <br> 
 Step-3: Open src/main/webapp.index.jsp file. Let IntelliJ look for any missing dependencies. It will prompt you for installing them if it finds any.<br>
 Step-4: Navigate to the cloned project's root directory, and run the following command: <br>
         "mvn clean install"<br>
         This will create the war file for the project. Tomcat (or any other server) runs the project using the war file. <br>
 Step-5: Open IntelliJ, and go to "Run" menu from the top menu bar. Select "Edit Configuration"<br>
 Step-6: On the window that has opened, go to the top left "+" icon, which will provide a list of servers to run this project on. Tomcat is preferred.<br>
 Step-7: Go to Tomcat, and click on the dropdown icon bside it. Select "Local". (Note that this will appear only if Tomcat Server has been previously installed on your system and configured on INtelliJ)<br>
 Step-8: Select "Deployment" from server configuration options, and click on the "+" icon in "Deploy at server startuup" portion.<br>
 Step-9: Select "External Sources" from this list.<br>
 Step-10: A dialog box will appear, asking you the location of the war (or war:exploded) file. Navigate to the appropriate location, select the war, and click on "Ok".<br>
 Step-11: Back at the "Run/Debug COnfigurations" window, click "Apply", then click "OK". Tomcat is now ready to run this project.<br>
 Step-12: Run the project using apache tomcat for using the project.<br>
