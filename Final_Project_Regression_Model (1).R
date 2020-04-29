#Regression to check dogs or cats will be adopted

dataSet <- read.csv(file.choose(),header = TRUE)
dataSet
summary(dataSet)
dataSet$Type <- as.factor(dataSet$Type)
dataSet$MaturitySize <- as.factor(dataSet$MaturitySize)
dataSet$FurLength <- as.factor(dataSet$FurLength)
dataSet$Vaccinated <- as.factor(dataSet$Vaccinated)
dataSet$Dewormed <- as.factor(dataSet$Dewormed)
dataSet$Sterilized <- as.factor(dataSet$Sterilized)
dataSet$Health <- as.factor(dataSet$Health)
dataSet$AdoptionSpeed <- as.factor(dataSet$AdoptionSpeed)

model1 <- glm(data = dataSet, Type ~ Age + MaturitySize + FurLength + Vaccinated + Dewormed + Sterilized + Health + AdoptionSpeed + PhotoAmt, 
              family = binomial)
summary(model1)
