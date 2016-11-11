# -*- coding: cp1252 -*-
# -*- coding: utf-8 -*-
#from __future__ import print_function, unicode_literals

import sys,getopt,got,datetime,codecs
import nltk
import pymysql
from limpeza import *

conn = pymysql.connect(db='base_masterchef',user='root',passwd='',host='localhost')
conn.autocommit(True)
c = conn.cursor()

def busca_palavras_frases(frases):
    todas_palavras = []
    for (palavras, sentimento) in frases:
            todas_palavras.extend(palavras)

    return todas_palavras
def busca_frequencia_palavras(lista_palavras):
    lista_palavras = nltk.FreqDist(lista_palavras)
    return lista_palavras

def busca_palavras_unicas(lista_frequencia):
    frequencia = lista_frequencia.keys()
    return frequencia

def extrator_caracteristicas(documento):
    doc = set(documento)
    caracteristicas={}
    for palavra in palavras_caracteristicas:
            caracteristicas["contem(%s)" % palavra] = (palavra in doc)
    return caracteristicas

base = []
base_negativas = open("negativo.txt","r")
lista_negativa = base_negativas.readlines()
for x in lista_negativa:
    x = x.replace("\n","")
    base.append((str(x), "negativo") )		
base_negativas.close()

base_positivas = open("positivo.txt","r")
lista_positiva = base_positivas.readlines()
for x in lista_positiva:
    x = x.replace("\n","")
    base.append((str(x),"positivo"))		
base_positivas.close()

base_neutras = open("neutro.txt","r")
lista_neutra = base_neutras.readlines()
for x in lista_neutra:
    x = x.replace("\n","")
    base.append((str(x),"neutro"))		
base_neutras.close()

stopwords = nltk.corpus.stopwords.words("portuguese")
arq_stopword = open("stopwords.txt","r")
lista_stopword = arq_stopword.readlines()
for i in lista_stopword:
    i = i.replace("\n","")
    stopwords.append(i)

stemmer = nltk.stem.RSLPStemmer()
global palavras_caracteristicas
frases = []
for (palavras, sentimento) in base:
    #print palavras
    filtrado = [str(stemmer.stem(e)) for  e in palavras.split() if e not in stopwords]
    frases.append((filtrado, sentimento))
    #print (filtrado, sentimento)

palavras = busca_palavras_frases(frases)
frequencia = busca_frequencia_palavras(palavras)
palavras_caracteristicas = busca_palavras_unicas(frequencia)
treino = nltk.classify.apply_features(extrator_caracteristicas, frases)
classificador = nltk.NaiveBayesClassifier.train(treino)

def classifica(tweetCont):
	global classificador
	tweet = limpeza(tweetCont)
	tweet_stemming = []
	for (palavras) in tweet.split():
		filtrado = [e for e in palavras.split()]
		try:
			tweet_stemming.append(str(stemmer.stem(filtrado[0])))
		except:
			return 3
	#print extrator_caracteristicas(tweet_stemming)
	sentimento = classificador.classify(extrator_caracteristicas(tweet_stemming))

	if sentimento == "neutro":
		return 1
	elif sentimento == "positivo":
		return 2
	else:
		return 3

def verificaInsereLocal(cidade,pais):
	global conn
	global c
	try:
		queryExisteLocal = 'SELECT * FROM local WHERE cidade = "%s" and pais = "%s" ' %(cidade,pais)
		c.execute(queryExisteLocal)
		row = c.fetchone()
		print row[0]
		if row[0]:
			print "Local ja cadastrado %i" %(row[0])
			return row[0]
		else:
			print "Nao existe esse local"
			return 1
	except Exception as e:
		print e
		return insereLocal(cidade,pais)

def insereLocal(cidade,pais):
	global conn
	global c
	try:
		queryLocal = 'INSERT INTO local(cidade,estado,pais) VALUES ("%s","sem estado","%s")' %(cidade,pais)
		c.execute(queryLocal)
		conn.commit()
		valor = c.lastrowid
		print "Foi adicionado um novo local %i" %(valor)
		return valor
	except Exception as e:
		print e
		return 1

