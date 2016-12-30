#/* Made by Purva Gupta and Neha Tyagi, Banasthali University (May 2015) */

import os
import re

def Demo_WSDRules(pathDir,word,p_rs,allmeaning,allPOS,path_stfile,path_mnfile,path_tlfile):
    
    dict_pos = {}
    
    for i in range(len(allmeaning)):
        dict_pos[allmeaning[i]] = allPOS[i]
            
    clp_file = pathDir+'/'+word+'.clp'
    
    count = 0
    
    if(os.path.isfile(clp_file)):
        os.remove(clp_file)

    f1 = open(p_rs,'r')
    
    extractMR = []

    for line in f1:
        if 'Meaning' and '<-' in line:
            extractMR.append(re.split(r'[=,&<]+',line))
    
    for i in extractMR:
        temp = []
        i[2] = i[2][1:]
        temp = i[-1].split()
        i[-1] = temp[0]
               
    for i in extractMR:
        i.pop(0)

    line_S = []
    f_S = open(path_stfile,'r')
    for line in f_S:
        line_S.append(line[:-1])
    f_S.close()
    
    line_T = []
    f_T = open(path_tlfile,'r')
    for line in f_T:
        line_T.append(line[:-1])
    f_T.close()

    f = open(clp_file,'a')
    
    for i in extractMR: 
        f.write('\n\n; Name/Unique Id of WSD rule maker to be added here.')
       
        for x in range(len(allmeaning)):
            if i[0][1:-1] == allmeaning[x]:
                f.write('\n; '+line_S[x])
                f.write('\n; '+line_T[x])
             
        f.write('\n(defrule '+word+str(count))
        f.write('\n(declare (salience 0))')
        f.write('\n(id-root ?id '+word+')')
        f.write('\n?mng <-(meaning_to_be_decided ?id)')
        
        c = 1 
        pos=''
        for j in dict_pos.keys():
            if j == i[0][1:-1]:
                pos = dict_pos[j]

        while c < len(i):
            if i[c] == ' AjFArWaka_kriyA ':
                pass
            #    if i[c+1] == ' no ' or i[c+1] == 'no':
            #        f.write('\n(not('+i[c][1:-1]+' ?id))')
            #        c = c+2
            #    else:
            #        f.write('\n('+i[c][1:-1]+' ?id)')
            #        c = c+2

            elif i[c] == ' conjunction-components ':
                if i[c+1] == ' no ' or i[c+1] == 'no':
                    f.write('\n(not('+i[c][1:-1]+' ? ?id ?id1))')
                    c = c+2
                else:
                    f.write('\n('+i[c][1:-1]+' ? ?id ?id1)')
                    c = c+2

            else:
                if i[c+1] == ' no ' or i[c+1] == 'no':
                    rel_list = i[c].split('-')
                    if rel_list[0] == ' kriyA' and pos == 'verb': 
                        f.write('\n(not('+i[c][1:-1]+' ?id ?))')
                        c = c+2
                    else:
                        f.write('\n(not('+i[c][1:-1]+' ? ?id))')
                        c = c+2
                else:
                    rel_list = i[c].split('-')
                    if rel_list[0] == ' kriyA' and pos == 'verb':
                        f.write('\n('+i[c][1:-1]+' ?id ?)')
                        c = c+2
                    else:
                        f.write('\n('+i[c][1:-1]+' ? ?id)')
                        c = c+2

        f.write('\n(id-cat_coarse ?id '+pos+')')
        f.write('\n=>')
        f.write('\n(retract ?mng)')
        f.write('\n(assert (id-wsd_root_mng ?id '+i[0]+'))')
        f.write('\n(if ?*debug_flag* then')
        f.write('\n(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*prov_dir* "  '+word+'.clp   '+word+str(count)+'   "  ?id "  '+i[0]+')" crlf))')
        f.write('\n)')
        
        count = count + 1    
    f.close()


def checkAnimate(str1):

    f1 = open('/home/shubhangi/anusaaraka/Anu_data/human.txt','r')
    
    for line1 in f1:
        if str1 in line1: 
            return 'human'
    f1.close()

    f2 = open('/home/shubhangi/anusaaraka/Anu_data/animate.txt','r')  

    for line2 in f2:
        if str1 in line2:
            return 'animate'
    f2.close()

    f3 = open('/home/shubhangi/anusaaraka/miscellaneous/Programs/removed_files/inanimate.txt','r')

    for line3 in f3:
        if str1 in line3:
            return 'inanimate'
    f3.close()

    return 'yes'

