#!/bin/bash
favorites=(espeon umbreon rayquaza mewtwo pikachu eevee charizard mew tyranitar dragonite blaziken mudkip swampert altaria volcarona garchomp metagross hydreigon dialga excadrill haxorus ho-oh gyarados blastoise alakazam goodra venusaur snorlax chansey blissey lugia gengar arcanine kingdra gardevoir nidoking nidoqueen lapras ampharos darkrai latios latias flygon togekiss absol raichu typhlosion suicune gallade regigigas kyogre groudon spiritomb lucario ditto)
random_pick=${favorites[$RANDOM % ${#favorites[@]}]}
pokemon-colorscripts -n $random_pick --no-title | fastfetch --logo-type file-raw --logo - --logo-color-1 white
