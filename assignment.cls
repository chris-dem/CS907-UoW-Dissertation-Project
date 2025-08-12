% https://github.com/Ziqi-Yang/latex_assignment_template
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{assignment}[a latex class for editing your assignment]

\LoadClass[a4paper, fleqn, 10pt]{article}

\RequirePackage[UKenglish]{babel}
\RequirePackage[UKenglish]{isodate}
\RequirePackage[]{amsmath}
\RequirePackage[]{amsfonts}
\RequirePackage[]{amssymb}
\RequirePackage[]{amsthm}
\RequirePackage[]{graphicx}
\RequirePackage[]{chngpage}
\RequirePackage[]{calc}
\RequirePackage[]{hyperref}
\RequirePackage[nameinlink]{cleveref}
\RequirePackage[]{fancyhdr}
\RequirePackage[]{titletoc}
\RequirePackage[explicit]{titlesec}
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage[sc]{mathpazo}
\linespread{1}
\RequirePackage[T1]{fontenc}
\RequirePackage{minted}
\RequirePackage{csquotes}
\RequirePackage{booktabs}
\RequirePackage[most]{tcolorbox}
\RequirePackage{listings}
\RequirePackage[]{pdfpages}
\RequirePackage[]{placeins}
\RequirePackage[none]{hyphenat}

\setlength{\parindent}{0mm}
\setlength{\parskip}{\medskipamount}
\renewcommand{\baselinestretch}{1}
\cleanlookdateon
\makeatletter



\hypersetup{
    colorlinks=true,
    linkcolor=Brown,
    urlcolor=blue,
    citecolor=Blue,
}

% create a box to highlight word
\newtcbox{\hword}[1][orange]{on line, arc = 0.3mm,auto outer arc,colback = #1!12!, colframe = #1!60!,colupper = black, boxsep =0mm, left =0.3mm, right = 0.3mm, top =0.4mm, bottom = 0.4mm,boxrule =0.2mm, bottomrule =0.2mm, toprule = 0.2mm}

% default code style
\lstset{
    framerule=1pt,
    frame=tb,
    emphstyle={\small\ttfamily\bfseries\color{Orange}},
    numbers=left,
    numberstyle= \tiny\color{black},
    basicstyle = \small\ttfamily,
    keywordstyle    = \bfseries\color{BrickRed},
    identifierstyle = \bfseries\color{black},
    stringstyle     = \bfseries\color{ForestGreen},
    commentstyle    = \bfseries\color{Violet},
    breaklines      =   true,
    columns         =   fixed,
    basewidth       =   .5em,
    backgroundcolor=\color{Gray!5},
    tabsize=2,
    showspaces=false,
    showstringspaces=false,
}

\newcommand{\assignmentTitle}[5]{
    \begin{flushleft}
    Student Name: #1\\
    Student ID: #2
    \end{flushleft}
    
    \begin{flushright}\vspace{-2.5\baselineskip}
    \includegraphics[width=0.2\textwidth,height=\textheight, keepaspectratio]{#3}
    \end{flushright}

    
    \begin{center}
    \textbf{\large #4} \\
    \textbf{#5}
    \end{center}
    \noindent\rule{\linewidth}{.6pt}
}

\newcommand{\assignmentTitleNoId}[3]{
    \begin{flushleft}
    \textbf{\large #1} \\
    \textbf{#2}
    \end{flushleft}
    \begin{flushright}\vspace{-3.25\baselineskip}
    \includegraphics[width=0.2\textwidth,height=\textheight, keepaspectratio]{#3}
    \end{flushright}\vspace{-\baselineskip}
}

\newcommand{\code}[1]{\texttt{#1}}
