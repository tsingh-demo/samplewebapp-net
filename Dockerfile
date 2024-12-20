FROM ubuntu/dotnet-aspnet:8.0-24.04_stable	
WORKDIR /app

# Copy the built application from the build stage
COPY bin/Release/net8.0 .

EXPOSE 8080

# Set the entry point to run the .NET application
ENTRYPOINT ["dotnet", "SampleWebApp.dll"]
