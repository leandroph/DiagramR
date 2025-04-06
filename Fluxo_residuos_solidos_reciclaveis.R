library(DiagrammeR)

# Criando um fluxograma atualizado com base nos indicadores de resíduos sólidos e efluentes
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

    Residuos [label = \"♻️ Efluentes e Resíduos\", fillcolor = \"#D6EAF8:#85C1E9\", fontcolor = \"#1B2631\", fontsize = 18, penwidth = 4, color = \"#2874A6\"]
    Efluentes [label = \"🚽 Efluentes, Sanitários,\nLimpeza do local, lavagem de EPI’s\"]
    Caixa [label = \"🧱 Caixa de gordura\"]
    Recolhimento [label = \"🧴 Recolhimento dos efluentes\nprovenientes dos resíduos\"]
    Disposicao [label = \"🌿 Disposição final ambientalmente\nadequada do efluente coletado na caixa\"]
    Eficiencia [label = \"⚙️ Eficiência do processo de tratamento\"]
    Estrutura [label = \"🏗️ Estrutura e acessibilidade;\nManutenção e limpeza\"]
    Canaletas [label = \"🕳️ Existência de canaletas e caixa de recolhimento\"]
    Monitoramento [label = \"📈 Há monitoramento desse efluente da caixa coletora\"]

    Residuos -> Efluentes
    Residuos -> Caixa
    Residuos -> Recolhimento
    Residuos -> Disposicao
    Efluentes -> Eficiencia
    Caixa -> Estrutura
    Recolhimento -> Canaletas
    Disposicao -> Monitoramento
  }"
)

# Exibir o fluxograma
graph
