# Use Windows Server Core with IIS
FROM mcr.microsoft.com/windows/servercore:ltsc2022

# Set working directory inside the container
WORKDIR /inetpub/wwwroot

# Copy website files to the IIS web root directory
COPY . /inetpub/wwwroot

# Expose HTTP port 80
EXPOSE 80

# Start IIS service
CMD ["powershell", "Start-Service", "W3SVC", ";", "while ($true) { Start-Sleep -Seconds 60 }"]

