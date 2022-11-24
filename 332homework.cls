\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2011/08/31]

\DeclareOption{10pt}{\PassOptionsToClass{10pt}{article}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{article}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{article}}
\ProcessOptions
\LoadClass{article}

% Margin setting
\RequirePackage[letterpaper,
  top=1.8cm,
  bottom=1.5cm,
  left=1.8cm,
  right=1.8cm,
  includefoot,
  includehead]{geometry}

% List spacing setup
\setlength{\topsep}{0pt}
\setlength{\partopsep}{0pt}
%\setlength{\itemsep}{0pt}
%\setlength{\parskip}{3mm}
%\setlength{\leftmargin}{8em}
%\setlength{\rightmargin}{0em}
\setlength{\listparindent}{0em}
%\setlength{\itemindent}{0em}
\setlength{\labelwidth}{\leftmargin}
%\setlength{\labelsep}{1em}

\newcommand{\hwnumber}[1]{\def\hwnumberdata{#1}}
\def\hwnumberdata{\relax}
\newcommand{\problemnumber}[1]{\def\problemnumberdata{#1}}
\def\problemnumberdata{\relax}
\renewcommand{\author}[1]{\def\authordata{#1}}
\def\authordata{\relax}
\newcommand{\collaborators}[1]{\def\collaboratorsdata{#1}}
\def\collaboratorsdata{\relax}

% Find the last page
\RequirePackage{lastpage}

% Fancy headings
\RequirePackage{fancyhdr}
\pagestyle{fancyplain}

\fancyhead[L]{\small CS 332 Homework \#\hwnumberdata\ Problem \#\problemnumberdata \\
  \textsl{Collaborators}: \collaboratorsdata}
\fancyhead[R]{\small \authordata \\ }
\fancyfoot[C]{\small \thepage\ of \pageref{LastPage}}

\RequirePackage{titlesec}
\titleformat{\subsection}{\normalsize\bfseries}{\thesubsection}{.5em}{}
\renewcommand{\thesubsection}{\alph{subsection})}
