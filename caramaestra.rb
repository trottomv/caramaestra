require 'telegram/bot'

token = '178748095:AAGH1i992MEmJmph6Ci6R2Zm2nbuSJ6xC5g'

Telegram::Bot::Client.run (token) do |bot|
bot.listen do |message|
	case message.text
	when '/help'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Ciao, @#{message.from.username}, per iniziare la lezione invia /lezione")
	when '/start'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Ciao, @#{message.from.username}, per iniziare la lezione invia /lezione")
	when '/stop'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Arrivederci a presto caro #{message.from.username}")
	when '@caramaestra_bot'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Ciao @#{message.from.username}, per iniziare la lezione invia /lezione.")
	when '/lezione'
		bot.api.sendMessage(chat_id: message.chat.id, text: "Ciao @#{message.from.username}, benvenut* al corso di grammatica italiana, io sono la prof.ssa Maria Barbadoro.")
		bot.api.sendMessage(chat_id: message.chat.id, text: "Per dialogare con me occorre utilizzare il simbolo '/' anteposto ad ogni parola. Tutto chiaro? /si o /no")
		when message.text = '/no'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Per esempio quando faccio l'appello e chiedo <<@#{message.from.username} e' presente>>? la sintassi corretta della risposta e' /si. Adesso hai capito?")	
		when message.text = '/si'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Bene, iniziamo subito con la nostra lezione.")
			bot.api.sendMessage(chat_id: message.chat.id, text: "Caro @#{message.from.username}, potresti dirmi quale e' la capitale di Italia?")
		when message.text = '/roma'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Come sarebbe a dire /roma?? Intendevi dire /Roma spero??")
			bot.api.sendMessage(chat_id: message.chat.id, text: "Riscrivila correttamente per cortesia.")
		when message.text = '/Roma'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Bene prendi pure posto e prestiamo attenzione!!")
			bot.api.sendMessage(chat_id: message.chat.id, text: "Come prima cosa studiati bene l'uso delle maiuscole nella lingua italiana http://www.grammaticaitaliana.eu/uso_delle_maiuscole.html")
			bot.api.sendMessage(chat_id: message.chat.id, text: "Fatto? quando sarai pronto rispondi /fatto .")
		when message.text = '/fatto'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Bene, domanda: i nomi di popoli, nel caso vengano utilizzati come aggettivi, devono essere scritti con l'iniziale /maiuscola o /minuscola?")
		when message.text = '/minuscola'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Bene, risposta corretta. Caro @#{message.from.username}, ti meriti proprio un bel voto sul registro elettronico.")
			bot.api.sendMessage(chat_id: message.chat.id, text: "Per la prossima lezione, ripassa l'uso delle maiuscole e studiati il prossimo capitolo sull'analisi logica http://www.grammaticaitaliana.eu/analisi_logica.html")
			bot.api.sendMessage(chat_id: message.chat.id, text: "Arrivederci a presto caro @#{message.from.username}.")
		when message.text = '/maiuscola'
			bot.api.sendMessage(chat_id: message.chat.id, text: "Ahi Ahi Ahi... Caro @#{message.from.username} proprio non ci siamo! Non so proprio come devo fare con te. Qui partiamo proprio male, sono costretta a metterti un brutto voto sul registro elettronico!")
			bot.api.sendMessage(chat_id: message.chat.id, text: "Mi raccomando, per la prossima lezione, ripassa bene l'uso delle maiuscole e studiati il prossimo capitolo sull'analisi logica http://www.grammaticaitaliana.eu/analisi_logica.html")
			bot.api.sendMessage(chat_id: message.chat.id, text: "Arrivederci a presto caro @#{message.from.username}.")
    end
	end
end