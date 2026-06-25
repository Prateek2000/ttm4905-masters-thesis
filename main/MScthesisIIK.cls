\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MScthesisIIK} [2025/01/26 v1.6 LaTeX2e IIK MSc thesis document class]

% v1.6
% add placeholders for the student(s) signature(s) and make explicit that by signing the description the main supervisor approves it for the standalone problem description
% align the format of the problem description page with that of the abstract

% v1.5
% move the description in the cls file, fix the handling of multiple students/supervisors, and fix Norwegian translations, incl. add \thesislanguage and \resetlanguage
% (b) add xurl
% (c) change \supervisor to \cosupervisor and \professor to \supervisor; handle the case where there is no co-supervisor
%     fix missing space after \and in English
% (d) add missing \renewcommand{\listalgorithmname}{List of Algorithms}
% (e) fix main babel language (problem reported by David Palma) and add nynorsk translations
% (f) change bokmål translation of co-supervisor to medveileder
% (g) make topsep=-1em,parsep=0em,itemsep=0em the default for itemize lists

% v1.4
% fix Norwegian translation for appendix

% v1.3
% add option to get only the problem description

% v1.2
% use biblatex+biber for the bibliography

% Problem description
\newif\ifthesis
\thesistrue
\DeclareOption{description}{\thesisfalse}

