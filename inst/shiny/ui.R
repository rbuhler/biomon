library("analyz")
library("biomonCore")

shinyUI(
  fluidPage(   
    titlePanel('BIOMON'),
    # ---
    sidebarLayout(
      position = 'left',sidebarPanel(
        #--- DROP-DOWN Analysis
          uiOutput('sInputAnalysis'),
          hr(),
          #--- DROP-DOWN Matrices
          h4('Data Matrices'),
          uiOutput('sInputAttributes'),
          uiOutput('sInputSpecies'),
          uiOutput('sInputFactor'),
          uiOutput('sInputEnvironment'),
          uiOutput('sInputSpace')
      ),
      mainPanel(    
        fluidRow(
          #--- PUSHBUTTON Execute
          column( 12,
                  actionButton('btnExecute', label='Execute'),
                  verbatimTextOutput('execMsg')
          ) #column        
        ), #fluidRow
        fluidRow(
          column( 12,
                  h3('Upload Files'),
                  hr(),
                  fluidRow(
                    # --- UPLOAD analysis
                    column( 6,
                            fileInput('file1', 'Analysis File', accept=c('text/csv','text/comma-separated values,text/plain','.csv')),
                            textOutput('analysisUploaded'),
                            hr(),
                            textOutput('analysisPath')
                            ),
                    # --- UPLOAD matrices
                    column( 6,
                            fileInput('file2', 'Matrix File', accept=c('text/csv','text/comma-separated values,text/plain','.csv')),
                            textOutput('matrixUploaded'),
                            hr(),
                            textOutput('matricesPath')
                      ),
                    hr()
                    )
          ) #column
        )#fluidRow
      ) #mainPanel
    ) #sidebarLayout
  ) #fluid page
) #shinyUI