" File: LastModified.vim
" Maintainer: Chris Fröschl <cfroeschl@protonmail.com>
" Last Modified: Sat 27 Feb 2021 09:18:14 PM CET
" License:
" Copyright (c) Chris Fröschl. Distributed under the same terms as Vim itself.
" See :help license
"
" Description:
" LastModified functions.
" Sets the last modification time of the current file.
" To force the time stamp to be not updated, use the command:
"   :NOMOD
"
" To change it back, use
"   :MOD

" Things To Remember:  
" - Change the variable 's:timeStampLeader' to the string which you use in 
"   your code (by default which is 'Last Modified')
" - Change the variable 'timeStampFormat'. Put an example of the time format you
"   want.
" - Change the variable 'timeStampString'. Change it to get the proper time stamp.
"   Read the comments in the code to change the variable.

" Prechecks {{{

if !exists('g:timeStampLeader')
	let s:timeStampLeader = 'Last Modified: '
else
	let s:timeStampLeader = g:timeStampLeader
endif

" }}}

" RemoveLastHistoryItem {{{

function! <SID>RemoveLastHistoryItem()
  call histdel("/", -1)
  let @/ = histget("/", -1)
endfunction

" }}}

" utility#LastModified#UpdateWithLastMod {{{

function! utility#LastModified#UpdateWithLastMod()
	if exists('b:nomod') && b:nomod
		return
	end
	let pos = line('.').' | normal ! '.virtcol('.').'|'
	0
	let searchPos = search(s:timeStampLeader)
	if searchPos <= 3000 && searchPos > 0 && &modifiable

		" The format of the time stamp
		" please change the two variables according to the format you want
		" 
		" syntax - format  - example
		" %a	 - Day	   - Sat
		" %Y     - YYYY    - 2005
		" %b	 - Mon	   - Sep (3 digit month)
		" %m	 - mm	   - 09 (2 digit month)
		" %d	 - dd	   - 10
		" %H	 - HH	   - 15 (hour upto 24)
		" %I	 - HH	   - 12 (hour upto 12)
		" %M	 - MM	   - 50 (minute)
		" %X	 - HH:MM:SS-12:29:34)
		" %p	 - AM/PM
		
		let timeStampFormat = "Fri 11 Dec 2020 08:22:28 PM CET"
		let timeStampString = "%a %d %b %Y %I:%M:%S %p %Z"

		let timeStampFormatLength = strlen(timeStampFormat)
		let lastdate = matchstr(getline('.'), s:timeStampLeader.'\zs.*')
		
		let newdate  = strftime(timeStampString)
		let prefix   = ""
		let spaceLength = 0
		
		" Determines the space or tab before the time stamp 
		while 1
			if match(lastdate, " ") == 0
				let lastdate= strpart(lastdate, 1)
				let prefix = prefix.' '
			elseif match(lastdate, '	') == 0
				let lastdate = strpart(lastdate, 1)
				let prefix = prefix.'	'
			else
				break
			end
		endwhile

		let spaceIndex = 0
		" Checks whether the time format is same or not
		while spaceIndex <= timeStampFormatLength
			let spaceIndex1 = match(lastdate, " ", spaceIndex)
			let spaceIndex2 = match(timeStampFormat, " ", spaceIndex)
			if spaceIndex1 == -1
				let spaceIndex1 = strlen(lastdate)
			end
			if spaceIndex2 == -1
				let spaceIndex2 = strlen(timeStampFormat)
			end

			if spaceIndex1 != spaceIndex2
				echohl WarningMsg | echo "The time format is different" | echoh None
				exe ':silent' pos
				return
			else
				let spaceIndex = spaceIndex1 + 1
			end
		endwhile

		let newdate = newdate.strpart(lastdate , spaceIndex - 1)
		if lastdate == newdate
			exe ':silent' pos
			return
		end

		let newdate = prefix.newdate
		exe 's/'.s:timeStampLeader.'.*/'.s:timeStampLeader.newdate.'/e'
		call s:RemoveLastHistoryItem()
	else
		exe ':silent' pos
		return
	end

	exe ':silent' pos
endfunction

" }}}
