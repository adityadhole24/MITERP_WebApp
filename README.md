MIT-ERP is an Enterprise Resource Management system designed to be used by the students and teaching staff of MIT, Pune.
It is primarily used by students of the institute to track their subject-wise class attendance, and by the teaching staff to record the same. 
Although attendance-related use remains the top purpose for accessing the website, it also provides other functionalities such as :

1) Viewing daily schedule of lectures and practicals.

2) Viewing exam schedule.

3) Provision to provide faculty feedback.

4) Viewing details of outstanding fees, if any.

5) Viewing one’s profile.

6) Viewing notices about events on campus.

The primary objective of this project was to improve the existing UI so that the system exhibits a high degree of usability for the end-user. 

Used Bootstrap CSS, Morris JS, Chartist JS, Bootstrap JS for enhancing the front-end. Also used jQuery plugins such as Sparkline, Counter-up, Waypoints, SlimScroll and waves.
Since each of the views requires some amount of data that needs to be fetched dynamically, created servlets that would handle particular client requests. Servlets were necessary as each of the views is dynamic in nature.
They serve the dual purpose of redirection of client requests to appropriate views and providing them the required data.
A mySQL database was integrated at the server-side to serve as the backend storage for the application. JDBC driver was used to connect to the same, and database operations were handled using Java.



