# Gráfico de barras com centralização do título
dados <- data.frame(
  Indicador = c(
    "Volume de resíduos (Recebimento - Tempo de Armazenamento", 
    "Origem (Somente do Município de Cerro Largo", 
    "Tipologia e classificação", 
    "Gerenciamento",
    "A.1 Espaços destinados para depósito de resíduos que chegam\nA.2 Embalagens de acondicionamento\nA.3 Capacidade da unidade de triagem", 
    "Agentes geradores, Periodicidade",
    "Resíduos Poliméricos",
    "Coleta, Separação, Transporte, Armazenamento"
  ),
  Frequencia = c("Mensal", "Semanal", "De Acordo com o Recebimento", "Mensal", "Mensal", 
                 "Mensal", "Semanal", "Semanal"),
  Valor = c(30, 7, 2, 30, 30, 30, 7, 7)
)

ggplot(dados, aes(x = reorder(Indicador, Valor), y = Valor, fill = Frequencia)) +
  geom_bar(stat = "identity", width = 0.6) +
  coord_flip() +
  labs(
    title = "Indicadores de Sustentabilidade da Gestão de Resíduos Sólidos",
    x = "Indicador",
    y = "Valor em dias"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
    plot.title.position = "plot"
  )
