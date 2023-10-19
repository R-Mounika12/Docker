FROM ubuntu:latest 

# Set the working directory in the image 
WORKDIR /app 

# Copy the files from the host file system to the image file system
COPY . /app  
#apt install openjdk-11-jre-headless 
RUN apt-get update && apt install -y openjdk-11-jdk-headless && javac TestClass.java

#ENV JAVAC = $(JAVA_HOME)/bin/javac

CMD ["java", "TestClass"] 
