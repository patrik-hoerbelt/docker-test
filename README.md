# DockerTest

## Create Docker container
Assuming you already downloaded and installed Docker for windows, use your powershell and go 
to the current path of your projec (e.g.: D:\projects\docker-test)

```docker build -t docker-test:1.0 .```

This will build your docker image and may take a few minutes

To run your container and switch to its shell, execute following command 
(replace th <> with your corresponding values)

```docker run -p 4200:4200 -it -v <d:/yoursourcefolder/subfolder>:/data <your image id> /bin/sh```

now that you entered your command line of your image, type 

```npm start```

to start your angular application. Wait a few seconds until your app is built. 
Open your browser at http://localhost:4200 and see your app livereloading while coding.
