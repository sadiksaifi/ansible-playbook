FROM archlinux

# Update pacman configuration
RUN sed -i 's/^#ParallelDownloads = 5$/ParallelDownloads = 12/' /etc/pacman.conf

# Update and install packages
RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm which git vim ansible sudo

# Generate default pacman gpg keys
RUN pacman-key --init

# Create a new user
RUN useradd -m -G wheel sdk

# Remove password for the new user
RUN passwd -d sdk

# Grant sudo privileges to the new user
RUN echo "%wheel ALL=(ALL:ALL) ALL" >> /etc/sudoers

# Switch to the new user
USER sdk

# Set the working directory
WORKDIR /home/sdk

RUN git clone https://git.sadiksaifi.dev/ansible.git