def tabProg():
    
    #pathOfSM = raw_input('Enter the path of the directory containing the sentence and meaning file : ')
    pathOfSM = '/home/shubhangi/Desktop/Shubhangi/DTREE/'
    stfile = raw_input("Enter the name of the sentence file : ")
    tlfile = raw_input("Enter the name of the translation file : ")
    mnfile1 = raw_input("Enter the name of the meaning file : ")
    word = raw_input("Enter the required word : ")
    
    path_stfile = pathOfSM+stfile
    path_mnfile = pathOfSM+mnfile1
    print path_mnfile
    path_tlfile = pathOfSM+tlfile

    path1 = '/home/shubhangi/tmp_anu_dir/tmp/'+stfile+'_tmp'
    
    pathOfWordDir = pathOfSM+'/'+word+'/'
    if not(os.path.isdir(pathOfWordDir)):
        cmd = 'mkdir '+word
        os.system(cmd)
    
    os.chdir(word)

    pathDir = os.getcwd()

    p_TempTab = pathDir+'/'+word+'Temp.tab'
    p_Tab = pathDir+'/'+word+'.tab'
    p_dom = pathDir+'/'+word+'.dom'
    p_dt = pathDir+'/'+word+'.dt'
    p_rs = pathDir+'/'+word+'.rs'

    if(os.path.isfile(p_TempTab)):     
        os.remove(p_TempTab)
    
    if(os.path.isfile(p_Tab)):
        os.remove(p_Tab)

    listallrels = []
    tempList = []
    filenameTmp = []
    filename = []
    allmeaning = []
    allPOS = []
    k = 0
    
    f = open(path_mnfile, 'r')		#Extracting meanings from mnfile1 and storing them in 'allmeaning' list.

    for line in f:
        tempList.append(line.split())

    for i in range(len(tempList)):
        allmeaning.append(tempList[i][0])

    meaninglen = len(allmeaning)
    f.close()

    tmpfilename = os.listdir(path1)
    
    for i in tmpfilename:    
        if not (i[0].isalpha()):
            filenameTmp.append(i)

    #Sorting the file names 
    #Ex : 2.1,2.2,2.11,2.23  ------>  2.1,2.11,2.2,2.23
    filename = sorted(filenameTmp, key= lambda v:[int (i) for i in v.split('.')])    
    
    for fn in filename:
        listoffiles = []
        listofwords = []
        listofwords1 = []
        listofrels = []
        listofrels1 = []
        Tmplistpos = []
        listtempmeaning = []
        rels = []
        newlistrels = []
        Tmplist11 = []
        wordid = 0
        idnext = 0

        if os.path.isdir(os.path.join(path1,fn)) == True:
	    
            if not(fn == 'anu_html' or fn == '1.1'):
               
                os.chdir(os.path.join(path1,fn))
                currdir = os.getcwd()
                           
                f = open('word.dat', 'r')
                for line in f:
                    for word1 in line.split():                                    #splitting word.dat by space
                        if not(word1 == '(id-word' or word1 == '(id-last_word'):  #Checking whether word1 is not"(id-word" and "(id-last_word"
                            if not(word1.isdigit()):                        #Checking if the word is a string then remove the closing brace
                                listofwords.append(word1[:-1])
                            else:                                           #checking if the word is digit then append that in list
                                listofwords.append(word1)
                
                #Ex : listofwords = ['1', 'scatter', '2', 'the', '3', 'grass', '4', 'seed', '5', 'over', '6', 'the', '7', 'lawn', '7', 'lawn']
                
                lengthoflist = len(listofwords) - 1

                dict = {} 
                for x in range(lengthoflist):
                    if x % 2 == 0:
                        str1 = listofwords[x+1]
                        dict[listofwords[x]] = str1

                #Ex : dict = {'1': 'scatter', '3': 'grass', '2': 'the', '5': 'over', '4': 'seed', '7': 'lawn', '6': 'the'} 
           
                for i in dict.keys():
                    if dict[i] == word:
                        wordid = i
                        idnext = int(i) + 1 
    
                if dict.has_key(str(idnext)):
                    nextword = dict[str(idnext)]              #'nextword' : word that follows the input word; Extracted on the basis of wordid
                else:
                    nextword = 'none'
                
                f.close()
                

                templist_pos=[]
                pos = 'id-cat_coarse'
                pos1=''
                f = open('cat_consistency_check.dat' , 'r')
                for line in f:
                #If the id of word and id-cat_coarse is found in a line then it will split the line to get the pos category of the input word
		    if pos in line:
                        templist_pos=line.split()
                        if templist_pos[1] == str(wordid):
                            pos1 = templist_pos[2][:-1]
              
	        if pos1 == '':
                    pos1='not_defined'
                    allPOS.append(pos1)
                else:
                    allPOS.append(pos1)
                
                f.close()                 
 
                f = open('relations.dat' , 'r')
              
		for line in f:
		    listofrels1.append(line.split())		#'listofrels1' contains all the relations present in one sentence
                    # Ex : listofrels1 = [['(AjFArWaka_vAkya)'],['(viSeRya-saMKyA_viSeRaNa','14','13)'],['(AjFArWaka_kriyA','1)']]
                    
                for i in listofrels1:                 #Removing '(' and ')' braces from starting and ending elements of sublist
                    l1 = len(i)
                    i[0] = i[0][1:]
                    i[l1-1] = i[l1-1][:-1]
                        
		for i in listofrels1:
                    for j in i: 
                        if wordid == j:
                            listofrels.append(i)
                	
                for j in listofrels:
                    z = j[0]
                    rels.append(z)		#Appending relations in 'rels' list 
                    listallrels.append(z) 	#Appending relations in 'listallrels' list
                    
		    relatedWord1 = ''
                    relatedWord2 = ''
		    
                    newlistrels.append(z)
                    if len(j) == 3:                 #Searching for animate,human and inanimate only when the length of listofrels is '3'
                        if j[1] == str(wordid):
                            for q,v in dict.items():
                                if q == j[2]:
                                    relatedWord2 = checkAnimate(v)
                                    newlistrels.append(relatedWord2)
                        else:
                            for q,v in dict.items():
                                if q == j[1]:
 				    relatedWord1 = checkAnimate(v)
                                    newlistrels.append(relatedWord1)
                    else:
                        newlistrels.append('yes')
                
                rels = list(set(rels))		 #Making 'rels' unique
                rels.sort()  			 #Sorting 'rels' list 

                f.close()
         
                f = open(p_TempTab,'a')			# p_TempTab is the temporary .tab file containing the entries of all sentences 
                f.write(word)
                             
                for i in rels:
                    f.write(',')
                    f.write(i)
                    f.write(',')
                    for x in range(len(newlistrels)):
                        if i == newlistrels[x]:
                            f.write(newlistrels[x+1])
                        
                f.write(',')
                f.write(nextword)
                f.write(',')
                f.write(pos1)
                f.write(',') 
                f.write(allmeaning[k])
                f.write('\n')
                k = k+1
                f.close()
              
    listallrels = list(set(listallrels))
    listallrels.sort()

    len2=len(listallrels)
  
    f = open(p_TempTab,'r')
    f1 = open(p_Tab,'a')
    
    f1.write('Word')
    f1.write(',')
    
    for i in listallrels:
        f1.write(i)			#Prints name of all relations in .tab file
        f1.write(',')
    f1.write('Followed_By')
    f1.write(',')
    f1.write('POS')
    f1.write(',')
    f1.write('Meaning')
    f1.write('\n')    

    for line in f:
        templist = []
        j = 0

        for word2 in line.split(','):
            templist.append(word2)
     
        len3 = len(templist)-1

        temp = templist[len3]
        templist[len3] = temp[:-1]		#Removing '\n' from last word in every line
        
        for i in range(len3):                   #'len3' is length of 'templist'; each line of temporary .tab file
            if templist[i] == word:
                f1.write(templist[i])
            else:
                while j < len2:         	           #'len2' is length of 'listallrels' list
                    if templist[i] == listallrels[j]:
                        f1.write(',')
                        f1.write(templist[i+1])
                        j = j+1
                        break
                    elif templist[i] == 'animate' or templist[i] == 'human' or templist[i] == 'inanimate' or templist[i] == 'yes':
                        break
                    else:
                        f1.write(',')
                        f1.write('no')
                        j = j+1
        f1.write(',')
        f1.write(templist[len3-2])
        f1.write(',')
        f1.write(templist[len3-1])
        f1.write(',')
        f1.write(templist[len3])
        f1.write('\n')
        
    f.close()
    f1.close()
    os.remove(p_TempTab)

    with open(p_Tab,'r+') as filehandle:             #To remove extra new line characters in the final .tab file present at the end
        filehandle.seek(-1,os.SEEK_END)
        filehandle.truncate()
    
    print '\n".tab" file created...!!!'
    print '\n'

    os.chdir('/home/shubhangi/DTREE')
    cmd2 = './dom -a '+p_Tab+' '+p_dom
    os.system(cmd2)
    print '\n".dom" file created...!!!'
    print '\n'
   
    os.chdir('/home/shubhangi/DTREE')
    cmd3 = './dti -m1 '+p_dom+' '+p_Tab+' '+p_dt
    os.system(cmd3)
    print '\n".dt" file created...!!!'
    print '\n'
   
    os.chdir('/home/shubhangi/DTREE')
    cmd4 = './dtr -sc '+p_dt+' '+p_rs
    os.system(cmd4)
    print '\n".rs" file created...!!!'
    print '\n'
   
    Demo_WSDRules(pathDir,word,p_rs,allmeaning,allPOS,path_stfile,path_mnfile,path_tlfile)

tabProg()


