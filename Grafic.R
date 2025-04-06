library(ggplot2)

# Criando um dataframe com os indicadores e suas respectivas frequências
dados <- data.frame(
  Indicador = c("Consumo de água subterrânea", "Frequência da limpeza da caixa d’água", 
                "Reuso de água da chuva por cisterna", "Reuso de água de lavagem de materiais e equipamentos",
               "Potabilidade da água","Índice de Qualidade da Água", "Qualidade da água de reuso em cisterna",
               "Qualidade da água de reuso de materiais e equipamentos"),
  Frequencia = c("Mensal", "Semestral", "Bimestral", "Bimestral", "Intervalo a definir", 
                 "Anual", "Mensal", "Mensal"),
  Valor = c(30, 180, 60, 60, 0, 365, 30, 30)  # Valores hipotéticos para ilustração
)

# Criando um gráfico de barras para visualizar os indicadores
ggplot(dados, aes(x = reorder(Indicador, Valor), y = Valor, fill = Frequencia)) +
  geom_bar(stat = "identity", width = 0.6) +
  coord_flip() +
  labs(title = "Indicadores de Uso da Água",
       x = "Indicador",
       y = "Valor em dias") +
  theme_minimal()
