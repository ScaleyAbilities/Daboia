FROM microsoft/dotnet:2.2-sdk as build-env
WORKDIR /app

# Docker on the lab machines needs a proxy and the engr SSL crt
ENV HTTP_PROXY "192.168.1.1:3128"
ENV HTTPS_PROXY "192.168.1.1:3128"
COPY Engineering.crt /usr/local/share/ca-certificates/Engineering.crt
RUN update-ca-certificates

RUN git clone --depth=1 https://github.com/ScaleyAbilities/Lora.git .
RUN dotnet publish -c Release -o out

FROM microsoft/dotnet:2.2-runtime
WORKDIR /app
COPY --from=build-env /app/out .

WORKDIR /app/logs

ENTRYPOINT [ "dotnet", "../Lora.dll"]
