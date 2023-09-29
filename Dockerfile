FROM openjdk:11 

# Set the working directory in the image 
WORKDIR /app 

# Copy the files from the host file system to the image file system
COPY . /app  
 
RUN javac TestClass.java  
CMD ["java", "TestClass"] 
