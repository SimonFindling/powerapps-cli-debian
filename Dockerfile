FROM mcr.microsoft.com/dotnet/runtime:5.0
ENV PATH="~/pac/tools:${PATH}"
RUN apt-get update -y \
    && apt-get install -y unzip \
    && apt-get install -y wget \
    && wget https://www.nuget.org/api/v2/package/Microsoft.PowerApps.CLI.Core.linux-x64 -P ~ \
    && unzip ~/Microsoft.PowerApps.CLI.Core.linux-x64 -d ~/pac \
    && chmod +x ~/pac/tools/pac
