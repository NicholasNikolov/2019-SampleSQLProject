library(RMySQL)

# Variable Creation
db_user <- 'root'
db_password <- '36987521'
db_name <- 'stateFarm'
db_table <- 'driver'
db_host <- '127.0.0.1' # for local access
db_port <- 3306

# Database Read-in
database <-  dbConnect(MySQL(), user = db_user, password = db_password,
                   dbname = db_name, host = db_host, port = db_port)

# Extract driver data
query <- paste0("select * from ", db_table)
rs <- dbSendQuery(database, query)
driverData <-  fetch(rs, n = -1)
rickyBobbyNewIns = driverData[18,]
driverData = driverData[-18,]

# Extract Drive_Safe_and_Save Data
query2 <- paste0("select * from ", 'drive_safe_and_save')
rs <- dbSendQuery(database, query2)
driveSafeData <-  fetch(rs, n = -1)

on.exit(dbDisconnect(mydb))

attach(driverData)
attach(driveSafeData)

mainData = cbind(claimsMade,years_spent_driving,age,monthly_mileage,
                 avg_acceleration,braking,avg_cornering,avg_speed)

mainData = as.data.frame(mainData)
mainData = mainData

lmModel = lm(claimsMade~avg_acceleration+braking+avg_cornering+avg_speed,
               data=mainData)
summary(lmModel)


plot(claimsMade[1:length(braking)]~braking)

# Predicting and Updating

rickyBobbyPred = predict(lmModel,driveSafeData[3,c(3,4,5,6)])



dbSendQuery(database,"update driver set estimatedClaims=4.9 where driver_id=18")
fetch(dbSendQuery(database,"select * from driver"),n=-1)
