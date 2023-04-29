# Full Stack Comment Section Application

This is the Dockerized version of my previously built [frontend](https://github.com/ehsansh/comment-frontend) and [backend](https://github.com/ehsansh/comment-backend) comments section repositories. The final application is built using React, Express, and MySQL and is containerized with Docker Compose. The app includes a client-side React application for the frontend and an Express.js server and MySQL database for the backend. Additionally, the Docker Compose file is configured to run a PHPMyAdmin instance for easy management of the database. Users can vote on comments to express their opinions.

## Running the Application

To run the application, simply navigate to the root directory of the project and run the following command:

```
docker-compose up
```

This will start the Docker Compose services, including the client-side React application, the Express.js server, the MySQL database, and the PHPMyAdmin instance.

Once the services are up and running, you can access the application by navigating to [http://localhost:3000](http://localhost:3000) in your web browser.
You can also access PHPMyAdmin by going to [http://localhost:8080](http://localhost:8080).

The application supports hot reloading, which means that any changes made to the code in the client and server directories will be automatically reflected in the running application.

The Docker Compose file includes several environment variables that you can customize to suit your needs. These variables include the database name, user, and password, as well as access and refresh token secrets. Additionally, the server/config/config.js file has been modified to use the db hostname to access the database container.
