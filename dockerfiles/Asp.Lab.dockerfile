FROM microsoft/dotnet:2.2-sdk as build-env
WORKDIR /app

# Docker on the lab machines needs a proxy and doesn't work with SSL
ENV HTTP_PROXY "192.168.1.1:3128"
ENV HTTPS_PROXY "192.168.1.1:3128"
ENV GIT_SSL_NO_VERIFY=true

RUN git clone --depth=1 https://github.com/ScaleyAbilities/Asp.git .
RUN dotnet publish -c Release -o out

FROM microsoft/dotnet:2.2-aspnetcore-runtime
WORKDIR /app
COPY --from=build-env /app/out .

ENTRYPOINT [ "dotnet", "Asp.dll" ]
