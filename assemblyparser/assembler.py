#!/usr/bin/python3
# author: Hugo Carl <mormeme@gmail.com>

class Parser:
    def __init__(self):
        self.arquivo = open("assembly.txt", "r")
        self.dicinst = {"mov":"0000","add":"0001","comp":"0010","je":"0011","jmp":"0100","compi":"0110","write":"1100","read":"0101","compr":"1110"}
        self.dicregs = {"%su":"000","%sd":"001","%mu":"010","%md":"011","%hu":"100","%hd":"101","%tmp1":"110","%tmp2":"111"}
        self.label = {}
        self.bina = []

    def readline(self):
        a = []
        count = 0
        
        for i in self.arquivo:
            k = i.replace('$', '').replace(',', '').replace(':', '').split()
            a.append(k)
            if len(k) == 1:
                self.label[k[0]] = count 
            else:
                count += 1
        print(a)
        for j in a:
            if j[0] == "mov" or j[0] == "read":
                self.bina.append(self.dicinst[j[0]] + "000000" + self.dicregs[j[1]] + self.hextobin8(j[2]))
            elif j[0] == "write" or j[0] == "comp" or j[0] == "add":
                self.bina.append(self.dicinst[j[0]] + "000" + self.dicregs[j[1]] + self.dicregs[j[1]] + self.hextobin8(j[2]))
            elif j[0] == "je" or j[0] == "jmp":
                self.bina.append(self.dicinst[j[0]] + "000000000" + str(bin(self.label[j[1]])[2:].zfill(8)))
            elif j[0] == "compi":
                self.bina.append(self.dicinst[j[0]] + "000" + self.dicregs[j[1]] + self.dicregs[j[3]] + self.hextobin8(j[2]))
            elif j[0] == "compr":
                self.bina.append(self.dicinst[j[0]] + self.dicregs[j[1]] + self.dicregs[j[2]] + "00000000000")
        
        print(self.bina)
        print(self.label)  
        self.write_file()
    
    def hextobin8(self, hex):
        return str(bin(int(hex, 16))[2:].zfill(8))

    def write_file(self):
        output_file = open('binary.txt','w')
        count = 0
        for i in self.bina:
            output_file.write('tmp('+str(count)+') := b"')
            output_file.write(i + '";\n')
            count += 1
        output_file.close()             

if __name__ == '__main__':
    Parser = Parser()
    Parser.readline()
    

