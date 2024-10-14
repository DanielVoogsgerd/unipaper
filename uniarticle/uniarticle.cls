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

% Title
\RequirePackage{titling}
\renewcommand{\maketitlehooka}{\begin{flushright}{\includegraphics[width=74mm]{university-logos/vu.pdf}\par}\end{flushright}}

\pretitle{\begin{center}\LARGE\bf}

\if\@mycolnum2
\let\@oldmaketitle\maketitle
\renewcommand{\maketitle}[1]{\twocolumn[\begin{@twocolumnfalse}\@oldmaketitle{#1}\end{@twocolumnfalse}]}
\fi
\setlength{\droptitle}{-5em}


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
\RequirePackage{acro}

% Math
\RequirePackage{amsmath}
\RequirePackage{amssymb}

% Physics
\RequirePackage{physics}
\RequirePackage{siunitx}
\AtBeginDocument{\RenewCommandCopy\qty\SI}

% Layout
\RequirePackage[a4paper,margin=2cm]{geometry}

% Figures
\RequirePackage{graphicx}
\RequirePackage[justification=centering]{caption}
\RequirePackage{subfigure}
\RequirePackage{subcaption}

% Tables
\RequirePackage{tabularx}

% Column
\RequirePackage{balance}

% Code
\RequirePackage[outputdir=.aux]{minted}
\usemintedstyle{colorful}
\usepackage{xcolor}
\definecolor{light-gray}{rgb}{0.9,0.9,0.9}
\setminted{fontsize=\small, bgcolor=light-gray}


% References
\RequirePackage{cleveref}
