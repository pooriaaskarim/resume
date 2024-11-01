%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV
% LaTeX Class
% Version 3.0 (December 17, 2022)
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.LaTeXTemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%----------------------------------------------------------------------------------------
%	CLASS CONFIGURATION
%----------------------------------------------------------------------------------------

\ProvidesClass{resume}[2022/12/17 v3.0 Resume class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % Pass through any options to the base class
\ProcessOptions\relax % Process given options

\LoadClass{article} % Load the base class

%----------------------------------------------------------------------------------------
%	REQUIRED PACKAGES AND MISC CONFIGURATIONS
%----------------------------------------------------------------------------------------

\usepackage[parfill]{parskip} % Remove paragraph indentation

\usepackage{array} % Required for bold tabular columns

\usepackage{ifthen} % Required for ifthenelse statements

\usepackage{graphicx} % Required for including images


\usepackage[sfdefault]{roboto}
\usepackage[T1]{fontenc}


%----------------------------------------------------------------------------------------
%	MARGINS
%----------------------------------------------------------------------------------------

\usepackage{geometry} % Required for adjusting page dimensions and margins
\geometry{
	top=72pt, % Top margin
	bottom=110pt, % Bottom margin
	left=48pt, % Left margin
	right=48pt, % Right margin
	%showframe, % Uncomment to show how the type block is set on the page
}

%----------------------------------------------------------------------------------------
%	PAGESTYLE
%----------------------------------------------------------------------------------------

% \pagestyle{empty}
\usepackage{fancyhdr} % Used for headers and footers
\pagestyle{fancy}
\fancyhf{}
\fancypagestyle{}{}
\fancyhead[L]{
\begingroup
\printName \\
\printSubtitle
\endgroup
}
\fancyfoot[C]{\printInfo}
% \renewcommand{\headrulewidth}{0pt} % Remove header rule
% \renewcommand{\footrulewidth}{0pt} % Remove footer rule


%----------------------------------------------------------------------------------------
%	Colors
%----------------------------------------------------------------------------------------

\usepackage[dvipsnames]{xcolor}
\definecolor{pantonegray}{RGB}{66, 67, 72}
\definecolor{darkgray}{RGB}{52 ,52, 52}
\definecolor{bluegray}{RGB}{74, 97, 113}


%----------------------------------------------------------------------------------------
%	HYPERLINKS
%----------------------------------------------------------------------------------------

\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=bluegray,
    filecolor=bluegray,      
    urlcolor=bluegray,
    pdfpagemode=FullScreen,
}

%----------------------------------------------------------------------------------------
%	SHAPES
%----------------------------------------------------------------------------------------

% Use the TikZ package
\usepackage{tikz}
\usetikzlibrary{shapes, positioning}

% Define a new command to create a chip-like shape with text inside a colored box
\newcommand{\chip}[2][bluegray]{
    \tikz[baseline]{
        \node[rounded corners=4pt, fill=#1!70, inner sep=3.5pt] {\footnotesize \textcolor{white}{\textbf{#2}}};
    }
}
\newcommand{\pdot}[1][1pt]{
    \tikz\draw[fill=pantonegray,draw=pantonegray] (0,0) circle (#1);
}


%----------------------------------------------------------------------------------------
%	NAME AND INFO COMMANDS
%----------------------------------------------------------------------------------------

\newcommand{\name}[1]{\renewcommand{\name}{#1}} % Defines the \name command to set the user's name

\newcommand{\subtitle}[1]      {\def \@subtitle{#1}}

\newcommand{\email}[1]      {\def \@email{#1}}
\newcommand{\phone}[1]      {\def \@phone{#1}}
\newcommand{\address}[1]    {\def \@address{#1}}
\newcommand{\linkedin}[1]   {\def \@linkedin{#1}}
\newcommand{\github}[1]     {\def \@github{#1}}

% \printName is used to output the user's name in a large size
\newcommand{\printName}{
	\begingroup
		\textcolor{pantonegray}{\MakeUppercase{\huge\bfseries\name}}\hfil % Style and output the user's name
		% \bigskip % Vertical whitespace below name
	\endgroup
}

% \printSubtitle is used to output the user's Subtitle in a small size
\newcommand{\printSubtitle}{
	\begingroup
		\textcolor{pantonegray}{\MakeUppercase{\small\bfseries\@subtitle}}\hfil % Style and output the user's subtitle
		\smallskip % Vertical whitespace below subtitle
	\endgroup
}


% \printInfo is used to style an info line (provided in the single parameter to the command)
\usepackage{fontawesome}
\newcommand{\printInfo}{
	  \color{bluegray}
   \begingroup
        \hrule
        \bigskip
		\centerline{\makebox[0pt][r]{\@phone}{\hspace{8pt}}{\faPhone} \hspace{4pt} \pdot \hspace{10pt} {\faEnvelope}{\hspace{8pt}}\makebox[0pt][l]{\@email}}
	    \centerline{\makebox[0pt][r]{\@github}{\hspace{5pt}}{\faGithubAlt} \hspace{4pt} \pdot \hspace{10pt} {\faLinkedin}{\hspace{8pt}}\makebox[0pt][l]{\@linkedin}}
        \smallskip
        \centerline{\textcolor{bluegray}{\textbf{{\@address}}}}
 \endgroup
	\par % End the paragraph to ensure correct spacing between lines
	\smallskip % Vertical whitespace between info lines
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the major sections within the CV
\newenvironment{rSection}[1]{ % The single parameter is for the section title
	\medskip % Vertical whitespace
	\MakeUppercase{\textbf{#1}} % Section title
	\medskip % Vertical whitespace
	\hrule % Horizontal rule
	\begin{list}{}{ % List to indent the entire content of the section
		\setlength{\leftmargin}{12pt}
		% \setlength{\rightmargin}{8pt}
	}
 
	\item[] % Empty list item to enable indentation
}{
	\end{list}
}

%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{ % 4 parameters: company name, year(s) employed, job title and location
	\textbf{#1} \hfill {#2} % Bold company name and date to the right
	\ifthenelse{\equal{#3}{}}{}{ % If the third parameter is empty, don't output the job title and location line
		\\ % Job title and location on a new line
		\textit{#3} \hfill \textit{#4} % Output job title and location
	}%
	\smallskip % Vertical whitespace
	\begin{list}
        {$\pdot$}
        {\leftmargin=16pt}
		      \setlength{\itemsep}{-0.5em} \vspace{-0.5em} % Reduce vertical spacing between items in the list for a tighter look
    }{  
	   \end{list}
	   \vspace{0.5em} % Vertical whitespace after the end of the list  
    }
