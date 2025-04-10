library(DiagrammeR)

# Criando um fluxograma atualizado com base nos indicadores de resíduos sólidos
graph <- grViz(
  "digraph G {
    graph [
      layout = dot,
      rankdir = LR,
      bgcolor = \"white\",
      color = \"#1B4F72\",
      penwidth = 6,
      style = \"rounded\",
      labelloc = \"t\",
      fontcolor = \"#154360\",
      fontsize = 22,
      fontname = \"Helvetica Neue\",
      margin = 0.5,
      size = \"14,11\"
    ]

    node [
      shape = rect,
      style = \"rounded,filled\",
      fillcolor = \"#EBF5FB:#D6EAF8\",
      gradientangle = 90,
      fontname = \"Helvetica Neue\",
      fontcolor = \"#2C3E50\",
      color = \"#2E86C1\",
      fontsize = 16,
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

    Residuos [label = \"🗑️ Resíduos Sólidos\", fillcolor = \"#D6EAF8:#85C1E9\", fontcolor = \"#1B2631\", fontsize = 18, penwidth = 4, color = \"#2874A6\"]
    Volume [label = \"📦 Volume de resíduos\\n(Recebimento - Tempo de Armazenamento)\"]
    Origem [label = \"📍 Origem\\n(Somente do Município de Cerro Largo)\"]
    Tipologia [label = \"📚 Tipologia e classificação\"]
    Gerenciamento [label = \"📋 Gerenciamento\"]
    Estrutura [label = \"🏗️ A.1 Espaços para depósito\\nA.2 Embalagens\\nA.3 Capacidade da triagem\"]
    Periodicidade [label = \"📅 Agentes geradores, Periodicidade\"]
    Polimericos [label = \"🔬 Resíduos Poliméricos\"]
    Coleta [label = \"🚛 Coleta, Separação, Transporte\\ne Armazenamento\"]

    Residuos -> Volume
    Residuos -> Origem
    Residuos -> Tipologia
    Residuos -> Gerenciamento
    Volume -> Estrutura
    Origem -> Periodicidade
    Tipologia -> Polimericos
    Gerenciamento -> Coleta
  }"
)

# Exibir o fluxograma
graph
