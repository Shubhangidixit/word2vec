

import re
import itertools

def selectSentence():

    engSentence = raw_input('Enter the name of English sentence file : ')    # English file 
    hindiSentence = raw_input('Enter the name of Hindi sentence file : ')    # Hindi file
    word = raw_input('Enter the word whose sentences you want : ')           # Word to be searched

    f_e = open(engSentence , 'r')                                            # Open english file in read mode
    f_h = open(hindiSentence , 'r')                                          # Open hindi file in write mode
    
    Ename = 'E'+word+'File.txt'
    f_Enew = open(Ename , 'w')                                      # File containing english sentences have desired 'word'
    
    Hname = 'H'+word+'File.txt'
    f_Hnew = open(Hname , 'w')                                      # File containing hindi sentences of given 'word'

    for i,(line1,line2) in enumerate(itertools.izip(f_e,f_h)):
        for i in line1.split():
            if i == word:                                                        # Search for 'word' in english file
                f_Enew.write(line1)                                              # if word is found then write that line in f_Enew file
                f_Hnew.write(line2)

    f_e.close()
    f_h.close()
    f_Enew.close()
    f_Hnew.close()

selectSentence()

