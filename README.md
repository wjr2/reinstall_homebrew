#### A BASH script to automagically install a list of homebrew formulae

-- Requirements:

	Homebrew (http://brew.sh)

	BASH

	File with list of formulae from previous machine -- "$ brew list > file.txt"
	
-- Process:

	0) locate your newline separated file of formulae to install; e.g., ./file.txt
	
	1) from git repo, run:

	   a) "$ bash homebrew.sh file.txt all" -- to install all formuale in one go. (Default)
	   
	       NOTE: if one formula fails to install, the script will stop running

	   b) "$ bash homebrew.sh file.txt each" -- to install each formula separately.

	       NOTE: failing installations give an error, but installation of the remaining formulae will be attempted   
	
	2) pour a glass of your favorite beverage. (I'll have a Racer 5 IPA, thanks.)
	
	3) wait nearly an eternity (depending on which formulae you're installing)
	
	4) rejoice in having saved yourself some time!
	
#### Problems with homebrew installation?

	stackexchange.com is your friend. 

#### Problems with these scripts? 

     	Have you tapped the appropriate homebrew repos?
	
	OK, OK. You can contact Billy at fdf16862 - at - opayq.com  

#### The MIT License (MIT)

Copyright (c) 2014 William J. Robbins II

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
