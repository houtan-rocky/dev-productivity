FROM ubuntu

# Update package lists
RUN apt-get update

# Install basic utilities
RUN apt-get install -y \
    wget \
    curl \
    unzip \
    vim \
    openssh-server

# Install Java (Oracle Database requires it)
RUN apt-get install -y openjdk-17-jre

# Optional: Set environment variables for Oracle Database connection (not recommended for production)
ENV ORACLE_SID=username
ENV ORACLE_PWD=myjava123

# Create a directory for user data persistence (optional)
RUN mkdir -p /opt/oracle/data

# CMD instruction (replace with your actual Oracle database startup command)
CMD ["/bin/bash"]