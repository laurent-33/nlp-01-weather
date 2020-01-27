data <- read.csv('weather_data.csv')
str(data)

# Dictionnaire de données : 
# Ozone = mesure de la pollution. (contient NA)
# Solar.R = mesure des rayons du soleil. (contient NA)
# Wind = mesure du vent en miles/h
# Temp = Température en fahrenheit
# Month = Mois de l'année durant lequel on récupère la donnée
# Day = date du jour dans le mois durant lequel on récupère la donnée


#1-Quels sont les noms des colonnes du dataset weather_data.csv ? 
colnames(data)

#2-Comment pouvons-nous extraire les deux premieres lignes du dataset et les afficher sur la console ? 
head(data,2)

#3-Combien d'observations avons-nous dans ce jeux de donnees ? 
nrow(data)

#4-Comment pouvons-nous extraire les trois dernieres lignes du dataset et les afficher sur la console ? 
tail(data, 3)

#5-Quelle est la valeur de l'ozone dans la ligne 47eme ? 
data[47, 'Ozone']

#6-Combien de missing values nous avons dans le dataset ?
sum(is.na(data))

#Et combien dans la colonne ozone ? 
colSums(is.na(data))

#7-Quelle est la moyenne de la colonne ozone dans cet ensemble de donnees ? 
?mean
mean(data$Ozone, na.rm = TRUE)

#8-Extrayez le sous-ensemble des lignes du data set où les valeurs d'ozone sont au-dessus de 31 et 
#les valeurs de Temp sont superieures à 90. Quelle est la moyenne de Solar.R dans ce sous-ensemble ? 
sous_ensemble <- data[which(data$Ozone > 31 & data$Temp > 90),]
mean(sous_ensemble$Solar.R)

subset(data, Ozone > 31 & Temp > 90, Solar.R)

#9-Quelle est la moyenne de "Temp" quand "Month" est egal à 6 ? 
mean(data[which(data$Month == 6), 'Temp'])

#10-Quelle etait la valeur max d'ozone au mois de mai (Month = 5) ?
max(data[which(data$Month == 5 & data$Ozone >=0), 'Ozone'])
