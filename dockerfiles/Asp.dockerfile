FROM microsoft/dotnet:2.2-sdk as build-env
WORKDIR /app

RUN git clone --depth=1 https://github.com/ScaleyAbilities/Asp.git
RUN dotnet publish -c Release -o out

FROM microsoft/dotnet:2.2-aspnetcore-runtime
WORKDIR /app
COPY --from=build-env /app/out .

ENTRYPOINT [ "dotnet", "Asp.dll" ]
