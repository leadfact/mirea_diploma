FROM alpine

# Install OpenSSH
RUN apk add --no-cache openssh

# Generate SSH keys
RUN ssh-keygen -A

# Set root password
RUN echo "root:password" | chpasswd

# Configure SSH
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config && \
    sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config

# Expose port 22
EXPOSE 22

# Start SSH server
CMD ["/usr/sbin/sshd", "-D"]