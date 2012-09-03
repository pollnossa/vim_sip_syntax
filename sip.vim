" Vim syntax file
" Language: SIP Server log-files
" Maintainer: Valery Pushkar <Valery.Pushkar@genesyslab.com>
" Latest Revision: 2012-08-16

if exists("b:current_syntax")
	finish
endif

syn keyword sipRequest INVITE REGISTER ACK BYE CANCEL SUBSCRIBE PUBLISH
syn keyword sipRequest INFO MESSAGE NOTIFY OPTIONS PRACK REFER UPDATE

"syn match sipRequest "^[A-Z]*"
syn match sipAddress "\<sip:[-a-zA-Z0-9_:@&?=+,.!/~+%$]*\>"
syn match sipResponse "^SIP/2.0\s[0-9]\{3\} [A-Za-z ]*"
syn match sipHeader "^[A-Z][A-Z]\?[a-z]*\(-[A-Za-z]*\)*:"

syn match tlibEvent "\<\(Event\|Request\)[A-Z][a-zA-Z]*"
syn match tlibEventAttribute "\<Attribute[A-Z][a-zA-Z]*"

syn match time "^@\=\([01]\=[0-9]\|2[0-3]\):[0-5][0-9]:[0-5][0-9]\(.[0-9]*\)\="
syn match gsip "^\<gsip:[-_A-Za-z0-9~:/;.,={}<> ()\[\]@]*"



highlight link sipRequest	Statement 
highlight link sipAddress	String
highlight link sipResponse	Statement
highlight link sipHeader	Function

highlight link tlibEvent	Function
highlight link tlibEventAttribute StorageClass 

highlight link time		PreProc
highlight link gsip		Special	
