# PART I : SOLUTION

## Commands Executed:

1. Run the container image
docker run -d --name csvserver infracloudio/csvserver:latest

2. Check if its running
docker ps -a

3. Find the reason for failing
docker logs csvserver

4. Created a bash script gencsv.sh to generate a file named inputFile

5. Run the container again
docker run -d --name csvserver -v "$(pwd)/inputFile:/csvserver/inputdata" infracloudio/csvserver:latest

6. Get shell access to the container and find the port
docker exec -it csvserver bash
netstat -tuln
exit

7. stop / delete the running container
docker stop csvserver && docker rm csvserver

8. run the container, Set the environment variable
docker run -d --name csvserver -v "$(pwd)/inputFile:/csvserver/inputdata" -e CSVSERVER_BORDER=Orange -p 9393:9300 infracloudio/csvserver:latest

9. Application is accessible at http://localhost:9393, and have the 7 entries from inputFile
