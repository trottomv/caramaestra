require 'telegram/bot'

token = '178748095:AAGH1i992MEmJmph6Ci6R2Zm2nbuSJ6xC5g'

Telegram::Bot::Client.run (token) do |bot|
bot.listen do |message|
	case message.text
	when '/help'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Ciao @#{message.from.username}, per dialogare con me occorre utilizzare il simbolo '/' anteposto ad ogni parola. Tutto chiaro? /si o /no")
		when message.text = '/no'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Per esempio quando faccio l'appello e chiedo <<@#{message.from.username} e' presente>>? la sintassi corretta della risposta e' /si. Adesso hai capito?")	
		when message.text = '/si'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Bene, allora per inizire scrivi /start .")
	when '/start'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Caro @#{message.from.username}, benvenut* al corso di grammatica italiana, io sono la prof.ssa Maria Barbadoro.
Prendi pure posto e prestiamo attenzione. Per avere informazioni maggiori su come dialogare con me scrivi /help 
Altrimenti passiamo al programma delle mie lezioni:
/lezione 'Lezione introduttiva'
/lezione1 'Analisi logica'
Scrivi quale lezione vorresti svolgere.")
	when '@caramaestra_bot'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Ciao @#{message.from.username}, benvenut* al corso di grammatica italiana, io sono la prof.ssa Maria Barbadoro.
Prendi pure posto e prestiamo attenzione. Per avere informazioni maggiori su come dialogare con me scrivi /help 
Altrimenti passiamo al programma delle mie lezioni:
/lezione 'Lezione introduttiva'
/lezione1 'Analisi logica'
Scrivi quale lezione vorresti svolgere.")
	when '/lezione'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Car* @#{message.from.username}, iniziamo subito con una prima domanda: potresti cortesemente dirmi quale e' la capitale di Italia?")
		when '/roma'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Come sarebbe a dire /roma?? Intendevi dire /Roma spero??
Riscrivila correttamente per cortesia.")
		when '/Roma'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Bene prendi pure posto e prestiamo attenzione!!
Come prima cosa studiati bene l'uso delle maiuscole nella lingua italiana http://www.grammaticaitaliana.eu/uso_delle_maiuscole.html
Fatto? (quando sarai pronto rispondi /fatto ).")
		when '/fatto'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Bene, domanda: i nomi di popoli, nel caso vengano utilizzati come aggettivi, devono essere scritti con l'iniziale /maiuscola o /minuscola?")
		when '/minuscola'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Bene, risposta corretta. Car* @#{message.from.username}, ti meriti proprio un bel voto sul registro elettronico.
Per la prossima lezione, ripassa l'uso delle maiuscole e studiati il prossimo capitolo sull'analisi logica http://www.grammaticaitaliana.eu/analisi_logica.html
Arrivederci alla prossima /lezione1 car* @#{message.from.username}.")
		when '/maiuscola'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Ahi Ahi Ahi... Car* @#{message.from.username} proprio non ci siamo! Non so proprio come devo fare con te. 
Qui partiamo proprio male, sarei costretta a metterti un brutto voto sul registro elettronico ma prova a ristudiarti meglio l'uso delle maiuscole http://www.grammaticaitaliana.eu/uso_delle_maiuscole.html 
E prova a rispondere di nuovo alla domanda, quando avrai ristudiato meglio questo capitolo scrivi /fatto .")
	when '/lezione1'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Ciao @#{message.from.username}, iniziamo subito con la seconda lezione. Hai gia' studiato il secondo capitolo del programma sull'analisi logica? http://www.grammaticaitaliana.eu/analisi_logica.html (quando sarai pronto su questo argomento scrivi /pronto )")
    		when '/pronto'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Bene, domanda sull'analisi logica: nella frase <<Giulia è partita.>>, 'Giulia' è il soggetto che compie l'azione di partire, quindi 'è partita' è il predicato /verbale o /nominale?")
		when message.text = '/nominale'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Ahi ahi, sei proprio sicuro di aver studiato bene il capitolo sull'analisi logica? http://www.grammaticaitaliana.eu/analisi_logica.html Studia meglio e prova a rispondere di nuovo alla domanda, quando avrai studiato meglio scrivi /pronto")
		when message.text = '/verbale'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Bene risposta corretta, ti meriti un altro bel voto sul registro elettronico. Arrivederci @#{message.from.username} alla prossima lezione")
	when '/stop'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Arrivederci a presto car* #{message.from.username}")
	end
end
end
