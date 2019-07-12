#method tiers legend:
#teams= home vs away
#info=information about team (name, colors, players)
#stats= player name [this naming convention was a mistake-make more clear in future]
#data= number, shoe, points, etc


require "pry"
def game_hash
    hash = {
        :home=>{
            :team_name=> "Brooklyn Nets",
            :colors=> ["Black", "White"],
            :players=>{
                "Alan Anderson"=>{
                :number=>0,
                :shoe=>16,
                :points=>22,
                :rebounds=>12,
                :assists=>12,
                :steals=>3,
                :blocks=>1,
                :slam_dunks=>1},
                "Reggie Evans"=>{
                :number=>30,
                :shoe=>14,
                :points=>12,
                :rebounds=>12,
                :assists=>12,
                :steals=>12,
                :blocks=>12,
                :slam_dunks=>7},
                "Brook Lopez"=>{
                :number=>11,
                :shoe=>17,
                :points=>17,
                :rebounds=>19,
                :assists=>10,
                :steals=>3,
                :blocks=>1,
                :slam_dunks=>15},
                "Mason Plumlee"=>{
                :number=>1,
                :shoe=>19,
                :points=>26,
                :rebounds=>11,
                :assists=>6,
                :steals=>3,
                :blocks=>8,
                :slam_dunks=>5},
                "Jason Terry"=>{
                :number=>31,
                :shoe=>15,
                :points=>19,
                :rebounds=>2,
                :assists=>2,
                :steals=>4,
                :blocks=>11,
                :slam_dunks=>1}
        }},  
   
        :away=>{
            :team_name=> "Charlotte Hornets",
            :colors=> ["Turquoise", "Purple"],
            :players=>{"Jeff Adrien"=>{
                :number=>4,
                :shoe=>18,
                :points=>10,
                :rebounds=>1,
                :assists=>1,
                :steals=>2,
                :blocks=>7,
                :slam_dunks=>2},
                "Bismack Biyombo"=>{
                :number=>0,
                :shoe=>16,
                :points=>12,
                :rebounds=>4,
                :assists=>7,
                :steals=>22,
                :blocks=>15,
                :slam_dunks=>10},
                "DeSagna Diop"=>{
                :number=>2,
                :shoe=>14,
                :points=>24,
                :rebounds=>12,
                :assists=>12,
                :steals=>4,
                :blocks=>5,
                :slam_dunks=>5},
                "Ben Gordon"=>{
                :number=>8,
                :shoe=>15,
                :points=>33,
                :rebounds=>3,
                :assists=>2,
                :steals=>1,
                :blocks=>1,
                :slam_dunks=>0},
                "Kemba Walker"=>{
                :number=>33,
                :shoe=>15,
                :points=>6,
                :rebounds=>12,
                :assists=>12,
                :steals=>7,
                :blocks=>5,
                :slam_dunks=>12}
        }}
    }
    return hash
end

def num_points_scored(name)
    hash= game_hash
    hash.each do |teams, info|
        info.each do |stats, data|
            if data.include?(name)
                return hash[teams][stats][name][:points]
            end
        end
    end
end


def shoe_size(name)
    hash= game_hash
    hash.each do |teams, info|
        info.each do |stats, data|
            if data.include?(name)
                return hash[teams][stats][name][:shoe]
            end
        end
    end
end
            
 
def team_colors(teamname)
    hash= game_hash
    hash.each do |teams, info|
        if info[:team_name]==teamname
            return hash[teams][:colors]
        end
    end
end

def team_names
    hash=game_hash
    hash.collect do |teams, info|
        info[:team_name]
    end
end


def player_numbers(teamname)
    arr=[]
    hash= game_hash
    hash.each do |teams, info|
        if info[:team_name] == teamname
            info.each do |description, value|
               # binding.pry
                if description == [:players]
                    value.each do |values|
                        arr.push(values[:number])
                    end
                end
            end
        end
    end
end



#TypeError: no implicit coversion of Sting into Integer
#Review heavily
def player_stats(name)
    hash=game_hash
    hash.each do |teams, info|
        info.each do |stats, data|
            if data.include?(name)
                return hash[teams][stats][name]
            end
        end
    end
end

#TypeError: no implicit coversion of Sting into Integer
#Review heavily in class
# def big_shoe_rebounds
#     hash=game_hash
#     rebountct=0
#     ssize=0
#     hash.each do |teams, info|
#         info.each do |stats, data|
#             if stats == [:players]
#                 data.each do |playname, demos|
#                     demos.each do |demog, value|
#                         if demog == [:shoe]
#                             if ssize==0
#                                 ssize=value
#                                 reboundct= stats[:players][playname][:rebounds]
#                             elsif value > ssize
#                                 ssize=value
#                                 reboundct=stats[:players][playname][:rebounds]
#                             end
#                         end
#                     end
#                 end
#             end
#         end
#     end
#     return rebountct
# end


#TypeError: no implicit coversion of Sting into Integer
#Review both method attemps heavily in class
def big_shoe_rebounds
    hash= game_hash
    ssize = 0
rebountct = 0

    hash.each do |teams, info|
        info[:players].each do |player|
            if player[:shoe] > ssize
                ssize = player[:shoe]
                rebountct = player[:rebounds]
            end
        end
    end
    nreboutct
end


#TypeError: no implicit coversion of Sting into Integer
#Review heavily
def most_points_scored
    mostpoints=0
    teammate=""
    hash=game_hash
    hash.each do |teams, info|
        info[:players].each do |playername|
            if playername[:points] > mostpoints
                mostpoints = playername[:points]
                teammate= playername[:player_name]
            end
        end
    end
    return teammate
end














