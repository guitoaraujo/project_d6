# frozen_string_literal: true

user = User.create(email: 'admin@admin', password: '123456')

Character.create(name: 'Char 1', age: '30', user: user)

warrior = Occupation.create(name: 'Warrior', description: 'Warrior')
Path.create(name: 'Knight', description: 'Knight', occupation: warrior)
Path.create(name: 'Soldier', description: 'Soldier', occupation: warrior)
Path.create(name: 'Archer', description: 'Archer', occupation: warrior)

rogue = Occupation.create(name: 'Rogue', description: 'Rogue')
Path.create(name: 'Spy', description: 'Spy', occupation: rogue)
Path.create(name: 'Hunter', description: 'Hunter', occupation: rogue)
Path.create(name: 'Assassin', description: 'Assassin', occupation: rogue)

cleric = Occupation.create(name: 'Cleric', description: 'Cleric')
Path.create(name: 'Priest', description: 'Priest', occupation: cleric)
Path.create(name: 'Paladin', description: 'Paladin', occupation: cleric)
Path.create(name: 'Druid', description: 'Druid', occupation: cleric)

magician = Occupation.create(name: 'Magician', description: 'Magician')
Path.create(name: 'Wizard', description: 'Wizard', occupation: magician)
Path.create(name: 'Witch', description: 'Witch', occupation: magician)
Path.create(name: 'Battlemage', description: 'Battlemage', occupation: magician)

Lineage.create(name: 'Human', description: 'Human')
Lineage.create(name: 'Elf', description: 'Elf')
Lineage.create(name: 'Dwarf', description: 'Dwarf')
Lineage.create(name: 'Gnome', description: 'Gnome')
