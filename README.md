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

## Follow these steps to run the project on your system:
For running the project on your system, make sure that you have the following installed and configured:
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
  3. Go to com.kushagra.tripplanner.DataBConnection and modify the url for connecting to Database, such as the port number (project default is 3308), username (project default is 'root'), and password based on your system environment settings.

Running the project:<br>
 Step-1: Clone the repository.<br>
 Step-2: Open index.jsp and let IntelliJ look for any missing dependencies. It will prompt you for installing them if it detects any.<br>
 Step-3: Make sure that Maven is installed and configured on your system. Navigate to the cloned project's root directory, and run the following command: <br>
         "mvn clean install"<br>
         This will create the war:exploded file for the project. Tomcat (or any other server) runs the project using the war:exploded file.
 Step-4: Run the index.jsp file using apache tomcat for using the project.<br>
