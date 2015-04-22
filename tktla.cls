%%
%% This is file `tktla.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tktla.dtx 
%% 
%% \CheckSum{515}

\NeedsTeXFormat{LaTeX2e} \ProvidesClass{tktla}[2009/02/17 v1.1 Series
A Report for the University of Helsinki Department of Computer
Science]
\newcommand{\tktla@layout}{0}
\DeclareOption{officiallayout}{\renewcommand{\tktla@layout}{0}}
\DeclareOption{a4frame}{\newcommand{\tktla@afour}{1}}
\DeclareOption{a4cross}{\newcommand{\tktla@afour}{2}}
\DeclareOption{a4cam}{\newcommand{\tktla@afour}{3}}
\DeclareOption{draft}{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{final}{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{leqno}{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{fleqn}{\PassOptionsToClass{\CurrentOption}{book}}
\DeclareOption{openbib}{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[b5paper,11pt]{book}
\ifx\tktla@afour\@undefined\special{papersize=176mm,250mm}\else\relax\fi
\RequirePackage[nottoc]{tocbibind}
\RequirePackage{fancyhdr}
\@ifclasslater{book}{2001/04/21}{
  \RequirePackage[nonindentfirst]{titlesec}
  \ifx\tktla@afour\@undefined\relax\else\ifcase\tktla@afour% 0=nothing
  \or% 1=a4frame
    \RequirePackage[frame,a4,center]{crop}
  \or% 2=a4cross
    \RequirePackage[cross,a4,center]{crop}
  \or% 3=a4cam
    \RequirePackage[cam,a4,center]{crop}
  \fi\fi
}{
  \RequirePackage[nops,nonindentfirst]{titlesec}
  \ifx\tktla@afour\@undefined\relax\else\ifcase\tktla@afour% 0=nothing
  \or% 1=a4frame
    \RequirePackage[frame,a4center]{crop}
  \or% 2=a4cross
    \RequirePackage[cross,a4center]{crop}
  \or% 3=a4cam
    \RequirePackage[cam,a4center]{crop}
  \fi\fi
}
\renewcommand{\bibname}{References}
\AtBeginDocument{\@ifpackageloaded{babel}{%
    \addto{\captionsenglish}{\renewcommand{\bibname}{References}}%
    \addto{\captionsUKenglish}{\renewcommand{\bibname}{References}}%
    \addto{\captionsbritish}{\renewcommand{\bibname}{References}}%
    \addto{\captionsUSenglish}{\renewcommand{\bibname}{References}}%
    \addto{\captionsamerican}{\renewcommand{\bibname}{References}}%
    \addto{\captionscanadian}{\renewcommand{\bibname}{References}}}{}\relax}
\newenvironment{acknowledgements}[1][Acknowledgements]{%
  \chapter*{#1}\markboth{}{}}{\clearpage}
\newcommand{\authorcontact}[1]{
  \newcommand{\tktla@authorcontact}{{#1}}}
\newcommand{\pubtime}[2]{
  \newcommand{\tktla@pubmonth}{{#1}}
  \newcommand{\tktla@pubyear}{{#2}}}
\newcommand{\reportno}[1]{\newcommand{\tktla@pubno}{{#1}}}
\newcommand{\isbnpaperback}[1]{\newcommand{\tktla@isbnpaperback}{{#1}}}
\newcommand{\issn}[1]{\newcommand{\tktla@issn}{{#1}}}
\newcommand{\pubpages}[1]{\newcommand{\tktla@pages}{#1}}
\newcommand{\generalterms}[1]{\newcommand{\tktla@generalterms}{{#1}}}
\newcommand{\additionalkeywords}[1]{
  \newcommand{\tktla@additionalkeywords}{{#1}}}
\newcommand{\crcshort}[1]{\newcommand{\tktla@crcshort}{{#1}}}
\newcommand{\crclong}[1]{\newcommand{\tktla@crclong}{#1}}
\newcommand{\tktla@pubtype}{PhD Thesis}
\newcommand{\pubtype}[1]{\renewcommand{\tktla@pubtype}{{#1}}}
\newcommand{\tktla@copyright}{
  Copyright \copyright{} \tktla@pubyear{} \@author}
\newcommand{\copyrighttext}[1]{\renewcommand{\tktla@copyright}{{#1}}}
\newcommand{\supervisorlist}[1]{\newcommand{\tktla@supervisorlist}{#1}}
\newcommand{\preexaminera}[1]{\newcommand{\tktla@preexaminera}{#1}}
\newcommand{\preexaminerb}[1]{\newcommand{\tktla@preexaminerb}{#1}}
\newcommand{\opponent}[1]{\newcommand{\tktla@opponent}{#1}}
\newcommand{\custos}[1]{\newcommand{\tktla@custos}{#1}}
\newcommand{\printhouse}[1]{\newcommand{\tktla@printhouse}{{#1}}}
\newcommand{\permissionnotice}[1]{\newcommand{\tktla@permission}{{#1}}}
\newcommand{\isbnpdf}[1]{\newcommand{\tktla@isbnpdf}{{#1}}}
\newcommand{\isbnhtml}[1]{\newcommand{\tktla@isbnhtml}{{#1}}}
\renewcommand{\maketitle}{
  \tktla@titlepage
  \tktla@copyrightpage
}
\newcommand{\tktla@printisxns}{
  ISSN \tktla@issn\par
  ISBN \tktla@isbnpaperback{} (paperback)\par
  \ifx\tktla@isbnpdf\@undefined\relax\else
    ISBN \tktla@isbnpdf{} (PDF)\par
  \fi
  \ifx\tktla@isbnhtml\@undefined\relax\else
    ISBN \tktla@isbnhtml{} (HTML)\par
  \fi
}
\ifcase\tktla@layout
  \setlength{\oddsidemargin}{27mm}
  \addtolength{\oddsidemargin}{-1in}
  \setlength{\evensidemargin}{24mm}
  \addtolength{\evensidemargin}{-1in}
  \setlength{\topmargin}{21mm}
  \addtolength{\topmargin}{-1in}
  \setlength{\headheight}{15pt}
  \setlength{\headsep}{13.6pt}
  \setlength{\footskip}{22pt}
  \setlength{\textwidth}{125mm}
  \setlength{\textheight}{195mm}
  \fancyhf{}
  \fancyhead[RO,LE]{\thepage}
  \fancyhead[RE]{\textsc{\nouppercase{\leftmark}}}
  \fancyhead[LO]{\nouppercase{\rightmark}}
  \renewcommand{\headrulewidth}{0pt}
  \renewcommand{\footrulewidth}{0pt}
  \pagestyle{fancy}
  \titleformat{\chapter}[display]%
              {\huge\bfseries\filright}{\chaptername~\thechapter}{20pt}{}
  \newcommand{\tktla@titlepage}{
    \cleardoublepage
    \thispagestyle{empty}
    {\centering\setlength{\parindent}{0pt}\setlength{\parskip}{0pt}
      {\scshape\small
        Department of Computer Science\par
        Series of Publications A\par
        Report A-\tktla@pubyear-\tktla@pubno\par}
      \vspace{\fill}
      {\bfseries\Large\@title\par}
      \vspace{25mm}
      {\Large\@author\par}
      \vspace{25mm}
      \ifx\tktla@permission\@undefined\relax\else
        \begin{minipage}{98mm}
          \itshape\small\tktla@permission\par
        \end{minipage}
        \par
      \fi
      \vspace{\fill}
      {\scshape\small
        University of Helsinki\par
        Finland\par}
    }
    \clearpage
  }
  \newcommand{\tktla@copyrightpage}{
    \clearpage
    \thispagestyle{empty}
    {\raggedright\setlength{\parindent}{0pt}\setlength{\parskip}{0pt}
      {\bf Supervisor} \par
      \quad \hangindent=1em \tktla@supervisorlist\par
      \quad\par
      {\bf Pre-examiners} \par
      \quad \hangindent=1em \tktla@preexaminera\par
      \quad \hangindent=1em \tktla@preexaminerb\par
      \quad\par
      {\bf Opponent} \par
      \quad \hangindent=1em \tktla@opponent\par
      \quad\par
      {\bf Custos} \par
      \quad \hangindent=1em \tktla@custos\par
      \quad\par
      \quad\par
      \vspace{\fill}
      {\bf Contact information\par}
      \quad\par
      \quad Department of Computer Science\par
      \quad P.O. Box 68 (Gustaf H{\"a}llstr{\"o}min katu 2b)\par
      \quad FI-00014 University of Helsinki\par
      \quad Finland\par
      \quad\par
      \quad Email address: info@cs.helsinki.fi\par
      \quad URL: http://cs.helsinki.fi/\par
      \quad Telephone: +358 2941 911, telefax: +358 9 876 4314\par
      \quad\par

      \vspace{\fill}
      \tktla@copyright\par
      \tktla@printisxns{}
      Computing Reviews (1998) Classification: \tktla@crcshort\par
      Helsinki \tktla@pubyear\par
      \ifx\tktla@printhouse\@undefined\relax\else\tktla@printhouse\par\fi
    }
    \clearpage
  }
  \newenvironment{abstract}{%
    \cleardoublepage
    \thispagestyle{plain}
    {\raggedright\setlength{\parindent}{0pt}\setlength{\parskip}{0pt}
      {\bfseries\large\renewcommand{\\}[1][]{}\@title\par}
      \quad\par
      \@author\par
      \quad\par
      Department of Computer Science\par
      P.O. Box 68, FI-00014 University of Helsinki, Finland\par
      \tktla@authorcontact\par
      \quad\par
      \tktla@pubtype, Series of Publications A, Report
        A-\tktla@pubyear-\tktla@pubno\par
      Helsinki, \tktla@pubmonth{} \tktla@pubyear, \tktla@pages{} pages\par
      \tktla@printisxns
      \quad\par
      \textbf{Abstract}\par
    }
    \begingroup
      \setlength{\parindent}{0pt}
      \setlength{\parskip}{\baselineskip}
  }{%
    \par\endgroup
    {\raggedright\setlength{\parindent}{0pt}\setlength{\parskip}{0pt}
      \quad\par
      \textbf{Computing Reviews (1998) Categories and Subject \\
        Descriptors:}\nopagebreak
      \begin{list}{}{
          \setlength{\partopsep}{0pt}
          \setlength{\topsep}{0pt}
          \setlength{\leftmargin}{3em}
          \setlength{\itemsep}{0pt}
          \setlength{\parsep}{0pt}
          \setlength{\labelsep}{0.5em}
          \setlength{\labelwidth}{2.5em}
          \renewcommand{\makelabel}[1]{##1\hspace{\fill}}}
        \tktla@crclong
      \end{list}
      \quad\par
      \textbf{General Terms:}\par\nopagebreak
      \tktla@generalterms\par
      \quad\par
      \textbf{Additional Key Words and Phrases:}\par\nopagebreak
      \tktla@additionalkeywords\par
    }
    \clearpage
  }

\renewcommand{\chaptermark}[1]{\markboth{\thechapter~#1}{}}
\renewcommand{\sectionmark}[1]{\markright{\thesection~#1}}
\endinput
%%
%% End of file `tktla.cls'.
