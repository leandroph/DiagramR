library(DiagrammeR)

grViz("
digraph G {
  
  graph [layout = dot, rankdir = LR]

  node [
    shape = rect,
    style = \"rounded,filled\",
    fontname = \"Arial\",
    fontsize = 14,
    margin = \"0.2,0.15\",
    width = 2.5,
    height = 1,
    fixedsize = false,
    gradientangle = 90
  ]

  // Agrupando por colunas (mesmo padrão do original)
  { rank = same; Abastecimento }
  { rank = same; Captacao Armazenamento ReusoChuva ReusoLavagem }
  { rank = same; Potabilidade QualidadeAgua QualidadeReusoCisterna QualidadeReusoMateriais }

  // NÓS - Mantendo EXATAMENTE o mesmo estilo visual do original
  Abastecimento [label = <<b>💧<br/>Água de Abastecimento</b>>, fillcolor = \"#5499C7:#85C1E9\"]
  
  Captacao [label = <<b>🚿<br/>Consumo de água subterrânea<br/>(Mensal)</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  
  Armazenamento [label = <<b>🧼<br/>Frequência da limpeza<br/>da caixa d'água<br/>(Semestral)</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  
  ReusoChuva [label = <<b>🌧️<br/>Reuso de água da chuva<br/>por cisterna<br/>(Bimestral)</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  
  ReusoLavagem [label = <<b>🪣<br/>Reuso de água de lavagem<br/>de materiais e equipamentos<br/>(Bimestral)</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  
  Potabilidade [label = <<b>🧪<br/>Potabilidade da água<br/>(Intervalo a definir)</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  
  QualidadeAgua [label = <<b>📊<br/>Índice de Qualidade<br/>da Água<br/>(Anual)</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  
  QualidadeReusoCisterna [label = <<b>🔁<br/>Qualidade da água<br/>de reuso em cisterna<br/>(Mensal)</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  
  QualidadeReusoMateriais [label = <<b>🔄<br/>Qualidade da água<br/>de reuso de materiais<br/>(Mensal)</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  
  // LIGAÇÕES - Mesmo padrão do original
  Abastecimento -> Captacao
  Abastecimento -> Armazenamento
  Abastecimento -> ReusoChuva
  Abastecimento -> ReusoLavagem
  Captacao -> Potabilidade
  Armazenamento -> QualidadeAgua
  ReusoChuva -> QualidadeReusoCisterna
  ReusoLavagem -> QualidadeReusoMateriais
}
")