def getTweet(querysearch,since,until,arquivo,episodio):
	try:
		tweetCriteria = got.manager.TweetCriteria()
		tweetCriteria.since = since
		tweetCriteria.until = until
		tweetCriteria.querySearch = querysearch
		tweetCriteria.maxTweets = 1000000

		print 'Searching...\n'
		
		def receiveBuffer(tweets):
			print "Iniciou"
			for t in tweets:
				global c
				global conn

				texto = t.text
				texto = texto.replace('"','\\"')
				texto = texto.replace ('/','')

				tweet_sentiment = classifica(texto)

				idLocal = 1

				local = t.geo
				local = local.split(',')

				if len(local) == 2:
					idLocal = verificaInsereLocal(local[0], local[1])
				else:
					idLocal = 1
				query = 'INSERT INTO tweet(texto,data,usuario,idLocal,sentimento_idTipo,retweet,favorito,episodio)VALUES ("%s","%s","%s",%i,%i,%i,%i,%i)' %(texto, t.date.strftime("%Y-%m-%d %H:%M"),t.username,idLocal ,tweet_sentiment, t.retweets , t.favorites,episodio)
				try:
					c.execute(query)
					conn.commit()
					print "Inserido"
				except:
					pass
				
			print 'Mais %d registros foram insereidos a base de dados...\n' % len(tweets)
		got.manager.TweetManager.getTweets(tweetCriteria, receiveBuffer)
	except e:
		print e
	finally:
		print 'Fim. '+ arquivo

#getTweet('#masterchefBR','2016-03-15','2016-03-17','MC3-15mar',1)
#getTweet('#masterchefBR','2016-03-22','2016-03-23','MC3-22mar',2)
#getTweet('#masterchefBR','2016-03-29','2016-03-30','MC3-29mar',3)
#getTweet('#masterchefBR','2016-04-05','2016-04-07','MC3-05abr',4)
#getTweet('#masterchefBR','2016-04-12','2016-04-14','MC3-12abr',5)
#getTweet('#masterchefBR','2016-04-19','2016-04-21','MC3-19abr',6)
getTweet('#masterchefBR','2016-04-26','2016-04-28','MC3-26abr',7)
getTweet('#masterchefBR','2016-05-03','2016-05-05','MC3-03mai',8)
getTweet('#masterchefBR','2016-05-10','2016-05-12','MC3-10mai',9)
getTweet('#masterchefBR','2016-05-17','2016-05-19','MC3-17mai',10)
getTweet('#masterchefBR','2016-05-24','2016-05-26','MC3-24mai',11)
getTweet('#masterchefBR','2016-05-31','2016-06-02','MC3-31mai',12)
getTweet('#masterchefBR','2016-06-07','2016-06-09','MC3-07jun',13)
getTweet('#masterchefBR','2016-06-14','2016-06-16','MC3-14jun',14)
getTweet('#masterchefBR','2016-06-21','2016-06-23','MC3-21jun',15)
getTweet('#masterchefBR','2016-06-28','2016-06-20','MC3-28jun',16)
getTweet('#masterchefBR','2016-07-04','2016-07-05','MC3-05jul',17)
getTweet('#masterchefBR','2016-07-06','2016-07-07','MC3-06jul',18)
getTweet('#masterchefBR','2016-07-12','2016-07-14','MC3-12jul',19)
getTweet('#masterchefBR','2016-07-19','2016-07-21','MC3-19jul',20)
getTweet('#masterchefBR','2016-07-26','2016-07-28','MC3-26jul',21)
getTweet('#masterchefBR','2016-08-02','2016-08-04','MC3-02ago',22)
getTweet('#masterchefBR','2016-08-09','2016-08-11','MC3-09ago',23)
getTweet('#masterchefBR','2016-08-16','2016-08-18','MC3-16ago',24)
getTweet('#masterchefBR','2016-08-23','2016-08-25','MC3-23ago',25)
