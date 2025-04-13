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
  { rank = same; Volume Origem Tipologia Gerenciamento }
  { rank = same; Estrutura Periodicidade Polimericos Coleta }

  // Nós com rótulos e preenchimento
  Residuos [label = <<b>🗑️<br/>Resíduos Sólidos</b>>, 
            fillcolor = \"#5499C7:#85C1E9\", fontcolor = \"#1B2631\", 
            fontsize = 16, penwidth = 4, color = \"#2874A6\"]

  Volume [label = <<b>📦<br/>Volume de resíduos<br/>(Recebimento - Tempo de <br/>Armazenamento)</b>>, 
          fillcolor = \"#A9CCE3:#D6EAF8\"]

  Origem [label = <<b>📍<br/>Origem<br/>(Somente do Município<br/> de Cerro Largo)</b>>, 
          fillcolor = \"#A9CCE3:#D6EAF8\"]

  Tipologia [label = <<b>📚<br/>Tipologia e classificação</b>>, 
             fillcolor = \"#A9CCE3:#D6EAF8\"]

  Gerenciamento [label = <<b>📋<br/>Gerenciamento</b>>, 
                 fillcolor = \"#A9CCE3:#D6EAF8\"]

  Estrutura [label = <<b>🏗️<br/>A.1 Espaços para depósito<br/>A.2 Embalagens<br/>A.3 Capacidade da triagem</b>>, 
             fillcolor = \"#A9CCE3:#D6EAF8\"]

  Periodicidade [label = <<b>📅<br/>Agentes geradores<br/>Periodicidade</b>>, 
                 fillcolor = \"#A9CCE3:#D6EAF8\"]

  Polimericos [label = <<b>🔬<br/>Resíduos Poliméricos</b>>, 
               fillcolor = \"#A9CCE3:#D6EAF8\"]

  Coleta [label = <<b>🚛<br/>Coleta, Separação,<br/>Transporte e Armazenamento</b>>, 
          fillcolor = \"#A9CCE3:#D6EAF8\"]
  
  // Ligações entre nós
  Residuos -> Volume
  Residuos -> Origem
  Residuos -> Tipologia
  Residuos -> Gerenciamento
  Volume -> Estrutura
  Origem -> Periodicidade
  Tipologia -> Polimericos
  Gerenciamento -> Coleta
}
")
