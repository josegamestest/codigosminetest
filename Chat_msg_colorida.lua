minetest.register_chatcommand("cor", {
    params = "<playername>",
    description = "Exibe informações sobre um jogador",
    func = function(name, param)
            jogador = name
            minetest.chat_send_all(jogador.." esta dizendo")
            minetest.chat_send_player(jogador, "Esta é uma mensagem sem cor")
            minetest.chat_send_player(jogador, minetest.colorize("#7FFFD470", "Esta é uma frase colorida"))
            minetest.chat_send_player(jogador, minetest.colorize("#AA000070", "Esta é outra frase colorida"))
        --end
end})
