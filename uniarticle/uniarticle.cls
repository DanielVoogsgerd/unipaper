\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uniarticle}

\LoadClass[10pt,a4paper,twocolumn]{article}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks=false,
    linkcolor=blue,
    filecolor=magenta,
    urlcolor=cyan,
    pdfpagemode=FullScreen,
}

\newcommand*{\subtitle}[1]{\gdef\thesubtitle{#1}}

% \RequirePackage{strip}
\renewcommand*{\maketitle}{%
% \begin{titlepage}
\twocolumn[
\begin{@twocolumnfalse}
    \begin{flushright}
        {\includegraphics[width=74mm]{university-logos/vu.pdf}\par}
    \end{flushright}
    \begin{center}
        {\huge\bfseries\@title} \\
        \ifdef{\thesubtitle}{\LARGE\thesubtitle\\}{}
        \vspace{0.5em}
        {\large\@author} \\
        {\large\@date}
    \end{center}
    \twocolumn
\end{@twocolumnfalse}
]
% \end{titlepage}
}

\RequirePackage{verbatim}

% Font
\RequirePackage[utf8]{inputenc}
\RequirePackage{fontenc}
\RequirePackage[
    protrusion=true,
    activate={true,nocompatibility},
    final,
    tracking=true,
    kerning=true,
    spacing=true,
    factor=1100]{microtype}
\SetTracking{encoding={*}, shape=sc}{40}
\usepackage{lmodern}

% Text
\RequirePackage[english]{babel}
\setlength\parindent{0pt}
\setlength\parskip{0.5em}

% Math
\RequirePackage{amsmath}
\RequirePackage{amssymb}

% Physics
\RequirePackage{physics}
\RequirePackage{siunitx}

% Layout
\RequirePackage[a4paper,margin=2cm]{geometry}

% Figures
\RequirePackage{graphicx}
\RequirePackage[justification=centering]{caption}
\RequirePackage{subfigure}
\RequirePackage{subcaption}

% Column
\RequirePackage{balance}

% Code
\RequirePackage{minted}
\usemintedstyle{colorful}
\usepackage{xcolor}
\definecolor{light-gray}{rgb}{0.9,0.9,0.9}
\setminted{fontsize=\small, bgcolor=light-gray}


% References
\RequirePackage{cleveref}
