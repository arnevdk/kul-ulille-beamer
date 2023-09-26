% Preamble
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kul-ulille-beamer}[2022/11/22 KULeuven \& Université de Lille
	presentation class]
\LoadClass[compress,aspectratio=169]{beamer}

% Packages
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage{amssymb}
\usetikzlibrary{shapes, shadows, arrows,arrows.meta}
\usetikzlibrary{positioning}
\RequirePackage{hyperref}
\RequirePackage{mathtools}
\RequirePackage{svg}

% Bibliography
\RequirePackage[style=authoryear,natbib=true]{biblatex}
\AtEveryBibitem{%
	\clearfield{issn} % Remove issn
	\clearfield{doi} % Remove doi

	\ifentrytype{online}{}{% Remove url except for @online
		\clearfield{url}
	}
}
%\addbibresource{references.bib}

% Environments and commands
\def\changemargin{\list{}{\rightmargin.2\linewidth\leftmargin.2\linewidth}\item[]}
\let\endchangemargin=\endlist

\titlegraphic{\includegraphics{images/logo.png}}
\newcommand{\titleframe}{
	\frame{
		\vskip0pt plus 1filll
			{\usebeamerfont{title}\usebeamercolor[fg]{title}\inserttitle}
		\bigskip

		\insertauthor \bigskip

		\insertinstitute \bigskip

		\insertdate \bigskip

		\inserttitlegraphic
		\vskip0pt plus 1filll

	}}
\newcommand{\tocframe}{
	{\setbeamercolor{background canvas}{bg=lightergray}
			\begin{frame}{\inserttitle}
				\tableofcontents[currentsection]
			\end{frame}}

}
% Custom colors
\definecolor{myred}{RGB}{255, 42, 42}
\definecolor{mygreen}{RGB}{113, 200, 55}
\definecolor{myblue}{RGB}{42, 127, 255}
\definecolor{lightergray}{rgb}{0.85, 0.85, 0.85}

% Theme
\RequirePackage[scaled]{helvet}
\renewcommand\familydefault{\sfdefault}
\RequirePackage[T1]{fontenc}

\setbeamertemplate{navigation symbols}{}\setbeamertemplate{footline}[frame number]
\setbeamertemplate{footline}[frame number]
\setbeamertemplate{frametitle}{
	\vspace{.5in}
	\raggedright\insertframetitle%
}
\setbeamercolor*{enumerate item}{fg=gray}
\setbeamercolor*{enumerate subitem}{fg=gray}
\setbeamercolor*{enumerate subsubitem}{fg=gray}
\setbeamercolor*{itemize item}{fg=lightgray}
\setbeamercolor*{itemize subitem}{fg=lightgray}
\setbeamercolor*{itemize subsubitem}{fg=lightgray}

\setbeamertemplate{bibliography item}{\insertbiblabel}
\setbeamercolor{frametitle}{fg=black}
\setbeamercolor{title}{fg=black}
\setbeamertemplate{itemize item}{\color{gray}$\blacktriangleright$}
\setbeamercolor{normal text}{fg=darkgray}
\setbeamercolor{bibliography item}{fg=gray}
\setbeamercolor{bibliography entry author}{fg=black}
\setbeamercolor{bibliography entry title}{fg=darkgray}
\setbeamercolor{bibliography entry authors}{fg=darkgray}
\setbeamercolor{bibliography entry location}{fg=gray}
\setbeamercolor{bibliography entry note}{fg=gray}
\setbeamercolor{bibliography entry journal}{fg=gray}

\setbeamercolor{section in toc}{fg=black}
\setbeamercolor{section in toc shaded}{fg=gray}
\setbeamertemplate{section in toc shaded}[default][100]

\setbeamercolor{subsection in toc}{fg=black}
\setbeamercolor{subsection in toc shaded}{fg=gray}
\setbeamertemplate{subsection in toc shaded}[default][100]
