//: Playground - noun: a place where people can play

import UIKit

// Player Information
var players: [(playerName: String, playerHeight: Int, playedSoccerBefore: Bool, guardianName: String)] =
    
    [
        ("Joe Smith", 42, true, "Jim and Jan Smith"),
        ("Jill Tanner", 36, true, "Clara Tanner"),
        ("Bill Bon", 43, true, "Sara and Jenny Bon"),
        ("Eva Gordon", 45, false, "Wendy and Mike Gordon"),
        ("Matt Gill", 40, false, "Charles and Sylvia Gill"),
        ("Kimmy Stein", 41, false, "Bill and Hillary Stein"),
        ("Sammy Adams", 45, false, "Jeff Adams"),
        ("Karl Saygan", 42, true, "Heather Bledsoe"),
        ("Suzane Greenberg", 44, true, "Henrietta Dumas"),
        ("Sal Dall", 41, false, "Gala Dall"),
        ("Joe Kavalier", 39, false, "Sam and Elaine Kavalier"),
        ("Ben Finkelstein", 44, false, "Aaron and Jill Finkelstein"),
        ("Diego Soto", 41, true, "Robin and Sarika Soto"),
        ("Chloe Alaska", 47, false, "David and Jamie Alaska"),
        ("Arnold Willis", 43, false, "Claire Willis"),
        ("Philip Helm", 44, true, "Thomas Helm and Eva Jones"),
        ("Les Clay", 42, true, "Wynonna Brown"),
        ("Herschel Krustofski", 45, true, "Hyman and Rachel Krustofski")
]

// Separating returning players vs new players
var returningPlayers: [(playerName: String, playerHeight: Int, playedSoccerBefore: Bool, guardianName: String)] = []
var newPlayers: [(playerName: String, playerHeight: Int, playedSoccerBefore: Bool, guardianName: String)] = []

for player in players {
    if player.playedSoccerBefore == true {
        returningPlayers.append(player)
    } else {
        newPlayers.append(player)
    }
}


returningPlayers
newPlayers

// Teams in soccer league
var dragons: [(playerName: String, playerHeight: Int, playedSoccerBefore: Bool, guardianName: String)] = []
var sharks: [(playerName: String, playerHeight: Int, playedSoccerBefore: Bool, guardianName: String)] = []
var raptors: [(playerName: String, playerHeight: Int, playedSoccerBefore: Bool, guardianName: String)] = []

// Adding returning players to teams
func addingReturningPlayers() {
    for player in 0..<returningPlayers.count {
        let returningPlayer = returningPlayers[player]
        let divider = player % 3
        if divider == 0 {
            dragons.append(returningPlayer)
        } else if divider == 1 {
            sharks.append(returningPlayer)
        } else {
            raptors.append(returningPlayer)
        }
    }
}

// Adding new players to teams
func addingNewPlayers() {
    for player in 0..<newPlayers.count {
        let newPlayer = newPlayers[player]
        let divider = player % 3
        if divider == 0 {
            dragons.append(newPlayer)
        } else if divider == 1 {
            sharks.append(newPlayer)
        } else {
            raptors.append(newPlayer)
        }
    }
}

addingReturningPlayers()
addingNewPlayers()

// Final team roster
dragons.count
sharks.count
raptors.count

// Send out letter to Guardians
func dragonsGuardianLetters() {
    for player in dragons {
        print("Greetings!, \(player.guardianName). Congrats your child \(player.playerName) has been selected to play on the Dragons Soccer Team this year. The first practice will be March 17 at 1 pm. See you there!")
    }
}

func sharksGuardianLetters() {
    for player in sharks {
        print("Greetings!, \(player.guardianName). Congrats your child \(player.playerName) has been selected to play on the Sharks Soccer Team this year. The first practice will be March 17 at 3 pm. See you there!")
    }
}

func raptorsGuardianLetters() {
    for player in raptors {
        print("Greetings!, \(player.guardianName). Congrats your child \(player.playerName) has been selected to play on the Raptors Soccer Team this year. The first practice will be March 18 at 1 pm. See you there!")
    }
}

dragonsGuardianLetters()
sharksGuardianLetters()
raptorsGuardianLetters()













