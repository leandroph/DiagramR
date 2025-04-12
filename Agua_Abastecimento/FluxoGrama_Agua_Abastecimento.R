library(DiagrammeR)

# Criando um fluxograma atualizado com base nos indicadores de uso da água
graph <- grViz(
    "digraph G {
    graph [layout = dot, rankdir = LR, bgcolor = \"transparent\", size = \"12,10\"]
    node [
      shape = rect,
      style = \"rounded,filled\",
      fillcolor = \"#EBF5FB:#D6EAF8\",
      gradientangle = 90,
      fontname = \"Helvetica Neue\",
      fontcolor = \"#2C3E50\",
      color = \"#2E86C1\",
      fontsize = 20,
      penwidth = 3,
      margin = \"0.4,0.25\",
      width = 5.5,
      height = 1.4,
      fixedsize = false
    ]
    edge [
      color = \"#5DADE2\",
      arrowsize = 1.4,
      penwidth = 2.5,
      style = \"bold\",
      arrowhead = \"vee\",
      fontname = \"Helvetica Neue\"
    ]

    Abastecimento [label = \"💧 Água de Abastecimento\", fillcolor = \"#D6EAF8:#85C1E9\", fontcolor = \"#1B2631\", fontsize = 18, penwidth = 4, color = \"#2874A6\"]
    Captacao [label = \"🚿 Consumo de água subterrânea\n(Mensal)\"]
    Armazenamento [label = \"🧼 Frequência da limpeza\nda caixa d’água\n(Semestral)\"]
    ReusoChuva [label = \"🌧️ Reuso de água da chuva\npor cisterna\n(Bimestral)\"]
    ReusoLavagem [label = \"🪣 Reuso de água de lavagem\nde materiais e equipamentos\n(Bimestral)\"]
    Potabilidade [label = \"🧪 Potabilidade da água\n(Intervalo a definir)\"]
    QualidadeAgua [label = \"📊 Índice de Qualidade da Água\n(Anual)\"]
    QualidadeReusoCisterna [label = \"🔁 Qualidade da água de reuso\nem cisterna\n(Mensal)\"]
    QualidadeReusoMateriais [label = \"🔄 Qualidade da água de reuso\nde materiais e equipamentos\n(Mensal)\"]

    {rank = same; Captacao; Armazenamento; ReusoChuva; ReusoLavagem}
    {rank = same; Potabilidade; QualidadeAgua; QualidadeReusoCisterna; QualidadeReusoMateriais}

    Abastecimento -> Captacao
    Abastecimento -> Armazenamento
    Abastecimento -> ReusoChuva
    Abastecimento -> ReusoLavagem
    Captacao -> Potabilidade
    Armazenamento -> QualidadeAgua
    ReusoChuva -> QualidadeReusoCisterna
    ReusoLavagem -> QualidadeReusoMateriais
  }"
)

# Exibir o fluxograma
graph
