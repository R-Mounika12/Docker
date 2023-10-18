FROM ubuntu:latest 

# Set the working directory in the image 
WORKDIR /app 

# Copy the files from the host file system to the image file system
COPY . /app  
 
RUN apt-get update && apt install -y openjdk-11-jre-headless && javac -y TestClass.java

ENV JAVAC = $(JAVA_HOME)/bin/javac

CMD ["java", "TestClass"] 
