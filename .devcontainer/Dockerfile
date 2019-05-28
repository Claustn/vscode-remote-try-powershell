FROM mcr.microsoft.com/powershell:latest

SHELL ["pwsh", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

RUN \
    Set-PSRepository -Name PSGallery -InstallationPolicy Trusted ; \
    Install-Module Pester 


SHELL ["/bin/bash", "-c"]

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1

RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        add-apt-key \
        apt-transport-https \
        ca-certificates \
        gnupg2 \
        ssh \
        wget

RUN \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV SHELL pwsh
