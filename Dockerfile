FROM ubuntu:latest 

# Set the working directory in the image 
WORKDIR /app 

# Copy the files from the host file system to the image file system
COPY . /app  
 
RUN apt-get update && apt install -y openjdk-11-jre-headless && apt-get -y install galternatives && javac TestClass.java

env java_home=/usr/lib/jvm/java-1.8-openjdk
env path="$java_home/bin:${path}"

CMD ["java", "TestClass"] 
