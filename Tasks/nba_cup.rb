r = "Los Angeles Clippers 104 Dallas Mavericks 88,New York Knicks 101 Atlanta Hawks 112,Indiana Pacers 103 Memphis Grizzlies 112,"\
     "Los Angeles Lakers 111 Minnesota Timberwolves 112,Phoenix Suns 95 Dallas Mavericks 111,Portland Trail Blazers 112 New Orleans Pelicans 94,"\
     "Sacramento Kings 104 Los Angeles Clippers 111,Houston Rockets 85 Denver Nuggets 105,Memphis Grizzlies 76 Cleveland Cavaliers 106,"\
     "Milwaukee Bucks 97 New York Knicks 122,Oklahoma City Thunder 112 San Antonio Spurs 106,Boston Celtics 112 Philadelphia 76ers 95,"\
     "Brooklyn Nets 100 Chicago Bulls 115,Detroit Pistons 92 Utah Jazz 87,Miami Heat 104 Charlotte Hornets 94,"\
     "Toronto Raptors 106 Indiana Pacers 99,Orlando Magic 87 Washington Wizards 88,Golden State Warriors 111 New Orleans Pelicans 95,"\
     "Atlanta Hawks 94 Detroit Pistons 106,Chicago Bulls 97 Cleveland Cavaliers 95,"\
     "San Antonio Spurs 111 Houston Rockets 86,Chicago Bulls 103 Dallas Mavericks 102,Minnesota Timberwolves 112 Milwaukee Bucks 108,"\
     "New Orleans Pelicans 93 Miami Heat 90,Boston Celtics 81 Philadelphia 76ers 65,Detroit Pistons 115 Atlanta Hawks 87,"\
     "Toronto Raptors 92 Washington Wizards 82,Orlando Magic 86 Memphis Grizzlies 76,Los Angeles Clippers 115 Portland Trail Blazers 109,"\
     "Los Angeles Lakers 97 Golden State Warriors 136,Utah Jazz 98 Denver Nuggets 78,Boston Celtics 99 New York Knicks 85,"\
     "Indiana Pacers 98 Charlotte Hornets 86,Dallas Mavericks 87 Phoenix Suns 99,Atlanta Hawks 81 Memphis Grizzlies 82,"\
     "Miami Heat 110 Washington Wizards 105,Detroit Pistons 94 Charlotte Hornets 99,Orlando Magic 110 New Orleans Pelicans 107,"\
     "Los Angeles Clippers 130 Golden State Warriors 95,Utah Jazz 102 Oklahoma City Thunder 113,San Antonio Spurs 84 Phoenix Suns 104,"\
     "Chicago Bulls 103 Indiana Pacers 94,Milwaukee Bucks 106 Minnesota Timberwolves 88,Los Angeles Lakers 104 Portland Trail Blazers 102,"\
     "Houston Rockets 120 New Orleans Pelicans 100,Boston Celtics 111 Brooklyn Nets 105,Charlotte Hornets 94 Chicago Bulls 86,"\
     "Cleveland Cavaliers 103 Dallas Mavericks 97"

     teams = "Los Angeles Clippers,Dallas Mavericks,New York Knicks,NYK,Atlanta Hawks,Indiana Pacers,Memphis Grizzlies,"\
         "Los Angeles Lakers,Minnesota Timberwolves,Phoenix Suns,Portland Trail Blazers,New Orleans Pelicans,"\
         "Sacramento Kings,Los Angeles Clippers,Houston Rockets,Denver Nuggets,Cleveland Cavaliers,Milwaukee Bucks,"\
         "Oklahoma City Thunder, San Antonio Spurs,Boston Celtics,Philadelphia 76ers,Brooklyn Nets,Chicago Bulls,"\
         "Detroit Pistons,Utah Jazz,Miami Heat,Charlotte Hornets,Toronto Raptors,Orlando Magic,Washington Wizards,"\
         "Golden State Warriors,Dallas Maver"

def nba_cup(result_sheet, to_find)
    wins = 0
    draws = 0
    losses = 0
    scored = 0
    conceded = 0
    total_scored = 0
    total_conceded = 0
    points = 0
    str = ''
    return "" if to_find == ""
    return "#{to_find}:This team didn't play!" if result_sheet.match(/\b#{to_find}\b/) == nil
    result_sheet.split(",").each do |row|
      team = row.match(/#{to_find}/)
      if team
        if row.match(/^#{to_find}/)
          scores = row.scan(/\b\d{1,3}\b/)
          return "Error(float number):#{row}" if row.include?(".")
          scored = scores.first.to_i
          conceded = scores.last.to_i
          total_scored += scored
          total_conceded += conceded
          wins += 1 if scored > conceded
          draws += 1 if scored == conceded
          losses += 1 if scored < conceded
          points += 3 if scored > conceded
          points += 1 if scored == conceded
        else
          scores = row.scan(/\b\d{1,3}\b/)
          return "Error(float number):#{row}" if row.include?(".")
          scored = scores.last.to_i
          conceded = scores.first.to_i
          total_scored += scored
          total_conceded += conceded
          wins += 1 if scored > conceded
          draws += 1 if scored == conceded
          losses += 1 if scored < conceded
          points += 3 if scored > conceded
          points += 1 if scored == conceded
        end 
      end
      str = "#{to_find}:W=#{wins};D=#{draws};L=#{losses};Scored=#{total_scored};Conceded=#{total_conceded};Points=#{points}"
    end
    return str
end

puts nba_cup(r, "Los Angeles Clippers")