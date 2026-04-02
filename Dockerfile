FROM tinycorelinux/tinycore:latest

# Set environment variables
ENV NAME PicoOS

# Install necessary packages to build PicoOS
RUN tce-load -wi build-base grub2 && \  
    tce-load -wi gcc make && \  
    tce-load -wi linux-headers && \  
    tce-load -wi git

# Add the PicoOS source code (assuming a hypothetical repo)
# RUN git clone https://github.com/justspookje/pico-os.git /src

# Set working directory
WORKDIR /src

# Build instructions for PicoOS (these are placeholders, adjust as necessary)
RUN make && \
    make iso

# Final command to run when starting the container
CMD ["/bin/sh"]