% Languages
\let\@thesislanguage\@empty
\newcommand{\thesislanguage}[1]{%
    \def\@thesislanguage{#1}%
}
\newif\ifenglish
\englishtrue
\thesislanguage{english} % default
\newcommand{\resetlanguage}{\selectlanguage{\@thesislanguage}}
\newcommand\babellanguages{main=english,nynorsk,norsk}
\DeclareOption{english}{}
\DeclareOption{norsk}{%
    \renewcommand\babellanguages{english,main=norsk}%
    \thesislanguage{norsk}%
    \englishfalse%
}
\DeclareOption{nynorsk}{%
    \renewcommand\babellanguages{english,main=nynorsk}%
    \thesislanguage{nynorsk}%
    \englishfalse%
}

% Base class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions\relax
\LoadClass[10pt,b5paper]{memoir}

% Fixes
\RequirePackage{iftex}

% Colors
\RequirePackage{xcolor}

% Text and encoding
\ifPDFTeX
   \RequirePackage[utf8]{inputenc}
   \RequirePackage[T1]{fontenc}

   \RequirePackage{lmodern}
\else
   \ifXeTeX
     \RequirePackage{xltxtra}
   \else 
     \RequirePackage{luatextra}
   \fi
   \defaultfontfeatures{Ligatures=TeX}
\fi

% Babel
\RequirePackage[\babellanguages]{babel}

\let\supervisorname\@empty
\let\cosupervisorname\@empty
\let\cosupervisorsname\@empty
\let\studentname\@empty
\let\studentsname\@empty
\let\submissiondatename\@empty
\let\ntnuname\@empty
\let\ntnulogo\@empty
\let\iikname\@empty
\let\andname\@empty
\let\anddescname\@empty
\let\problemdescriptionname\@empty
\let\titlename\@empty
\let\approvedname\@empty
\let\prefacename\@empty
\let\listsymbolname\@empty
\let\listacronymname\@empty
\let\listreferencename\@empty
\addto\extrasnorsk{%
  \renewcommand\appendixtocname{Tillegg}%
  \renewcommand\supervisorname{Hovedveileder}%
  \renewcommand\cosupervisorname{Medveileder}%
  \renewcommand\cosupervisorsname{Medveiledere}%
  \renewcommand\studentname{Student}%
  \renewcommand\studentsname{Studenter}%
  \renewcommand\submissiondatename{Innleveringsdato}%
  \renewcommand\ntnuname{Norges teknisk-naturvitenskapelige universitet}%
  \renewcommand\ntnulogo{./figs/ntnu-uten-slagord.pdf}%
  \renewcommand\iikname{Institutt for informasjonssikkerhet og kommunikasjonsteknologi}%
  \renewcommand{\andname}{og\newline}%
  \renewcommand{\anddescname}{og\unskip{} }%
  \renewcommand{\problemdescriptionname}{Problembeskrivelse}%
  \renewcommand{\titlename}{Tittel}%
  \renewcommand{\approvedname}{Godkjent}%
  \renewcommand{\prefacename}{Forord}%
  \renewcommand{\listalgorithmname}{Algoritmer}%
  \renewcommand{\listsymbolname}{Symboler}%
  \renewcommand{\listacronymname}{Akronymer}%
  \renewcommand{\listreferencename}{Referanser}%
}
\addto\extrasnynorsk{%
  \renewcommand\appendixtocname{Tillegg}%
  \renewcommand\supervisorname{Hovudrettleiar}%
  \renewcommand\cosupervisorname{Medrettleiar}%
  \renewcommand\cosupervisorsname{Medrettleiarar}%
  \renewcommand\studentname{Student}%
  \renewcommand\studentsname{Studentar}%
  \renewcommand\submissiondatename{Innleveringsdato}%
  \renewcommand\ntnuname{Noregs teknisk-naturvitskaplege universitet}%
  \renewcommand\ntnulogo{./figs/ntnu-uten-slagord.pdf}%
  \renewcommand\iikname{Institutt for informasjonstryggleik og kommunikasjonsteknologi}%
  \renewcommand{\andname}{og\newline}%
  \renewcommand{\anddescname}{og\unskip{} }%
  \renewcommand{\problemdescriptionname}{Problemskildring}%
  \renewcommand{\titlename}{Tittel}%
  \renewcommand{\approvedname}{Godkjent}%
  \renewcommand{\prefacename}{Føreord}%
  \renewcommand{\listalgorithmname}{Algoritmar}%
  \renewcommand{\listsymbolname}{Symbol}%
  \renewcommand{\listacronymname}{Akronym}%
  \renewcommand{\listreferencename}{Referansar}%
}
\addto\extrasenglish{%
  \renewcommand\appendixtocname{Appendices}%
  \renewcommand\supervisorname{Main supervisor}%
  \renewcommand\cosupervisorname{Co-supervisor}%
  \renewcommand\cosupervisorsname{Co-supervisors}%
  \renewcommand\studentname{Student}%
  \renewcommand\studentsname{Students}%
  \renewcommand\submissiondatename{Submission date}%
  \renewcommand\ntnuname{Norwegian University of Science and Technology}%
  \renewcommand\ntnulogo{./figs/ntnu-hoeyde-eng.pdf}%
  \renewcommand\iikname{Department of Information Security and Communication Technology}%
  \renewcommand{\andname}{and\newline}%
  \renewcommand{\anddescname}{and\unskip{} }%
  \renewcommand{\problemdescriptionname}{Problem description}%
  \renewcommand{\titlename}{Title}%
  \renewcommand{\approvedname}{Approved}%
  \renewcommand{\prefacename}{Preface}%
  \renewcommand{\listalgorithmname}{List of Algorithms}%
  \renewcommand{\listsymbolname}{List of Symbols}%
  \renewcommand{\listacronymname}{List of Acronyms}%
  \renewcommand{\listreferencename}{References}%
}

% Layout
\setlrmarginsandblock{25mm}{*}{0.91}
\setulmarginsandblock{7pc}{*}{1}
\checkandfixthelayout

% Hyphenation, kerning
\RequirePackage{microtype}

% Spacing
\setSpacing{1.1}

% Paragraphs
\clubpenalty  = 5000
\widowpenalty = 5000

\setlength{\parindent}{1.5em}
\setlength{\parskip}{1em}

% Divisors
\setsecnumdepth{subsection}

% Float positioning
\RequirePackage{afterpage}

% Bibliography
\RequirePackage{csquotes}
\RequirePackage[style=ieee-alphabetic,backend=biber,urldate=comp, maxbibnames=3, minbibnames=2,sortlocale=auto,doi=false,isbn=false,eprint=false]{biblatex}
\DefineBibliographyStrings{english}{urlseen = {last visited:}}
\renewcommand*{\bibfont}{\small}

% Lists
\RequirePackage{enumitem}
\setlist[itemize]{topsep=-1em,parsep=0em,itemsep=0em}
\RequirePackage{textcomp}
\renewcommand{\labelitemi}{\textendash}
\renewcommand{\labelitemii}{\textopenbullet}

% Columns
\RequirePackage{multicol}

% Tables
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\renewcommand{\arraystretch}{1.2}

% Links
\RequirePackage{hyperref}
\RequirePackage{memhfixc}
\RequirePackage{xurl}
\hypersetup{
  colorlinks=true, 
  urlcolor=black, 
  linkcolor=black,
  citecolor=black
}
\urlstyle{same}
\def\UrlBreaks{\do\/\do-}

% Graphics
\RequirePackage{graphicx}
\RequirePackage{pdfpages}
\RequirePackage{wrapfig}
\captionnamefont{\bfseries}

%% In case you need to have subfigures; note that there will be a warning for the caption package
% \let\subcaption\undefined
% \let\subfloat\undefined
% \RequirePackage[bf]{caption}
% \RequirePackage{subcaption}
% \setlength{\abovecaptionskip}{5.5pt}
% \setlength{\belowcaptionskip}{4.2pt}

% Mathematics
\RequirePackage{amsmath}
\RequirePackage{amscd}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{needspace}

\newtheoremstyle{atheorem}%               % Name
  {}%                                     % Space above
  {}%                                     % Space below
  {\itshape}%                             % Body font
  {}%                                     % Indent amount
  {\bfseries}%                            % Theorem head font
  {}%                                     % Punctuation after theorem head
  { }%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2. }\thmnote{ #3}}%  % Theorem head spec (can be left empty, meaning `normal')

\newtheoremstyle{adefinition}%            % Name
  {}%                                     % Space above
  {}%                                     % Space below
  {}%                                     % Body font
  {}%                                     % Indent amount
  {\bfseries}%                            % Theorem head font
  {}%                                     % Punctuation after theorem head
  { }%                                    % Space after theorem head, ' ', or \newline
  {\thmname{#1}\thmnumber{ #2. }\thmnote{ #3}}%  % Theorem head spec (can be left empty, meaning `normal')
  

\theoremstyle{atheorem} 
\numberwithin{equation}{chapter}

\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{conjecture}[theorem]{Conjecture}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}

\theoremstyle{adefinition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{finalremark}[theorem]{Final Remark}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{observation}[theorem]{Observation}
\newtheorem{example}[theorem]{Example}
\newtheorem{recommendation}{Recommendation}
\newtheorem{question}{Question}

\newcommand\xqed[1]{%
  \leavevmode\unskip\penalty9999 \hbox{}\nobreak\hfill
  \quad\hbox{#1}}
\newcommand\exampleqed{\xqed{$\triangle$}}

% Code
\RequirePackage{listings}
\RequirePackage[chapter]{algorithm}
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}

% Cryptocode
\RequirePackage{cryptocode}

% Page style
\makepagestyle{ruled}
\makeevenhead{ruled}{{\small\thepage \ \ \ \leftmark}}{}{}
\makeoddhead{ruled}{}{}{{\small\rightmark} \ \ \ \thepage}
\makepsmarks{ruled}{%
\createmark{chapter}{left}{shownumber}{}{. }
\createmark{section}{right}{shownumber}{}{. }
\createplainmark{toc}{both}{\contentsname}
\createplainmark{lof}{both}{\listfigurename}
\createplainmark{lot}{both}{\listtablename}
\createplainmark{bib}{both}{\bibname}
\createplainmark{index}{both}{\indexname}
\createplainmark{glossary}{both}{\glossaryname}
}
\pagestyle{ruled}

% Pages with chapter headings
\makepagestyle{plain}
  \makeevenfoot{plain}{\thepage}{}{}
  \makeoddfoot{plain}{}{}{\thepage}

% Chapter style - based on hansen style, http://www.tex.ac.uk/tex-archive/info/latex-samples/MemoirChapStyles/
\RequirePackage{calc}
\definecolor{chaptercolor}{gray}{0.8}
% helper macros
\newcommand\numlifter[1]{\raisebox{-2cm}[0pt][0pt]{\smash{#1}}}
\newcommand\numindent{\kern37pt}
\newlength\chaptertitleboxheight

\makechapterstyle{hansen2}{
  \renewcommand\printchaptername{%
    \raggedleft%
    \begingroup%
    \leavevmode%
    \chapnamefont%
    \strut%
    \chaptername%
    \endgroup%
  }
  \renewcommand\printchapternum{%
    \begingroup%
    \leavevmode%
    \chapnumfont%
    \strut%
    \numlifter{\thechapter}%
    \endgroup%
  }
  \renewcommand*{\printchapternonum}{%
    \vphantom{\begingroup%
      \leavevmode%
      \chapnumfont%
      \numlifter{\vphantom{9}}%
      \endgroup}
    \afterchapternum}
  \setlength\midchapskip{0pt}
  \setlength\beforechapskip{0.5\baselineskip}
  \setlength{\afterchapskip}{3\baselineskip}
  \renewcommand\chapnumfont{%
    \fontsize{4cm}{0cm}%
    \bfseries%
    \color{chaptercolor}%
  }
    \renewcommand\chapnamefont{%
    \fontsize{2.0em}{1.25cm}%
    \bfseries%
    \color{chaptercolor}%
  }
  \renewcommand\chaptitlefont{%
    \normalfont%
    \Huge%
    \bfseries%
    \raggedleft%
  }%
  \settototalheight\chaptertitleboxheight{%
    \parbox{\textwidth}{\chaptitlefont \strut bg\\bg\strut}}
  \renewcommand\printchaptertitle[1]{%
    \parbox[t][\chaptertitleboxheight][t]{\textwidth}{%
      \microtypesetup{protrusion=false}%
      \chaptitlefont\strut ##1\strut}%
  }
}
\chapterstyle{hansen2}

% Abstract and acknowledgments
\renewcommand{\abstractnamefont}{\bfseries\Large} 
\renewcommand{\abstracttextfont}{\normalfont\normalsize}

% Table of contents
\setcounter{tocdepth}{2} % show also subsections in the table of content
\renewcommand*{\sectionrefname}{Section~}
  
% Glossary; undefine some commands from memoir.cls to avoid generating warnings
\let\theglossary\@undefined
\let\endtheglossary\@undefined  
\let\printglossary\undefined
\let\glossarymark\undefined
\RequirePackage{silence}
\WarningFilter{glossaries}{No language module detected} % remove warning for non-existing glossaries-norsk
\RequirePackage[nonumberlist,toc,acronym,xindy]{glossaries}
\renewcommand\@pnumwidth{2em} % adjust page number column width

% Title page and project description
\let\ordinal\undefined
\RequirePackage{datetime}
\newdateformat{dateIIK}{\monthname[\THEMONTH] \THEYEAR}


\newcounter{@auth}
\newcounter{@cosupv}
\newcounter{@name}
\newcounter{@names}
\def\auth{1}
\def\cosupv{2}
\newcommand{\student}[1]{\author{#1}}
\let\@supervisor\@empty
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\let\@cosupervisor\@empty
\newcommand{\cosupervisor}[1]{\def\@cosupervisor{#1}}
\let\@approvedon\@empty
\newcommand{\approvedon}[1]{\def\@approvedon{#1}}
\let\names\undefined


\newcommand{\titlefont}{\fontsize{2.3em}{0em}\sffamily}
\newcommand{\authorfont}{\fontsize{1.6em}{1.8em}\sffamily\bfseries}
\newcommand{\frontpagefont}{\fontsize{1.15em}{1.3em}\sffamily}
\newcommand{\newlinetitle}{\par\noindent }
\def\@maketitle{%
 \def\lastand{\if\names\auth\value{@names}=\value{@auth}\else\value{@names}=\value{@cosupv}\fi
              \ifnum\value{@names}=2\relax
                 \unskip{} \andname
              \else
                 \unskip, \andname
              \fi}%
 \def\and{\if\names\auth\value{@names}=\value{@auth}\else\value{@names}=\value{@cosupv}\fi
          \stepcounter{@name}\relax
          \ifnum\value{@name}=\value{@names}%
             \lastand
          \else
             \unskip,\newline
          \fi}%
 {%
 \setbox0=\vbox{\setcounter{@name}{1}\def\and{\stepcounter{@name}}\@author}
 \global\value{@auth}=\value{@name}%
 \setbox1=\vbox{\setcounter{@name}{1}\def\and{\stepcounter{@name}}\@cosupervisor}
 \global\value{@cosupv}=\value{@name}%
 \setcounter{@name}{1}%
 \renewcommand{\arraystretch}{1}
 \thispagestyle{empty}
 \begingroup
   \setcounter{@name}{1}%
   \global\let\names\auth%
    \vbox{%
      \vspace*{-1cm}
      {\noindent\includegraphics[width=6cm]{\ntnulogo}\par}\vspace{3cm}
      {\noindent\titlefont\@title\par}\vspace{1.8cm}
      {\noindent\authorfont\@author\par}
    }%
    \vfill
    \vbox{%
      \frontpagefont
      {\noindent%
       \setcounter{@name}{1}%
       \global\let\names\cosupv%
       \begin{tabular}{@{}lp{8cm}}
         \submissiondatename:   & \dateIIK\@date \\
         \supervisorname:       & \@supervisor    \\
         \ifx\@cosupervisor\empty\else\ifnum\value{@cosupv}=1\relax\cosupervisorname\else\cosupervisorsname\fi:     & \@cosupervisor  \\\fi
       \end{tabular}\par
      }\vspace{.5cm}
      {\noindent \ntnuname\\\iikname}
    }%
    \null
  \endgroup%
  \cleardoublepage%
  \renewcommand{\arraystretch}{1.2}
}
}

\RequirePackage{forloop}
\newcommand{\getelement}[2]{%
  \@tempcnta=0
  \begingroup
  \edef\@tempb{#1;}
  \def\do##1;{%
    \ifx\relax##1\relax\else
      \ifnum\@tempcnta=#2\relax
        ##1
      \fi
      \advance\@tempcnta by 1
      \expandafter\do
    \fi
  }%
  \expandafter\do\@tempb\relax;
  \endgroup
}

\def\makedescription{%
\def\lastand{\if\names\auth\value{@names}=\value{@auth}\else\value{@names}=\value{@cosupv}\fi
  \ifnum\value{@names}=2\relax
    \unskip{} \anddescname
  \else
    \unskip, \anddescname
  \fi
}
\def\and{\if\names\auth\value{@names}=\value{@auth}\else\value{@names}=\value{@cosupv}\fi
  \stepcounter{@name}\relax
  \ifnum\value{@name}=\value{@names}%
    \lastand
  \else
    \unskip,\newline
  \fi
}
{%
\renewcommand{\newlinetitle}{}
\setbox0=\vbox{\setcounter{@name}{1}\def\and{\stepcounter{@name}}\@author}
\global\setcounter{@auth}{\value{@name}}
\setbox1=\vbox{\setcounter{@name}{1}\def\and{\stepcounter{@name}}\@cosupervisor}
\global\setcounter{@cosupv}{\value{@name}}
\setcounter{@name}{1}
\newcounter{@incr}
\begingroup
\def\newline{}
  \ifthesis
    \begin{titlingpage}
    \begin{center}
      \abstractnamefont\textbf{\problemdescriptionname}
    \end{center}
  \else
    \thispagestyle{empty}
    \setcounter{@name}{1}
    \global\let\names\auth
    \noindent
    \begin{tabular}{@{}p{3.0cm}p{9.366cm}@{}}
      \textbf{\titlename:} & \@title \\
      \textbf{\ifnum\value{@auth}=1\relax\studentname\else\studentsname\fi:} & \@author \\
      \setcounter{@name}{1}
      \global\let\names\cosupv
      \textbf{\supervisorname:} & \@supervisor\\
      \ifx\@cosupervisor\empty\else\textbf{\ifnum\value{@cosupv}=1\relax\cosupervisorname\else\cosupervisorsname\fi:} & \@cosupervisor \\\fi  
    \end{tabular}\par
    \vspace{4ex}
    \noindent\textbf{\problemdescriptionname:}\par
    \vspace{2ex}
  \fi
  \input{problem_description}\par
  \ifthesis
    \noindent
    {\em\approvedname: \@approvedon\ -- \@supervisor\ (\supervisorname)}\par
  \else
    \def\and{;}
    \noindent
    \forloop{@incr}{0}{\value{@incr}<\value{@auth}}{
      \vspace{4ex}
      \begin{center}
        \begin{tabular}{ccc}
          \makebox[1.5in]{\hrulefill} &~~~~~& \makebox[2.5in]{\hrulefill}\\
          Date && \getelement{\@author}{\value{@incr}}\\
               && (\studentname)\\
        \end{tabular}
      \end{center}
    }
    \noindent
    \textbf{Approved by:}
    \vspace{4ex}
    \begin{center}
      \begin{tabular}{ccc}
        \makebox[1.5in]{\hrulefill} &~~~~~& \makebox[2.5in]{\hrulefill}\\
        Date && \@supervisor\\
             && (\supervisorname)\\
      \end{tabular}
    \end{center}
  \fi
  \ifthesis \end{titlingpage} \cleardoublepage \fi
\endgroup
}
}
