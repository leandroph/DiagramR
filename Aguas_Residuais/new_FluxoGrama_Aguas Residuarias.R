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

  // Agrupando por colunas
  { rank = same; Residuos }
  { rank = same; Efluentes Caixa Recolhimento Disposicao }
  { rank = same; Eficiencia Estrutura Canaletas Monitoramento }

  // Nós com rótulos e preenchimento
  Residuos [label = <<b>♻️<br/>Águas Residuárias</b>>, fillcolor = \"#5499C7:#85C1E9\"]
  Efluentes [label = <<b>🚽<br/>Efluentes Sanitários,<br/>Limpeza do local,<br/>Lavagem de EPI’s</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  Caixa [label = <<b>🧱<br/>Caixa de gordura</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  Recolhimento [label = <<b>🧴<br/>Recolhimento de efluentes<br/>dos resíduos</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  Disposicao [label = <<b>🌿<br/>Disposição final<br/>ambientalmente adequada</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  Eficiencia [label = <<b>⚙️<br/>Eficiência do processo<br/>de tratamento</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  Estrutura [label = <<b>🏗️<br/>Estrutura e acessibilidade<br/>Manutenção e limpeza</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  Canaletas [label = <<b>🕳️<br/>Canaletas e caixa de<br/>recolhimento</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  Monitoramento [label = <<b>📈<br/>Monitoramento do efluente<br/>da caixa coletora</b>>, fillcolor = \"#A9CCE3:#D6EAF8\"]
  
  // Ligações entre nós
  Residuos -> Efluentes
  Residuos -> Caixa
  Residuos -> Recolhimento
  Residuos -> Disposicao
  Efluentes -> Eficiencia
  Caixa -> Estrutura
  Recolhimento -> Canaletas
  Disposicao -> Monitoramento
}
")
