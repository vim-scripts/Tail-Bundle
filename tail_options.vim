"------------------------------------------------------------------------------
"  Description: Options setable by the Tail plugin
"	   $Id: tail_options.vim 458 2006-11-18 09:42:10Z krischik $
"    Copyright: Copyright (C) 2006 Martin Krischik
"   Maintainer:	Martin Krischik
"      $Author: krischik $
"	 $Date: 2006-11-18 10:42:10 +0100 (Sa, 18 Nov 2006) $
"      Version: 2.2
"    $Revision: 458 $
"     $HeadURL: https://svn.sourceforge.net/svnroot/gnuada/trunk/tools/vim/tail_options.vim $
"      History:	17.11.2006 MK Tail_Options
"               01.01.2007 MK Bug fixing
"	 Usage: copy content into your .vimrc and change options to your
"		likeing.
"    Help Page: tail.txt
"------------------------------------------------------------------------------

echoerr 'It is suggested to copy the content of ada_options into .vimrc!'
finish " 1}}}

" Section: Tail options {{{1


   let g:tail#Height	   = 10
   let g:tail#Center_Win   = 0

   let g:mapleader	   = "<F12>"

   filetype plugin indent on
   syntax enable

" }}}1

" Section: Vimball options {{{1
:set noexpandtab fileformat=unix encoding=utf-8
:.+2,.+5 MkVimball tail-2.2.vba

tail_options.vim
plugin/tail.vim
autoload/tail.vim
doc/tail.txt


" }}}1

" Section: Tar options {{{1

tar --create --bzip2		 \
   --file="tail-2.0.0.tar.bz2"	 \
   plugin/tail.vim		 \
   autoload/tail.vim		 \
   doc/tail.txt			 ;

" }}}1

"------------------------------------------------------------------------------
"   Copyright (C) 2006	Martin Krischik
"
"   Vim is Charityware - see ":help license" or uganda.txt for licence details.
"------------------------------------------------------------------------------
" vim: textwidth=0 nowrap tabstop=8 shiftwidth=3 softtabstop=3 noexpandtab
" vim: foldmethod=marker
