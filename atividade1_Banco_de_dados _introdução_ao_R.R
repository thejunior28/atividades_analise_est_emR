#Importando o banco de dados para o R

library(readxl)
dados <- read_excel("C:/Users/richa/Desktop/Doutorado/Disciplinas/4º semestre/Análise Estatísticas em R/Atividades/Atividade 1/dados_atividade.xlsx", 
                              sheet = "dados_ativ2025")
View(dados)

# Número de entrevistados para cada cidade

city <- table(dados$"Cidade de origem")
print(city)

# Número mínimo, médio e máximo de consultas por paciente

patient <- dados$"Número de consultas"
min(patient)
mean(patient)
max(patient)

# Média, mediana, desvio-padrão e quartis da idade e do peso dos pacientes

idade <- dados$"Idade (em anos)"
peso <- dados$"Peso (em quilos)"

summary(idade)
summary(peso)

# Porcentagem de pacientes por nível de tabagismo e atividade física

tabagismo <- dados$Tabagismo
tabagismo=table(tabagismo)

ativ_fisica <- dados$"Realiza atividade física"
ativ_fisica=table(ativ_fisica)

round(prop.table(tabagismo)*100,1)
round(prop.table(ativ_fisica)*100,1)

# Tabela de contingência entre sexo e atividade física
# Cálculo da porcentagem por sexo

tabela <- table(Sexo = dados$Sexo, 'Realiza Atividade Física' = dados$"Realiza atividade física")
tabela

round(prop.table(tabela)*100,1)
