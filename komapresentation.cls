\ProvidesClass{komapresentation.cls}[2014/10/05 Presentations with scrartcl (JB)]
\LoadClassWithOptions{scrartcl} 

\linespread{1.12} 

\usepackage{xparse}



\NewDocumentCommand{\@location}{m}{no location given}
\NewDocumentCommand{\@shortlocation}{m}{\@location}
\NewDocumentCommand{\location}{o m}{%
	\IfNoValueTF{#1}{
		\gdef\@location{#2}
}{
			\gdef\@shortlocation{#1}
			\gdef\@location{#2}
		}
}

\usepackage{scrlayer-scrpage}
\ifoot{\@shortlocation}


\KOMAoptions{
paper=128mm:96mm, 
pagesize=auto, 
parskip=half-, 
}
\recalctypearea

\RequirePackage[ 
includeheadfoot,
top=3.5mm,
bottom=3.5mm,
left=5.5mm,
right=5.5mm,
headsep=6.5mm,
footskip=8.5mm
]{geometry}


\RequirePackage{lmodern} 

\renewcommand{\familydefault}{\sfdefault} 

\RequirePackage{xcolor} 
\RequirePackage{babel} 
\RequirePackage{microtype} 
\RequirePackage{tocstyle} 

%\renewcommand*{\@textbottom}{\vskip \z@ \@plus 1fil}
%\newcommand*{\@texttop}{\vskip \z@ \@plus .5fil}
%\addtolength{\parskip}{\z@\@plus .25fil}

\newtocstyle[noonewithdot]{nodotnopagenumber}{\settocfeature{pagenumberbox}{\@gobble}}
\usetocstyle{nodotnopagenumber}

\AtBeginDocument{\renewcaptionname{english}{\contentsname}{Outline}} 




%\ihead{
%\hspace{-2mm}
%\begin{tikzpicture}[remember picture,overlay]
%\node [xshift=\paperwidth/2,yshift=-\headheight] (mybar) at (current page.north west)[rectangle,fill,inner sep=0pt,minimum width=\paperwidth,minimum height=2\headheight,top color=mygreen!64,bottom color=mygreen]{}; 
%\node[below of=mybar,yshift=3.3mm,rectangle,shade,inner sep=0pt,minimum width=128mm,minimum height =1.5mm,top color=black!50,bottom color=white]{}; 
%shadow
%\end{tikzpicture}
%\color{white}\runninghead} 

%\ihead{\@shortlocation}





\setlength{\footheight}{8mm} 
\addtokomafont{pagefoot}{\footnotesize} 

%\ifoot{
%\hspace{-2mm}
%\begin{tikzpicture}[remember picture,overlay]
%\node [xshift=\paperwidth/2,yshift=\footheight] at (current page.south west)[rectangle,fill,inner sep=0pt,minimum width=\paperwidth,minimum height=3pt,top color=mygreen,bottom color=mygreen]{}; 
%\end{tikzpicture}
%\myauthor\ \raisebox{0.2mm}{$\bm{\vert}$}\ \myuni 
%}
%
%\ofoot[\pagemark/\pageref{LastPage}\hspace{-2mm}]{\pagemark/\pageref{LastPage}\hspace{-2mm}} 
%



%\RequirePackage{titlesec} 
%\titlespacing{\section}{0mm}{0mm}{0mm} 
%\titlespacing{\subsection}{0mm}{0mm}{-1mm} 
%\titlespacing{\subsubsection}{0mm}{0mm}{-2mm} 
%\setcounter{secnumdepth}{0} 
%




\newcommand*{\mytitle}{Presentation Title} 
\RequirePackage{nameref}
\newcommand*{\runninghead}{}
\newcommand*{\myauthor}{John Smith} 
\newcommand*{\mydate}{\today} 
\newcommand*{\myuni}{University of California --- Department of Statistics} 


%
\DeclareDocumentCommand\sectiona{s o m}{%
	\clearpage%
	\IfBooleanTF{#1}{%
		\renewcommand{\runninghead}{#3}%
	}{%
		\refstepcounter{section}
		\renewcommand{\runninghead}{#3}
		\IfNoValueTF{#2}{%
			\addsectiontocentry{}{#3}%
		}{%
			\addsectiontocentry{}{#2}%
		}%
	}%
}%
\newcommand\subsectiona[1]{%
	\clearpage%
	\refstepcounter{subsection}%
	\renewcommand{\runninghead}{\small #1\par}%
	\addsubsectiontocentry{}{#1}%
}%
%

\endinput
