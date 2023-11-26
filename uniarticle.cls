\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uniarticle}

\LoadClass[10pt,a4paper]{article}

\RequirePackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,
    urlcolor=cyan,
    pdfpagemode=FullScreen,
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

% Column
% TODO: Two column
\RequirePackage{balance}

% Code
\RequirePackage{minted}

% References
\RequirePackage{cleveref}

\setlength{\parskip}{0pt}
