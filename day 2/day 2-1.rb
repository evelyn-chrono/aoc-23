def game_tester()
    inputs = 'Game 1: 3 blue, 4 red; 1 red, 2 green, 6 blue; 2 green
Game 2: 1 blue, 2 green; 3 green, 4 blue, 1 red; 1 green, 1 blue
Game 3: 8 green, 6 blue, 20 red; 5 blue, 4 red, 13 green; 5 green, 1 red
Game 4: 1 green, 3 red, 6 blue; 3 green, 6 red; 3 green, 15 blue, 14 red
Game 5: 6 red, 1 blue, 3 green; 2 blue, 1 red, 2 green'    
    games = inputs.split("\n")
    sum = 0
    for i in 0...games.length() do  
        games[i] = games[i].split(": ")
        games[i][1] = games[i][1].split("; ")
        games[i][0] = games[i][0][5,3].to_i
        for j in 0...games[i][1].length() do
            games[i][1][j] = games[i][1][j].split(", ")
            for k in 0...games[i][1][j].length() do
                games[i][1][j][k] = games[i][1][j][k].split(" ")
                games[i][1][j][k][0] = games[i][1][j][k][0].to_i
                if (games[i][1][j][k][1] == 'blue' && games[i][1][j][k][0] > 14)
                    games[i][0] = 0
                elsif (games[i][1][j][k][1] == 'red' && games[i][1][j][k][0] > 12)
                    games[i][0] = 0
                elsif (games[i][1][j][k][1] == 'green' && games[i][1][j][k][0] > 13)
                    games[i][0] = 0
                end
            end
        end
        sum += games[i][0]
    end   
    sum
end
