#!/usr/bin/env python
# encoding: utf-8
# 访问 http://tool.lu/pyc/ 查看更多信息
import random
key = 'ctf'
strr = '186,98,180,154,139,192,114,14,102,168,43,136,52,218,85,100,43'

def func1(str1, key):
    random.seed(key)
    str2 = ''
    for c in str1:
        str2 += str(ord(c) ^ random.randint(0, 255)) + ','
    
    str2 = str2.strip(',')
    return str2


def func2(str2, key):
    random.seed(key)
    str1 = ''
    for i in str2.split(','):
        i = int(i)
        str1 += chr(i ^ random.randint(0, 255))
    
    return str1