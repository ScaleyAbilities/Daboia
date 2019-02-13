# Running In The Labs

**NOTE:** I haven't actually tested that this works in the labs, just going off memory, so some stuff might be slightly different.

1. First, make sure you pull Daboia and Woma so you have the latest versions of both
1. Open a terminal in Daboia folder
1. Run `docker-compose -f docker-compose.yml -f docker-compose.lab.yml up -d rabbit database`
1. This will start Rabbit (<http://localhost:15672/>) and MySQL
1. Now we need to set up the database, run `mysql -h 127.0.0.1 -u scaley -p` which will prompt for the password (abilities) and open a mysql console
1. In the mysql console, run `source mysql/create_tables.sql`  
   **NOTE:** you will have to run this before every run of Woma
1. Now build the latest version of Asp using `docker-compose -f docker-compose.yml -f docker-compose.lab.yml build --no-cache asp`
1. And start it: `docker-compose -f docker-compose.yml -f docker-compose.lab.yml up -d asp`
1. Do the same for Titanoboa: `docker-compose -f docker-compose.yml -f docker-compose.lab.yml build --no-cache titanoboa`
1. And then start it as well (no `-d` so you can see the output): `docker-compose -f docker-compose.yml -f docker-compose.lab.yml up titanoboa`
1. Now just open a terminal in the Woma directory and run `python3 woma.py "workload files/YOUR_WORKLOAD.txt"`
1. Once it finishes wait for Rabbit to show no messages left in queue
1. Now pull the log file out of titanoboa's container: `docker cp daboia_titanoboa_1:/app/testLOG ./testLog.xml`  
   **NOTE:** That assumes that the workload saved the log to the file `testLOG`
1. You should now see your `testLog.xml` file in the current directory
