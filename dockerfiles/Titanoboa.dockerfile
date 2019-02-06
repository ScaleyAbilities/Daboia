FROM microsoft/dotnet:2.2-sdk as build-env
WORKDIR /app

RUN git clone --depth=1 https://github.com/ScaleyAbilities/Titanoboa.git .
RUN dotnet publish -c Release -o out

FROM microsoft/dotnet:2.2-runtime
WORKDIR /app
COPY --from=build-env /app/out .

ENTRYPOINT [ "dotnet", "Titanoboa.dll", "--no-input" ]
