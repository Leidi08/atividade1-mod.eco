install.packages("wooldridge")
library(wooldridge)
############### EXERCICIO 1 #################
dados_c1 <- wage1 
?wage1

# I- nivel de escolaridade max e min
min (dados_c1$educ,na.rm = TRUE) #minimo
max (dados_c1$educ,na.rm = TRUE) #maximo

# II -media da amostra 
mean (dados_c1$wage,na.rm = TRUE)
#baixo

####fazer III #####
####fazer IV #####

#V - quantas mulheres e homens tem na amostra
table (dados_c1$female) #1 é femin e 0 é masc

############### EXERCICIO 2 ###############
dados_2 <- bwght
?bwght

# I - quantas mulheres e quantas fumam
##1388 mulheres
table(dados_2$cigs)
1388- 1176

mean(dados_2$cigs, na.rm = TRUE) #quantas fumam

# II - media dos cigarros durante a gravidz
sum(dados_2$cigs, na.rm = TRUE)/212
#obs deu 2897 cigarros fumado por dia e uma media de 13.66 das que fumam

# V - renda media familiar e seu desvio padrão
mean(dados_2$faminc, na.rm = TRUE) #29.02 de media
sd(dados_2$faminc, na.rm = TRUE) #18.73 de desvio padrao

############# EXERCICIO 5 #########
dados_5 <- fertil2
?fertil2
# I - max e min de children da amostra e sua media
max(dados_5$children, na.rm = TRUE)
min(dados_5$children, na.rm = TRUE)
mean(dados_5$children, na.rm = TRUE)

# II E III - quantas tem eletricidade em casa
table(dados_5$electric) #611 tem e 3747 nao tem
611/4361
table(dados_5$electric)/nrow(dados_5)#0.14 as que tem e 0.85 que nao tem

####responder depois iv######


############# EXERCICIO 6 ###########
library(dplyr)

dados_6 <- countymurders
?countymurders

dados_1996 <- countymurders %>% filter(year==1996)
#I - quantos condados são listados no conjunto
total_counties <- nrow (dados_1996)
zero_murders <- sum(dados_1996$murders == 0)
percentage_zero_murders <- (zero_murders/ total_counties)*100
#II - Qual é o maior numero de assassinatos, numero de execuções 
max(dados_1996$murder)
max(dados_1996$execs)
mean(dados_1996$execs)
# III - Calcular o coeficiente de correlação entre murders e execs
cor(dados_1996$murders, dados_1996$execs)
#discussão sobre a correlação
#### fazer IV #######

########### EXERCICIO 7 ###########

dados_7 <- alcohol

# I - porcentagem da amostra que relatou abuso de alcool e taxa de emprego
table(dados_7$abuse)/ nrow(dados_7)*100
table(dados_7$status)/ nrow(dados_7)*100
# II - considerando aos que abuso do alcool e sua taxa de emprego desse grupo
dados_abusamdoalcool <- alcohol %>% filter (abuse == 1)
table(dados_abusamdoalcool$status)/ nrow(dados_abusamdoalcool)*100
# III - Dos que não abusao
dados_naoabusam <- alcohol %>% filter (abuse == 0)
table(dados_naoabusam$status)/ nrow(dados_naoabusam)*100
# Iv - ##### fazer essa#####

