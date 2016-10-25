# -*- coding: utf-8 -*-
import pymysql

hashtags= {"#FicaLeonardo":1,"#FicaBruna":2,"#FicaRaquel":3,"#FicaLuriana":4,"#FicaFabio":5,"#FicaLee":6,"#FicaPaula":7,"#FicaAluisio":8,"#FicaPedro":9,"#FicaFernando":10,"#FicaThaiana":11,"#FicaGleice":12,"#FicaVanessa":13,"#FicaRodrigo":14,"#FicaLivia":15,"#FicaGuilherme":16,"#FicaNuno":17,"#FicaGabriella":18,"#FicaTenente":19,"#FicaVictor":20,"#FicaHellen":21,"#VoltaGleice":22,"#VoltaLivia":23,"#VoltaTenente":24,"#VoltaNuno":25,"#VoltaGabriella":26,"#VoltaFernando":27,"#VoltaVictor":28,"#VoltaHellen":29,"#VoltaRodrigo":30,"#equipeVermelha":31,"#equipeAzul":32,"#equipeAmarela":33,"#VemNiMim":34,"#SentaNaGraxa":35,"#PodeVirQuente":36,"#JacquinSincero":37,"#CaixaMisteriosa":38,"#PartiuGeladeira":39,"#DivinoMaravilhoso":40,"#GanhaLeonardo":41,"#GanhaBruna":42,'#MasterChefBR':43,'#ForaLeonardo':44,'#ForaBruna':45,'#ForaRaquel':46,'#ForaLuriana':47,'#ForaFabio':48,'#ForaLee':49,'#ForaPaula':50,'#ForaAluisio':51,'#ForaPedro':52,'#ForaFernando':53,'#ForaThaiana':54,'#ForaGleice':55,'#ForaVanessa':56,'#ForaRodrigo':57,'#ForaLivia':58,'#ForaGuilherme':59,'#ForaNuno':60,'#ForaGabriella':61,'#ForaTenente':62,'#ForaVictor':63,'#ForaHellen':64;

leonardo = ["Leonardo Young","MC3_Leonardo","Leo","Leonardo","#FicaLeonardo","#GanhaLeonardo","#ForaLeonardo"]
bruna = ["Bruna Chaves","MC3_Bruna","Bruna","bruninha","#FicaBruna","#GanhaBruna","#ForaBruna"]
raquel = ["Raquel Novais","MC3_Raquel","Raquel","#FicaRaquel","#ForaRaquel"]
luriana = ["Luriana Toledo","MC3_Luriana","Luriana","luri","Luri","#FicaLuriana","#ForaLuriana"]
fabio = ["Fabio Nunes","MC3_Fabio","#FicaFabio","Fabio","o perfeito","#ForaFabio"]
lee = ["Lee Fu Kuang","MC3_Lee","#FicaLee","#ForaLee"]
paula = ["Paula Salles","MC3_Paula","#FicaPaula","paula","Paula","#ForaPaula"]
aluisio = ["Aluisio Nahime", "MC3_Aluisio","#FicaAluisio","Aluisio","#ForaAluisio"]
pedro = ["Pedro Lima", "MC3_Pedro", "pedro", "Pedro","#FicaPedro","#ForaPedro"]
fernando = ["Fernando Bianchi","MC3_Fernando", "Fernando", "fernando","#VoltaFernando","#FicaFernando","#ForaFernando"]
thaiana = ["Thaiana Wosniak","MC3_Thaiana","#FicaThaiana","thaiana","#ForaThaiana"]
gleice = ["Gleice Simão","MC3_Gleice","#VemNiMim","#VoltaGleice","#FicaGleice","gleice","#ForaGleice"]
vanessa = ["Vanessa Vagnotti","MC3_Vanessa","#FicaVanessa","vanessa","#ForaVanessa"]
rodrigo = ["Rodrigo Barros","MC3_Rodrigo","#FicaRodrigo","#VoltaRodrigo","rodrigo","#ForaRodrigo"]
livia = ["Livia Chathiard","MC3_Livia","#VoltaLivia","#FicaLivia","livia","#ForaLivia"]
guilherme = ["Guilherme Joventino","MC3_Guilherme","#FicaGuilherme","guilherme","#ForaGuilherme"]
nuno = ["Nuno Codeço","MC3_Nuno","#VoltaNuno","#FicaNuno","nuno","#ForaNuno"]
gabriela = ["Gabriella Paliankas","MC3_Gabriella","#VoltaGabriella","#FicaGabriella","gabriela","#ForaGabriella"]
tenente = ["Rodrigo Domingues [Tenente)","MC3_Tenente","#VoltaTenente","#FicaTenente","tenente","#ForaTenente"]
victor = ["Victor Castelo","MC3_Victor","#VoltaVictor","#FicaVictor","victor","#ForaVictor"]
hellen = ["Hellen Cruz","MC3_Hellen","#VoltaHellen","#FicaHellen","hellen","#ForaHellen"]
jacquin = ["Erick Jacquin","@erickjacquin","erickjacquin","#JacquinSincero","jaquin"]
fogaca = ["Henrique Fogaça","@fogaca_henrique","fogaca_henrique","#SentaNaGraxa","#VemNiMim","fogaca"]
paola = ["Paola Carosella","@PaolaCarosella","PaolaCarosella","paola"]
anapaula = ["Ana Paula Padrão", "anapaulapadrao","ana", "ana paula", "ana paula padrao" ]

conn = pymysql.connect(db="base_masterchef",user="root",passwd="",host="localhost")
c = conn.cursor()
conn.autocommit(True)

sucessHashtag = 0
relacaoHashtagFails = 0

sucessParticipante = 0
relacaoParticipanteFails = 0


def insertRelacaoParticipante(idTweet, idParticipante):
	global conn
	global c
	global fails
	global relacaoParticipanteFails
	global sucessParticipante
	try:
		sqlInsertParticipante  = 'INSERT into participante_has_tweet (tweet_idTweet,participante_idparticipante) VALUES (%d,%d);' %(idTweet,idParticipante)
		c.execute(sqlInsertParticipante)
		conn.commit()
		sucessParticipante += 1
	except:
		relacaoParticipanteFails += 1
		pass

def insertRelacaoHashtag(idTweet,idHashtag):
	global conn
	global c
	global fails
	global sucessHashtag
	global relacaoHashtagFails
	try:
		sqlInsertHashtag  = 'INSERT into tweet_has_hashtag (tweet_idTweet,hashtag_idHashtag) VALUES (%d,%d);' %(idTweet,idHashtag)
		c.execute(sqlInsertHashtag)
		conn.commit()
		sucessHashtag += 1
	except:
		relacaoHashtagFails += 1
		pass
		
def percorreArray(array,tweet,tweet_id,id_participante):
	for x in array:
		if x in tweet:
			insertRelacaoParticipante(tweet_id,id_participante)
			#print  tweet

sql1 = "SELECT idTweet, texto FROM tweet"
c.execute(sql1)
results = c.fetchall()

for tweet in results:
	tweet_id = tweet[0]
	tweet_text = tweet[1]
	
	percorreArray(leonardo,tweet_text,tweet_id,1)
	percorreArray(bruna,tweet_text,tweet_id,2)
	percorreArray(raquel,tweet_text,tweet_id,3)
	percorreArray(luriana,tweet_text,tweet_id,4)
	percorreArray(fabio,tweet_text,tweet_id,5)
	percorreArray(lee,tweet_text,tweet_id,6)
	percorreArray(paula,tweet_text,tweet_id,7)
	percorreArray(aluisio,tweet_text,tweet_id,8)
	percorreArray(pedro,tweet_text,tweet_id,9)
	percorreArray(fernando,tweet_text,tweet_id,10)
	percorreArray(thaiana,tweet_text,tweet_id,11)
	percorreArray(gleice,tweet_text,tweet_id,12)
	percorreArray(vanessa,tweet_text,tweet_id,13)
	percorreArray(rodrigo,tweet_text,tweet_id,14)
	percorreArray(livia,tweet_text,tweet_id,15)
	percorreArray(guilherme,tweet_text,tweet_id,16)
	percorreArray(nuno,tweet_text,tweet_id,17)
	percorreArray(gabriela,tweet_text,tweet_id,18)
	percorreArray(tenente,tweet_text,tweet_id,19)
	percorreArray(victor,tweet_text,tweet_id,20)
	percorreArray(hellen,tweet_text,tweet_id,21)
	percorreArray(jacquin,tweet_text,tweet_id,22)
	percorreArray(fogaca,tweet_text,tweet_id,23)
	percorreArray(paola,tweet_text,tweet_id,24)
	percorreArray(anapaula,tweet_text,tweet_id,25)
	
	for hashTAG in hashtags.keys():
		#print hashTAG
		#print tweet_text
		hashTAG = str(hashTAG)
		if hashTAG in tweet_text:
			#print tweet_text + "HASHTAG PRESENTE"
			insertRelacaoHashtag(hashtags[hashTAG],tweet_id)

totalParticipante = relacaoParticipanteFails + sucessParticipante
totalHashtag = relacaoHashtagFails+sucessHashtag
print "FALHAS DA INSERÇÂO DE RELACAO PARTICIPANTE TWEET %d de %d" %(relacaoParticipanteFails, totalParticipante)
print "FALHAS DA INSERÇÂO DE RELACAO HASHTAG TWEET %d de %d" %(relacaoHashtagFails, totalHashtag)
