CREATE TABLE `pokedb`.`members` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(30) NOT NULL, 
  `email` VARCHAR(50) NOT NULL, 
  `password` CHAR(128) NOT NULL, 
  `salt` CHAR(128) NOT NULL,
  `role` CHAR(90) NOT NULL check (`role` in ('Trainer', 'Trader', 'Merchant', 'Druid')),
  `logged` BOOLEAN NOT NULL,
  `avatar` VARCHAR(100) NOT NULL
) ENGINE = InnoDB; 

CREATE TABLE `pokedb`.`login_attempts` (
  `user_id` INT(71) NOT NULL PRIMARY KEY,
  `time` VARCHAR(30) NOT NULL,
  FOREIGN KEY (`user_id`) REFERENCES members(id)
) ENGINE=InnoDB;

CREATE TABLE `pokedb`.`orders`(
  `idOrder` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `userId` INT,
  `is_active` boolean,
  FOREIGN KEY (`userId`) REFERENCES `pokedb`.`members`(`id`)
) ENGINE=InnoDB;

CREATE TABLE `pokedb`.`merchant` (
  `codV` INT(11) AUTO_INCREMENT PRIMARY KEY,
  `name` CHAR(50) NOT NULL,
  `IBAN` CHAR(50) NOT NULL,
  `avatar` CHAR(50) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE orders_pokemon(
  	orderId INT(11),
    pokemonId INT(11),
    quantity INT DEFAULT 1,
    codV INT(11) NOT NULL,
    FOREIGN KEY(orderId) REFERENCES orders(idOrder),
    FOREIGN KEY(pokemonId) REFERENCES pokemon(id),
    FOREIGN KEY(codV) REFERENCES merchant(codV)
);

CREATE TABLE orders_item(
	  orderId INT(11),
    itemId INT(11),
    quantity INT DEFAULT 1,
    FOREIGN KEY(orderId) REFERENCES orders(idOrder),
    FOREIGN KEY(itemId) REFERENCES items(id)
);  

CREATE TABLE `pokedb`.`types_color` (
  `name` VARCHAR(30) NOT NULL,
  `color` VARCHAR(30) NOT NULL 
) ENGINE=InnoDB;

INSERT INTO `pokedb`.`types_color` (`name`,`color`) 
VALUES ("normal", "#f2f2f2"),
("fighting", "#E07C3E"),
("flying", "#3DC7EF"),
("poison", "#C07EC9"),
("ground", "#f6de3e"),
("rock", "#B19725"),
("bug", "#79A843"),
("ghost", "#A99BC5"),
("steel", "#9eb8b9"), 
("fire", "#fd7d24"),
("water", "#5CA1CC"), 
("grass", "#9bcc4f"),
("electric", "#efd435"), 
("psychic", "#f466ba"),
("ice", "#52c4e8"), 
("dragon", "#f16f56"),
("dark", "#9E9E9E"), 
("fairy", "#fdb9ea");


CREATE TABLE `pokedb`.`pokemon_value` (
  `name` CHAR(60) NOT NULL PRIMARY KEY, 
  `value` INT NOT NULL
) ENGINE = InnoDB; 

INSERT INTO `pokedb`.`pokemon_value` 
VALUES 
('bulbasaur', 2079),
('ivysaur', 2669),
('venusaur', 2522),
('charmander', 8135),
('charmeleon', 2675),
('charizard', 5471),
('squirtle', 1069),
('wartortle', 3316),
('blastoise', 3938),
('caterpie', 3276),
('metapod', 2761),
('butterfree', 7100),
('weedle', 8657),
('kakuna', 3204),
('beedrill', 1415),
('pidgey', 8888),
('pidgeotto', 2103),
('pidgeot', 6662),
('rattata', 2951),
('raticate', 8098),
('spearow', 1701),
('fearow', 3068),
('ekans', 4718),
('arbok', 1790),
('pikachu', 9080),
('raichu', 3811),
('sandshrew', 2798),
('sandslash', 8916),
('nidoran-f', 7759),
('nidorina', 5384),
('nidoqueen', 3311),
('nidoran-m', 1414),
('nidorino', 7586),
('nidoking', 8060),
('clefairy', 6713),
('clefable', 8521),
('vulpix', 3035),
('ninetales', 4070),
('jigglypuff', 9700),
('wigglytuff', 3273),
('zubat', 1405),
('golbat', 5828),
('oddish', 6807),
('gloom', 9897),
('vileplume', 4553),
('paras', 1801),
('parasect', 5609),
('venonat', 6060),
('venomoth', 1300),
('diglett', 5298),
('dugtrio', 3422),
('meowth', 2017),
('persian', 7572),
('psyduck', 7564),
('golduck', 8466),
('mankey', 7967),
('primeape', 2349),
('growlithe', 1081),
('arcanine', 2696),
('poliwag', 8324),
('poliwhirl', 9929),
('poliwrath', 3272),
('abra', 9911),
('kadabra', 5035),
('alakazam', 2767),
('machop', 5907),
('machoke', 7164),
('machamp', 5146),
('bellsprout', 5474),
('weepinbell', 3288),
('victreebel', 4739),
('tentacool', 5427),
('tentacruel', 5199),
('geodude', 5654),
('graveler', 1667),
('golem', 9817),
('ponyta', 3333),
('rapidash', 5464),
('slowpoke', 7466),
('slowbro', 3328),
('magnemite', 6878),
('magneton', 6069),
('farfetchd', 7032),
('doduo', 7739),
('dodrio', 2781),
('seel', 6570),
('dewgong', 6423),
('grimer', 8182),
('muk', 9204),
('shellder', 7398),
('cloyster', 4138),
('gastly', 8775),
('haunter', 1449),
('gengar', 5110),
('onix', 2040),
('drowzee', 7549),
('hypno', 2577),
('krabby', 7819),
('kingler', 2050),
('voltorb', 3385),
('electrode', 3198),
('exeggcute', 3537),
('exeggutor', 4695),
('cubone', 8433),
('marowak', 7649),
('hitmonlee', 5233),
('hitmonchan', 3244),
('lickitung', 2067),
('koffing', 6648),
('weezing', 5795),
('rhyhorn', 9448),
('rhydon', 8107),
('chansey', 7013),
('tangela', 1351),
('kangaskhan', 4813),
('horsea', 3147),
('seadra', 1631),
('goldeen', 7716),
('seaking', 8199),
('staryu', 4319),
('starmie', 8751),
('mr-mime', 5399),
('scyther', 4687),
('jynx', 3031),
('electabuzz', 4237),
('magmar', 6980),
('pinsir', 2932),
('tauros', 3973),
('magikarp', 2078),
('gyarados', 5995),
('lapras', 7159),
('ditto', 7388),
('eevee', 7110),
('vaporeon', 9420),
('jolteon', 1168),
('flareon', 5209),
('porygon', 7639),
('omanyte', 9267),
('omastar', 7356),
('kabuto', 8759),
('kabutops', 8309),
('aerodactyl', 6642),
('snorlax', 5419),
('articuno', 9396),
('zapdos', 7367),
('moltres', 1635),
('dratini', 1812),
('dragonair', 1391),
('dragonite', 1109),
('mewtwo', 9043),
('mew', 5039),
('chikorita', 3177),
('bayleef', 1575),
('meganium', 6728),
('cyndaquil', 6678),
('quilava', 5005),
('typhlosion', 5703),
('totodile', 9433),
('croconaw', 1177),
('feraligatr', 4773),
('sentret', 3789),
('furret', 5180),
('hoothoot', 6145),
('noctowl', 1146),
('ledyba', 8524),
('ledian', 2202),
('spinarak', 8043),
('ariados', 7930),
('crobat', 6673),
('chinchou', 3974),
('lanturn', 7470),
('pichu', 5405),
('cleffa', 2168),
('igglybuff', 8491),
('togepi', 8463),
('togetic', 4777),
('natu', 1358),
('xatu', 8929),
('mareep', 2004),
('flaaffy', 5854),
('ampharos', 4863),
('bellossom', 1279),
('marill', 1066),
('azumarill', 6143),
('sudowoodo', 3790),
('politoed', 1684),
('hoppip', 3242),
('skiploom', 9196),
('jumpluff', 7602),
('aipom', 8136),
('sunkern', 9599),
('sunflora', 3227),
('yanma', 8385),
('wooper', 7604),
('quagsire', 5804),
('espeon', 1833),
('umbreon', 7294),
('murkrow', 1098),
('slowking', 1873),
('misdreavus', 9002),
('unown', 6888),
('wobbuffet', 5967),
('girafarig', 2087),
('pineco', 7569),
('forretress', 9047),
('dunsparce', 3868),
('gligar', 5966),
('steelix', 9990),
('snubbull', 7146),
('granbull', 7970),
('qwilfish', 1390),
('scizor', 9569),
('shuckle', 8474),
('heracross', 9821),
('sneasel', 1245),
('teddiursa', 9123),
('ursaring', 6655),
('slugma', 3862),
('magcargo', 4475),
('swinub', 8952),
('piloswine', 1209),
('corsola', 1097),
('remoraid', 9848),
('octillery', 5713),
('delibird', 9380),
('mantine', 6789),
('skarmory', 7366),
('houndour', 1138),
('houndoom', 6667),
('kingdra', 9048),
('phanpy', 7243),
('donphan', 1255),
('porygon2', 2854),
('stantler', 1668),
('smeargle', 5865),
('tyrogue', 8776),
('hitmontop', 3131),
('smoochum', 5370),
('elekid', 8291),
('magby', 4050),
('miltank', 3576),
('blissey', 7599),
('raikou', 1031),
('entei', 7446),
('suicune', 6371),
('larvitar', 3081),
('pupitar', 6910),
('tyranitar', 5838),
('lugia', 7469),
('ho-oh', 3065),
('celebi', 8069),
('treecko', 2466),
('grovyle', 4561),
('sceptile', 5073),
('torchic', 4202),
('combusken', 9271),
('blaziken', 1286),
('mudkip', 6790),
('marshtomp', 8586),
('swampert', 3877),
('poochyena', 6902),
('mightyena', 3018),
('zigzagoon', 7511),
('linoone', 4202),
('wurmple', 6142),
('silcoon', 5592),
('beautifly', 8974),
('cascoon', 5680),
('dustox', 9615),
('lotad', 3500),
('lombre', 8740),
('ludicolo', 2616),
('seedot', 5398),
('nuzleaf', 8568),
('shiftry', 7180),
('taillow', 7061),
('swellow', 1107),
('wingull', 2948),
('pelipper', 1445),
('ralts', 1623),
('kirlia', 8066),
('gardevoir', 9076),
('surskit', 4645),
('masquerain', 2423),
('shroomish', 7484),
('breloom', 4304),
('slakoth', 2118),
('vigoroth', 7897),
('slaking', 3274),
('nincada', 9908),
('ninjask', 3355),
('shedinja', 8950),
('whismur', 7090),
('loudred', 3166),
('exploud', 1236),
('makuhita', 1589),
('hariyama', 4995),
('azurill', 8036),
('nosepass', 3512),
('skitty', 3960),
('delcatty', 7352),
('sableye', 5067),
('mawile', 1492),
('aron', 5917),
('lairon', 3971),
('aggron', 4609),
('meditite', 3328),
('medicham', 3459),
('electrike', 9784),
('manectric', 1976),
('plusle', 9954),
('minun', 2327),
('volbeat', 7545),
('illumise', 2397),
('roselia', 1817),
('gulpin', 3728),
('swalot', 6992),
('carvanha', 9369),
('sharpedo', 8142),
('wailmer', 4551),
('wailord', 6470),
('numel', 2039),
('camerupt', 3285),
('torkoal', 9248),
('spoink', 6359),
('grumpig', 7718),
('spinda', 4430),
('trapinch', 8289),
('vibrava', 2154),
('flygon', 9138),
('cacnea', 4522),
('cacturne', 9494),
('swablu', 3002),
('altaria', 1804),
('zangoose', 8292),
('seviper', 5154),
('lunatone', 2790),
('solrock', 9487),
('barboach', 7420),
('whiscash', 2227),
('corphish', 1454),
('crawdaunt', 1294),
('baltoy', 2244),
('claydol', 3598),
('lileep', 7491),
('cradily', 8454),
('anorith', 9170),
('armaldo', 6441),
('feebas', 9300),
('milotic', 8398),
('castform', 1670),
('kecleon', 5975),
('shuppet', 1882),
('banette', 4847),
('duskull', 7281),
('dusclops', 2765),
('tropius', 2591),
('chimecho', 2821),
('absol', 5381),
('wynaut', 3917),
('snorunt', 9107),
('glalie', 8991),
('spheal', 1550),
('sealeo', 1793),
('walrein', 8891),
('clamperl', 4759),
('huntail', 1733),
('gorebyss', 9035),
('relicanth', 7884),
('luvdisc', 4293),
('bagon', 7436),
('shelgon', 4913),
('salamence', 3466),
('beldum', 3661),
('metang', 6041),
('metagross', 8818),
('regirock', 6517),
('regice', 6750),
('registeel', 3193),
('latias', 1335),
('latios', 6481),
('kyogre', 9942),
('groudon', 8842),
('rayquaza', 7533),
('jirachi', 4285),
('deoxys-normal', 3910),
('turtwig', 7657),
('grotle', 6349),
('torterra', 4218),
('chimchar', 9775),
('monferno', 8159),
('infernape', 5431),
('piplup', 2162),
('prinplup', 2051),
('empoleon', 7338),
('starly', 3333),
('staravia', 1091),
('staraptor', 4078),
('bidoof', 4429),
('bibarel', 7922),
('kricketot', 2843),
('kricketune', 5286),
('shinx', 5528),
('luxio', 5899),
('luxray', 7845),
('budew', 6486),
('roserade', 1515),
('cranidos', 9054),
('rampardos', 3472),
('shieldon', 9420),
('bastiodon', 8834),
('burmy', 3686),
('wormadam-plant', 5852),
('mothim', 9513),
('combee', 3541),
('vespiquen', 3501),
('pachirisu', 1061),
('buizel', 6081),
('floatzel', 8753),
('cherubi', 2994),
('cherrim', 1491),
('shellos', 1815),
('gastrodon', 7499),
('ambipom', 9153),
('drifloon', 6885),
('drifblim', 4937),
('buneary', 8316),
('lopunny', 8804),
('mismagius', 1825),
('honchkrow', 1187),
('glameow', 1552),
('purugly', 1257),
('chingling', 7217),
('stunky', 5562),
('skuntank', 2930),
('bronzor', 3142),
('bronzong', 7866),
('bonsly', 5055),
('mime-jr', 1068),
('happiny', 7836),
('chatot', 8016),
('spiritomb', 5446),
('gible', 8457),
('gabite', 8474),
('garchomp', 8245),
('munchlax', 3635),
('riolu', 8742),
('lucario', 7755),
('hippopotas', 4325),
('hippowdon', 3986),
('skorupi', 9149),
('drapion', 2828),
('croagunk', 5891),
('toxicroak', 1533),
('carnivine', 9912),
('finneon', 3193),
('lumineon', 8122),
('mantyke', 1756),
('snover', 9393),
('abomasnow', 8222),
('weavile', 4954),
('magnezone', 3087),
('lickilicky', 3215),
('rhyperior', 3036),
('tangrowth', 7613),
('electivire', 6459),
('magmortar', 8644),
('togekiss', 6221),
('yanmega', 8203),
('leafeon', 2300),
('glaceon', 2917),
('gliscor', 1111),
('mamoswine', 5774),
('porygon-z', 8419),
('gallade', 1228),
('probopass', 5605),
('dusknoir', 1908),
('froslass', 5999),
('rotom', 1359),
('uxie', 9098),
('mesprit', 8897),
('azelf', 6328),
('dialga', 8796),
('palkia', 3791),
('heatran', 1274),
('regigigas', 2938),
('giratina-altered', 3725),
('cresselia', 6459),
('phione', 3240),
('manaphy', 3538),
('darkrai', 5311),
('shaymin-land', 6418),
('arceus', 8587),
('victini', 8821),
('snivy', 3610),
('servine', 3278),
('serperior', 1313),
('tepig', 7351),
('pignite', 9576),
('emboar', 3379),
('oshawott', 2884),
('dewott', 7734),
('samurott', 6250),
('patrat', 3939),
('watchog', 2220),
('lillipup', 2442),
('herdier', 6903),
('stoutland', 4981),
('purrloin', 3532),
('liepard', 5614),
('pansage', 6125),
('simisage', 7078),
('pansear', 9893),
('simisear', 9135),
('panpour', 4166),
('simipour', 8834),
('munna', 9375),
('musharna', 9594),
('pidove', 3239),
('tranquill', 6963),
('unfezant', 8097),
('blitzle', 1815),
('zebstrika', 8763),
('roggenrola', 4722),
('boldore', 6803),
('gigalith', 5432),
('woobat', 1542),
('swoobat', 6176),
('drilbur', 5709),
('excadrill', 3828),
('audino', 4512),
('timburr', 5096),
('gurdurr', 3567),
('conkeldurr', 2850),
('tympole', 6518),
('palpitoad', 1010),
('seismitoad', 7449),
('throh', 4079),
('sawk', 6199),
('sewaddle', 8957),
('swadloon', 1290),
('leavanny', 9391),
('venipede', 4923),
('whirlipede', 1149),
('scolipede', 5673),
('cottonee', 3301),
('whimsicott', 6050),
('petilil', 4306),
('lilligant', 6214),
('basculin-red-striped', 9230),
('sandile', 8242),
('krokorok', 5402),
('krookodile', 1246),
('darumaka', 1301),
('darmanitan-standard', 7609),
('maractus', 7643),
('dwebble', 1728),
('crustle', 3524),
('scraggy', 4513),
('scrafty', 6532),
('sigilyph', 2021),
('yamask', 9296),
('cofagrigus', 4410),
('tirtouga', 9301),
('carracosta', 6758),
('archen', 9071),
('archeops', 9458),
('trubbish', 7686),
('garbodor', 6326),
('zorua', 7262),
('zoroark', 5036),
('minccino', 7717),
('cinccino', 2121),
('gothita', 4519),
('gothorita', 4431),
('gothitelle', 1673),
('solosis', 7786),
('duosion', 2222),
('reuniclus', 7776),
('ducklett', 6285),
('swanna', 7700),
('vanillite', 8952),
('vanillish', 5125),
('vanilluxe', 7097),
('deerling', 3249),
('sawsbuck', 7888),
('emolga', 7160),
('karrablast', 4243),
('escavalier', 1271),
('foongus', 5181),
('amoonguss', 1320),
('frillish', 4056),
('jellicent', 4290),
('alomomola', 2707),
('joltik', 4068),
('galvantula', 8227),
('ferroseed', 2439),
('ferrothorn', 4454),
('klink', 6455),
('klang', 7339),
('klinklang', 1425),
('tynamo', 7065),
('eelektrik', 7065),
('eelektross', 1515),
('elgyem', 9121),
('beheeyem', 7753),
('litwick', 4695),
('lampent', 7736),
('chandelure', 3571),
('axew', 9321),
('fraxure', 3676),
('haxorus', 1440),
('cubchoo', 9928),
('beartic', 1570),
('cryogonal', 8759),
('shelmet', 4742),
('accelgor', 1907),
('stunfisk', 9197),
('mienfoo', 6310),
('mienshao', 7383),
('druddigon', 4002),
('golett', 6172),
('golurk', 6815),
('pawniard', 3353),
('bisharp', 7938),
('bouffalant', 2826),
('rufflet', 2786),
('braviary', 7120),
('vullaby', 7421),
('mandibuzz', 4059),
('heatmor', 5500),
('durant', 2832),
('deino', 4238),
('zweilous', 3955),
('hydreigon', 5707),
('larvesta', 2406),
('volcarona', 2449),
('cobalion', 8129),
('terrakion', 1864),
('virizion', 9659),
('tornadus-incarnate', 4290),
('thundurus-incarnate', 4115),
('reshiram', 4108),
('zekrom', 8918),
('landorus-incarnate', 6193),
('kyurem', 5831),
('keldeo-ordinary', 2524),
('meloetta-aria', 5934),
('genesect', 6937),
('chespin', 9923),
('quilladin', 3281),
('chesnaught', 1354),
('fennekin', 3280),
('braixen', 9348),
('delphox', 9261),
('froakie', 7557),
('frogadier', 7652),
('greninja', 3181),
('bunnelby', 2698),
('diggersby', 7824),
('fletchling', 7966),
('fletchinder', 2803),
('talonflame', 9585),
('scatterbug', 7300),
('spewpa', 3124),
('vivillon', 4581),
('litleo', 9089),
('pyroar', 4159),
('flabebe', 8673),
('floette', 1821),
('florges', 8144),
('skiddo', 6513),
('gogoat', 4271),
('pancham', 9883),
('pangoro', 3756),
('furfrou', 1522),
('espurr', 2521),
('meowstic-male', 7518),
('honedge', 7102),
('doublade', 8547),
('aegislash-shield', 4744),
('spritzee', 4694),
('aromatisse', 2565),
('swirlix', 1755),
('slurpuff', 7887),
('inkay', 2674),
('malamar', 1768),
('binacle', 8284),
('barbaracle', 1727),
('skrelp', 4748),
('dragalge', 2347),
('clauncher', 1427),
('clawitzer', 4209),
('helioptile', 8722),
('heliolisk', 3236),
('tyrunt', 9534),
('tyrantrum', 8085),
('amaura', 1522),
('aurorus', 5652),
('sylveon', 3934),
('hawlucha', 4405),
('dedenne', 1678),
('carbink', 2215),
('goomy', 8748),
('sliggoo', 3981),
('goodra', 9339),
('klefki', 5551),
('phantump', 9920),
('trevenant', 1889),
('pumpkaboo-average', 1534),
('gourgeist-average', 1944),
('bergmite', 5181),
('avalugg', 7753),
('noibat', 1436),
('noivern', 6364),
('xerneas', 6792),
('yveltal', 8090),
('zygarde-50', 1619),
('diancie', 6532),
('hoopa', 2805),
('volcanion', 3361),
('rowlet', 4661),
('dartrix', 7211),
('decidueye', 4188),
('litten', 2189),
('torracat', 8316),
('incineroar', 5389),
('popplio', 9845),
('brionne', 3930),
('primarina', 6019),
('pikipek', 7378),
('trumbeak', 8570),
('toucannon', 8128),
('yungoos', 1660),
('gumshoos', 8859),
('grubbin', 8696),
('charjabug', 7243),
('vikavolt', 6756),
('crabrawler', 4989),
('crabominable', 7107),
('oricorio-baile', 9069),
('cutiefly', 5932),
('ribombee', 1549),
('rockruff', 3760),
('lycanroc-midday', 2872),
('wishiwashi-solo', 1213),
('mareanie', 6270),
('toxapex', 2263),
('mudbray', 2549),
('mudsdale', 3871),
('dewpider', 5510),
('araquanid', 2200),
('fomantis', 5714),
('lurantis', 4919),
('morelull', 5306),
('shiinotic', 3659),
('salandit', 3286),
('salazzle', 5783),
('stufful', 3707),
('bewear', 9389),
('bounsweet', 6861),
('steenee', 1132),
('tsareena', 2961),
('comfey', 9570),
('oranguru', 4316),
('passimian', 2690),
('wimpod', 1185),
('golisopod', 4487),
('sandygast', 7060),
('palossand', 8710),
('pyukumuku', 7965),
('type-null', 1014),
('silvally', 4943),
('komala', 6263),
('turtonator', 2290),
('togedemaru', 3170),
('bruxish', 6459),
('drampa', 3433),
('dhelmise', 2001),
('jangmo-o', 4315),
('hakamo-o', 9619),
('kommo-o', 5679),
('tapu-koko', 4434),
('tapu-lele', 8565),
('tapu-bulu', 2914),
('tapu-fini', 1874),
('cosmog', 5530),
('cosmoem', 9879),
('solgaleo', 1518),
('lunala', 4354),
('nihilego', 3311),
('buzzwole', 7587),
('pheromosa', 9487),
('xurkitree', 2833),
('celesteela', 2731),
('kartana', 7351),
('guzzlord', 5309),
('necrozma', 5428),
('magearna', 9182),
('marshadow', 4899),
('poipole', 4948),
('naganadel', 6194),
('stakataka', 2231),
('blacephalon', 8623),
('zeraora', 5869),
('meltan', 8152),
('melmetal', 8171),
('grookey', 2786),
('thwackey', 7393),
('rillaboom', 4667),
('scorbunny', 7258),
('raboot', 1913),
('cinderace', 4388),
('sobble', 6083),
('drizzile', 6270),
('inteleon', 6930),
('skwovet', 7987),
('greedent', 8124),
('rookidee', 7340),
('corvisquire', 8905),
('corviknight', 4723),
('blipbug', 4182),
('dottler', 3863),
('orbeetle', 9721),
('nickit', 5955),
('thievul', 1427),
('gossifleur', 3759),
('eldegoss', 2677),
('wooloo', 5291),
('dubwool', 6089),
('chewtle', 3420),
('drednaw', 1610),
('yamper', 2492),
('boltund', 2153),
('rolycoly', 6139),
('carkol', 8388),
('coalossal', 6529),
('applin', 2939),
('flapple', 5503),
('appletun', 9363),
('silicobra', 4763),
('sandaconda', 4520),
('cramorant', 8306),
('arrokuda', 7661),
('barraskewda', 3225),
('toxel', 5508),
('toxtricity-amped', 6028),
('sizzlipede', 8261),
('centiskorch', 7405),
('clobbopus', 1375),
('grapploct', 6914),
('sinistea', 3823),
('polteageist', 9523),
('hatenna', 6628),
('hattrem', 5643),
('hatterene', 1951),
('impidimp', 7550),
('morgrem', 9870),
('grimmsnarl', 5884),
('obstagoon', 9766),
('perrserker', 6388),
('cursola', 2095),
('sirfetchd', 1940),
('mr-rime', 1869),
('runerigus', 4657),
('milcery', 2731),
('alcremie', 6205),
('falinks', 1968),
('pincurchin', 8245),
('snom', 3435),
('frosmoth', 5118),
('stonjourner', 7942),
('eiscue-ice', 6305),
('indeedee-male', 8356),
('morpeko-full-belly', 9123),
('cufant', 3595),
('copperajah', 8353),
('dracozolt', 4418),
('arctozolt', 5515),
('dracovish', 7858),
('arctovish', 6541),
('duraludon', 5239),
('dreepy', 3788),
('drakloak', 7744),
('dragapult', 8523),
('zacian', 4117),
('zamazenta', 1884),
('eternatus', 3203),
('kubfu', 7267),
('urshifu-single-strike', 6528),
('zarude', 3437),
('regieleki', 5996),
('regidrago', 4605),
('glastrier', 8331),
('spectrier', 4234),
('calyrex', 7333),
('deoxys-attack', 4180),
('deoxys-defense', 9630),
('deoxys-speed', 4218),
('wormadam-sandy', 2127),
('wormadam-trash', 2125),
('shaymin-sky', 8200),
('giratina-origin', 9927);

UPDATE `items` SET `cost` = '100000' WHERE `items`.`id` = 1;
UPDATE `items` SET `cost` = '737' WHERE `items`.`id` = 5;
UPDATE `items` SET `cost` = '127' WHERE `items`.`id` = 16;
UPDATE `items` SET `cost` = '504' WHERE `items`.`id` = 112;
UPDATE `items` SET `cost` = '624' WHERE `items`.`id` = 113;
UPDATE `items` SET `cost` = '350' WHERE `items`.`id` = 193;
UPDATE `items` SET `cost` = '369' WHERE `items`.`id` = 202;
UPDATE `items` SET `cost` = '557' WHERE `items`.`id` = 397;
UPDATE `items` SET `cost` = '639' WHERE `items`.`id` = 398;
UPDATE `items` SET `cost` = '553' WHERE `items`.`id` = 399;
UPDATE `items` SET `cost` = '470' WHERE `items`.`id` = 400;
UPDATE `items` SET `cost` = '137' WHERE `items`.`id` = 401;
UPDATE `items` SET `cost` = '661' WHERE `items`.`id` = 402;
UPDATE `items` SET `cost` = '701' WHERE `items`.`id` = 403;
UPDATE `items` SET `cost` = '593' WHERE `items`.`id` = 404;
UPDATE `items` SET `cost` = '215' WHERE `items`.`id` = 405;
UPDATE `items` SET `cost` = '533' WHERE `items`.`id` = 406;
UPDATE `items` SET `cost` = '253' WHERE `items`.`id` = 407;
UPDATE `items` SET `cost` = '614' WHERE `items`.`id` = 408;
UPDATE `items` SET `cost` = '141' WHERE `items`.`id` = 409;
UPDATE `items` SET `cost` = '549' WHERE `items`.`id` = 411;
UPDATE `items` SET `cost` = '755' WHERE `items`.`id` = 412;
UPDATE `items` SET `cost` = '807' WHERE `items`.`id` = 413;
UPDATE `items` SET `cost` = '765' WHERE `items`.`id` = 414;
UPDATE `items` SET `cost` = '438' WHERE `items`.`id` = 415;
UPDATE `items` SET `cost` = '407' WHERE `items`.`id` = 416;
UPDATE `items` SET `cost` = '426' WHERE `items`.`id` = 417;
UPDATE `items` SET `cost` = '798' WHERE `items`.`id` = 418;
UPDATE `items` SET `cost` = '594' WHERE `items`.`id` = 419;
UPDATE `items` SET `cost` = '776' WHERE `items`.`id` = 420;
UPDATE `items` SET `cost` = '948' WHERE `items`.`id` = 421;
UPDATE `items` SET `cost` = '557' WHERE `items`.`id` = 422;
UPDATE `items` SET `cost` = '529' WHERE `items`.`id` = 423;
UPDATE `items` SET `cost` = '786' WHERE `items`.`id` = 424;
UPDATE `items` SET `cost` = '764' WHERE `items`.`id` = 425;
UPDATE `items` SET `cost` = '141' WHERE `items`.`id` = 426;
UPDATE `items` SET `cost` = '985' WHERE `items`.`id` = 427;
UPDATE `items` SET `cost` = '778' WHERE `items`.`id` = 428;
UPDATE `items` SET `cost` = '368' WHERE `items`.`id` = 429;
UPDATE `items` SET `cost` = '493' WHERE `items`.`id` = 430;
UPDATE `items` SET `cost` = '414' WHERE `items`.`id` = 431;
UPDATE `items` SET `cost` = '796' WHERE `items`.`id` = 432;
UPDATE `items` SET `cost` = '315' WHERE `items`.`id` = 433;
UPDATE `items` SET `cost` = '233' WHERE `items`.`id` = 434;
UPDATE `items` SET `cost` = '419' WHERE `items`.`id` = 435;
UPDATE `items` SET `cost` = '632' WHERE `items`.`id` = 436;
UPDATE `items` SET `cost` = '730' WHERE `items`.`id` = 437;
UPDATE `items` SET `cost` = '133' WHERE `items`.`id` = 438;
UPDATE `items` SET `cost` = '387' WHERE `items`.`id` = 439;
UPDATE `items` SET `cost` = '131' WHERE `items`.`id` = 440;
UPDATE `items` SET `cost` = '316' WHERE `items`.`id` = 441;
UPDATE `items` SET `cost` = '805' WHERE `items`.`id` = 442;
UPDATE `items` SET `cost` = '274' WHERE `items`.`id` = 443;
UPDATE `items` SET `cost` = '377' WHERE `items`.`id` = 444;
UPDATE `items` SET `cost` = '166' WHERE `items`.`id` = 445;
UPDATE `items` SET `cost` = '920' WHERE `items`.`id` = 446;
UPDATE `items` SET `cost` = '874' WHERE `items`.`id` = 447;
UPDATE `items` SET `cost` = '115' WHERE `items`.`id` = 448;
UPDATE `items` SET `cost` = '878' WHERE `items`.`id` = 449;
UPDATE `items` SET `cost` = '921' WHERE `items`.`id` = 450;
UPDATE `items` SET `cost` = '962' WHERE `items`.`id` = 451;
UPDATE `items` SET `cost` = '675' WHERE `items`.`id` = 452;
UPDATE `items` SET `cost` = '425' WHERE `items`.`id` = 453;
UPDATE `items` SET `cost` = '783' WHERE `items`.`id` = 454;
UPDATE `items` SET `cost` = '439' WHERE `items`.`id` = 455;
UPDATE `items` SET `cost` = '960' WHERE `items`.`id` = 456;
UPDATE `items` SET `cost` = '422' WHERE `items`.`id` = 465;
UPDATE `items` SET `cost` = '789' WHERE `items`.`id` = 467;
UPDATE `items` SET `cost` = '630' WHERE `items`.`id` = 468;
UPDATE `items` SET `cost` = '892' WHERE `items`.`id` = 469;
UPDATE `items` SET `cost` = '922' WHERE `items`.`id` = 470;
UPDATE `items` SET `cost` = '266' WHERE `items`.`id` = 471;
UPDATE `items` SET `cost` = '908' WHERE `items`.`id` = 472;
UPDATE `items` SET `cost` = '660' WHERE `items`.`id` = 473;
UPDATE `items` SET `cost` = '334' WHERE `items`.`id` = 474;
UPDATE `items` SET `cost` = '737' WHERE `items`.`id` = 475;
UPDATE `items` SET `cost` = '180' WHERE `items`.`id` = 476;
UPDATE `items` SET `cost` = '657' WHERE `items`.`id` = 477;
UPDATE `items` SET `cost` = '610' WHERE `items`.`id` = 478;
UPDATE `items` SET `cost` = '142' WHERE `items`.`id` = 479;
UPDATE `items` SET `cost` = '816' WHERE `items`.`id` = 480;
UPDATE `items` SET `cost` = '409' WHERE `items`.`id` = 481;
UPDATE `items` SET `cost` = '906' WHERE `items`.`id` = 482;
UPDATE `items` SET `cost` = '894' WHERE `items`.`id` = 483;
UPDATE `items` SET `cost` = '297' WHERE `items`.`id` = 484;
UPDATE `items` SET `cost` = '385' WHERE `items`.`id` = 485;
UPDATE `items` SET `cost` = '644' WHERE `items`.`id` = 513;
UPDATE `items` SET `cost` = '403' WHERE `items`.`id` = 514;
UPDATE `items` SET `cost` = '233' WHERE `items`.`id` = 527;
UPDATE `items` SET `cost` = '828' WHERE `items`.`id` = 528;
UPDATE `items` SET `cost` = '942' WHERE `items`.`id` = 529;
UPDATE `items` SET `cost` = '402' WHERE `items`.`id` = 530;
UPDATE `items` SET `cost` = '605' WHERE `items`.`id` = 531;
UPDATE `items` SET `cost` = '422' WHERE `items`.`id` = 532;
UPDATE `items` SET `cost` = '235' WHERE `items`.`id` = 533;
UPDATE `items` SET `cost` = '822' WHERE `items`.`id` = 534;
UPDATE `items` SET `cost` = '710' WHERE `items`.`id` = 535;
UPDATE `items` SET `cost` = '596' WHERE `items`.`id` = 536;
UPDATE `items` SET `cost` = '668' WHERE `items`.`id` = 537;
UPDATE `items` SET `cost` = '710' WHERE `items`.`id` = 538;
UPDATE `items` SET `cost` = '755' WHERE `items`.`id` = 539;
UPDATE `items` SET `cost` = '817' WHERE `items`.`id` = 540;
UPDATE `items` SET `cost` = '893' WHERE `items`.`id` = 541;
UPDATE `items` SET `cost` = '690' WHERE `items`.`id` = 542;
UPDATE `items` SET `cost` = '244' WHERE `items`.`id` = 543;
UPDATE `items` SET `cost` = '846' WHERE `items`.`id` = 544;
UPDATE `items` SET `cost` = '679' WHERE `items`.`id` = 545;
UPDATE `items` SET `cost` = '538' WHERE `items`.`id` = 546;
UPDATE `items` SET `cost` = '290' WHERE `items`.`id` = 547;
UPDATE `items` SET `cost` = '951' WHERE `items`.`id` = 548;
UPDATE `items` SET `cost` = '295' WHERE `items`.`id` = 549;
UPDATE `items` SET `cost` = '305' WHERE `items`.`id` = 550;
UPDATE `items` SET `cost` = '723' WHERE `items`.`id` = 551;
UPDATE `items` SET `cost` = '623' WHERE `items`.`id` = 552;
UPDATE `items` SET `cost` = '185' WHERE `items`.`id` = 554;
UPDATE `items` SET `cost` = '732' WHERE `items`.`id` = 555;
UPDATE `items` SET `cost` = '405' WHERE `items`.`id` = 556;
UPDATE `items` SET `cost` = '629' WHERE `items`.`id` = 557;
UPDATE `items` SET `cost` = '821' WHERE `items`.`id` = 558;
UPDATE `items` SET `cost` = '497' WHERE `items`.`id` = 559;
UPDATE `items` SET `cost` = '908' WHERE `items`.`id` = 560;
UPDATE `items` SET `cost` = '818' WHERE `items`.`id` = 561;
UPDATE `items` SET `cost` = '844' WHERE `items`.`id` = 562;
UPDATE `items` SET `cost` = '713' WHERE `items`.`id` = 563;
UPDATE `items` SET `cost` = '708' WHERE `items`.`id` = 564;
UPDATE `items` SET `cost` = '532' WHERE `items`.`id` = 565;
UPDATE `items` SET `cost` = '382' WHERE `items`.`id` = 566;
UPDATE `items` SET `cost` = '695' WHERE `items`.`id` = 615;
UPDATE `items` SET `cost` = '431' WHERE `items`.`id` = 617;
UPDATE `items` SET `cost` = '943' WHERE `items`.`id` = 619;
UPDATE `items` SET `cost` = '850' WHERE `items`.`id` = 620;
UPDATE `items` SET `cost` = '574' WHERE `items`.`id` = 625;
UPDATE `items` SET `cost` = '343' WHERE `items`.`id` = 626;
UPDATE `items` SET `cost` = '592' WHERE `items`.`id` = 628;
UPDATE `items` SET `cost` = '945' WHERE `items`.`id` = 629;
UPDATE `items` SET `cost` = '927' WHERE `items`.`id` = 630;
UPDATE `items` SET `cost` = '591' WHERE `items`.`id` = 631;
UPDATE `items` SET `cost` = '118' WHERE `items`.`id` = 633;
UPDATE `items` SET `cost` = '289' WHERE `items`.`id` = 634;
UPDATE `items` SET `cost` = '543' WHERE `items`.`id` = 635;
UPDATE `items` SET `cost` = '676' WHERE `items`.`id` = 636;
UPDATE `items` SET `cost` = '456' WHERE `items`.`id` = 637;
UPDATE `items` SET `cost` = '875' WHERE `items`.`id` = 638;
UPDATE `items` SET `cost` = '196' WHERE `items`.`id` = 639;
UPDATE `items` SET `cost` = '210' WHERE `items`.`id` = 640;
UPDATE `items` SET `cost` = '314' WHERE `items`.`id` = 641;
UPDATE `items` SET `cost` = '546' WHERE `items`.`id` = 642;
UPDATE `items` SET `cost` = '625' WHERE `items`.`id` = 643;
UPDATE `items` SET `cost` = '475' WHERE `items`.`id` = 644;
UPDATE `items` SET `cost` = '520' WHERE `items`.`id` = 645;
UPDATE `items` SET `cost` = '505' WHERE `items`.`id` = 646;
UPDATE `items` SET `cost` = '253' WHERE `items`.`id` = 647;
UPDATE `items` SET `cost` = '405' WHERE `items`.`id` = 648;
UPDATE `items` SET `cost` = '326' WHERE `items`.`id` = 649;
UPDATE `items` SET `cost` = '930' WHERE `items`.`id` = 650;
UPDATE `items` SET `cost` = '609' WHERE `items`.`id` = 651;
UPDATE `items` SET `cost` = '101' WHERE `items`.`id` = 652;
UPDATE `items` SET `cost` = '217' WHERE `items`.`id` = 653;
UPDATE `items` SET `cost` = '263' WHERE `items`.`id` = 654;
UPDATE `items` SET `cost` = '841' WHERE `items`.`id` = 655;
UPDATE `items` SET `cost` = '310' WHERE `items`.`id` = 656;
UPDATE `items` SET `cost` = '357' WHERE `items`.`id` = 657;
UPDATE `items` SET `cost` = '363' WHERE `items`.`id` = 658;
UPDATE `items` SET `cost` = '392' WHERE `items`.`id` = 662;
UPDATE `items` SET `cost` = '870' WHERE `items`.`id` = 663;
UPDATE `items` SET `cost` = '641' WHERE `items`.`id` = 664;
UPDATE `items` SET `cost` = '161' WHERE `items`.`id` = 665;
UPDATE `items` SET `cost` = '248' WHERE `items`.`id` = 666;
UPDATE `items` SET `cost` = '807' WHERE `items`.`id` = 670;
UPDATE `items` SET `cost` = '236' WHERE `items`.`id` = 671;
UPDATE `items` SET `cost` = '647' WHERE `items`.`id` = 673;
UPDATE `items` SET `cost` = '738' WHERE `items`.`id` = 674;
UPDATE `items` SET `cost` = '611' WHERE `items`.`id` = 675;
UPDATE `items` SET `cost` = '342' WHERE `items`.`id` = 676;
UPDATE `items` SET `cost` = '478' WHERE `items`.`id` = 677;
UPDATE `items` SET `cost` = '529' WHERE `items`.`id` = 678;
UPDATE `items` SET `cost` = '835' WHERE `items`.`id` = 679;
UPDATE `items` SET `cost` = '667' WHERE `items`.`id` = 681;
UPDATE `items` SET `cost` = '582' WHERE `items`.`id` = 695;
UPDATE `items` SET `cost` = '956' WHERE `items`.`id` = 696;
UPDATE `items` SET `cost` = '217' WHERE `items`.`id` = 697;
UPDATE `items` SET `cost` = '932' WHERE `items`.`id` = 698;
UPDATE `items` SET `cost` = '946' WHERE `items`.`id` = 699;
UPDATE `items` SET `cost` = '868' WHERE `items`.`id` = 700;
UPDATE `items` SET `cost` = '220' WHERE `items`.`id` = 701;
UPDATE `items` SET `cost` = '583' WHERE `items`.`id` = 702;
UPDATE `items` SET `cost` = '100' WHERE `items`.`id` = 703;
UPDATE `items` SET `cost` = '382' WHERE `items`.`id` = 704;
UPDATE `items` SET `cost` = '585' WHERE `items`.`id` = 705;
UPDATE `items` SET `cost` = '890' WHERE `items`.`id` = 706;
UPDATE `items` SET `cost` = '151' WHERE `items`.`id` = 707;
UPDATE `items` SET `cost` = '655' WHERE `items`.`id` = 708;
UPDATE `items` SET `cost` = '469' WHERE `items`.`id` = 709;
UPDATE `items` SET `cost` = '513' WHERE `items`.`id` = 710;
UPDATE `items` SET `cost` = '595' WHERE `items`.`id` = 711;
UPDATE `items` SET `cost` = '121' WHERE `items`.`id` = 712;
UPDATE `items` SET `cost` = '184' WHERE `items`.`id` = 713;
UPDATE `items` SET `cost` = '985' WHERE `items`.`id` = 714;
UPDATE `items` SET `cost` = '187' WHERE `items`.`id` = 715;
UPDATE `items` SET `cost` = '923' WHERE `items`.`id` = 716;
UPDATE `items` SET `cost` = '644' WHERE `items`.`id` = 717;
UPDATE `items` SET `cost` = '165' WHERE `items`.`id` = 718;
UPDATE `items` SET `cost` = '141' WHERE `items`.`id` = 719;
UPDATE `items` SET `cost` = '123' WHERE `items`.`id` = 720;
UPDATE `items` SET `cost` = '424' WHERE `items`.`id` = 721;
UPDATE `items` SET `cost` = '672' WHERE `items`.`id` = 722;
UPDATE `items` SET `cost` = '629' WHERE `items`.`id` = 732;
UPDATE `items` SET `cost` = '686' WHERE `items`.`id` = 733;
UPDATE `items` SET `cost` = '921' WHERE `items`.`id` = 734;
UPDATE `items` SET `cost` = '378' WHERE `items`.`id` = 735;
UPDATE `items` SET `cost` = '220' WHERE `items`.`id` = 736;
UPDATE `items` SET `cost` = '335' WHERE `items`.`id` = 737;
UPDATE `items` SET `cost` = '179' WHERE `items`.`id` = 738;
UPDATE `items` SET `cost` = '380' WHERE `items`.`id` = 739;
UPDATE `items` SET `cost` = '753' WHERE `items`.`id` = 740;
UPDATE `items` SET `cost` = '332' WHERE `items`.`id` = 741;
UPDATE `items` SET `cost` = '569' WHERE `items`.`id` = 742;
UPDATE `items` SET `cost` = '421' WHERE `items`.`id` = 743;
UPDATE `items` SET `cost` = '763' WHERE `items`.`id` = 744;
UPDATE `items` SET `cost` = '344' WHERE `items`.`id` = 760;
UPDATE `items` SET `cost` = '795' WHERE `items`.`id` = 761;
UPDATE `items` SET `cost` = '462' WHERE `items`.`id` = 762;
UPDATE `items` SET `cost` = '719' WHERE `items`.`id` = 763;
UPDATE `items` SET `cost` = '952' WHERE `items`.`id` = 768;
UPDATE `items` SET `cost` = '267' WHERE `items`.`id` = 769;
UPDATE `items` SET `cost` = '959' WHERE `items`.`id` = 770;
UPDATE `items` SET `cost` = '823' WHERE `items`.`id` = 772;
UPDATE `items` SET `cost` = '897' WHERE `items`.`id` = 773;
UPDATE `items` SET `cost` = '544' WHERE `items`.`id` = 774;
UPDATE `items` SET `cost` = '453' WHERE `items`.`id` = 775;
UPDATE `items` SET `cost` = '589' WHERE `items`.`id` = 776;
UPDATE `items` SET `cost` = '885' WHERE `items`.`id` = 779;
UPDATE `items` SET `cost` = '928' WHERE `items`.`id` = 780;
UPDATE `items` SET `cost` = '820' WHERE `items`.`id` = 782;
UPDATE `items` SET `cost` = '934' WHERE `items`.`id` = 783;
UPDATE `items` SET `cost` = '979' WHERE `items`.`id` = 784;
UPDATE `items` SET `cost` = '958' WHERE `items`.`id` = 785;
UPDATE `items` SET `cost` = '771' WHERE `items`.`id` = 786;
UPDATE `items` SET `cost` = '416' WHERE `items`.`id` = 787;
UPDATE `items` SET `cost` = '349' WHERE `items`.`id` = 788;
UPDATE `items` SET `cost` = '293' WHERE `items`.`id` = 789;
UPDATE `items` SET `cost` = '498' WHERE `items`.`id` = 790;
UPDATE `items` SET `cost` = '843' WHERE `items`.`id` = 791;
UPDATE `items` SET `cost` = '644' WHERE `items`.`id` = 793;
UPDATE `items` SET `cost` = '642' WHERE `items`.`id` = 794;
UPDATE `items` SET `cost` = '636' WHERE `items`.`id` = 795;
UPDATE `items` SET `cost` = '262' WHERE `items`.`id` = 796;
UPDATE `items` SET `cost` = '197' WHERE `items`.`id` = 797;
UPDATE `items` SET `cost` = '675' WHERE `items`.`id` = 798;
UPDATE `items` SET `cost` = '586' WHERE `items`.`id` = 799;
UPDATE `items` SET `cost` = '713' WHERE `items`.`id` = 800;
UPDATE `items` SET `cost` = '696' WHERE `items`.`id` = 801;
UPDATE `items` SET `cost` = '700' WHERE `items`.`id` = 802;
UPDATE `items` SET `cost` = '595' WHERE `items`.`id` = 803;
UPDATE `items` SET `cost` = '342' WHERE `items`.`id` = 804;
UPDATE `items` SET `cost` = '735' WHERE `items`.`id` = 805;
UPDATE `items` SET `cost` = '476' WHERE `items`.`id` = 806;
UPDATE `items` SET `cost` = '191' WHERE `items`.`id` = 807;
UPDATE `items` SET `cost` = '481' WHERE `items`.`id` = 808;
UPDATE `items` SET `cost` = '325' WHERE `items`.`id` = 809;
UPDATE `items` SET `cost` = '496' WHERE `items`.`id` = 810;
UPDATE `items` SET `cost` = '557' WHERE `items`.`id` = 811;
UPDATE `items` SET `cost` = '996' WHERE `items`.`id` = 814;
UPDATE `items` SET `cost` = '122' WHERE `items`.`id` = 815;
UPDATE `items` SET `cost` = '659' WHERE `items`.`id` = 816;
UPDATE `items` SET `cost` = '711' WHERE `items`.`id` = 817;
UPDATE `items` SET `cost` = '585' WHERE `items`.`id` = 818;
UPDATE `items` SET `cost` = '445' WHERE `items`.`id` = 819;
UPDATE `items` SET `cost` = '166' WHERE `items`.`id` = 820;
UPDATE `items` SET `cost` = '667' WHERE `items`.`id` = 821;
UPDATE `items` SET `cost` = '728' WHERE `items`.`id` = 822;
UPDATE `items` SET `cost` = '509' WHERE `items`.`id` = 823;
UPDATE `items` SET `cost` = '595' WHERE `items`.`id` = 824;
UPDATE `items` SET `cost` = '209' WHERE `items`.`id` = 825;
UPDATE `items` SET `cost` = '848' WHERE `items`.`id` = 826;
UPDATE `items` SET `cost` = '304' WHERE `items`.`id` = 827;
UPDATE `items` SET `cost` = '401' WHERE `items`.`id` = 828;
UPDATE `items` SET `cost` = '545' WHERE `items`.`id` = 829;
UPDATE `items` SET `cost` = '714' WHERE `items`.`id` = 830;
UPDATE `items` SET `cost` = '949' WHERE `items`.`id` = 831;
UPDATE `items` SET `cost` = '350' WHERE `items`.`id` = 832;
UPDATE `items` SET `cost` = '405' WHERE `items`.`id` = 833;
UPDATE `items` SET `cost` = '849' WHERE `items`.`id` = 834;
UPDATE `items` SET `cost` = '354' WHERE `items`.`id` = 835;
UPDATE `items` SET `cost` = '924' WHERE `items`.`id` = 838;
UPDATE `items` SET `cost` = '918' WHERE `items`.`id` = 839;
UPDATE `items` SET `cost` = '142' WHERE `items`.`id` = 840;
UPDATE `items` SET `cost` = '211' WHERE `items`.`id` = 841;
UPDATE `items` SET `cost` = '513' WHERE `items`.`id` = 842;
UPDATE `items` SET `cost` = '347' WHERE `items`.`id` = 843;
UPDATE `items` SET `cost` = '149' WHERE `items`.`id` = 844;
UPDATE `items` SET `cost` = '673' WHERE `items`.`id` = 845;
UPDATE `items` SET `cost` = '510' WHERE `items`.`id` = 846;
UPDATE `items` SET `cost` = '888' WHERE `items`.`id` = 847;
UPDATE `items` SET `cost` = '297' WHERE `items`.`id` = 877;
UPDATE `items` SET `cost` = '888' WHERE `items`.`id` = 878;
UPDATE `items` SET `cost` = '398' WHERE `items`.`id` = 879;
UPDATE `items` SET `cost` = '616' WHERE `items`.`id` = 880;
UPDATE `items` SET `cost` = '255' WHERE `items`.`id` = 882;
UPDATE `items` SET `cost` = '220' WHERE `items`.`id` = 884;
UPDATE `items` SET `cost` = '312' WHERE `items`.`id` = 886;
UPDATE `items` SET `cost` = '911' WHERE `items`.`id` = 887;
UPDATE `items` SET `cost` = '691' WHERE `items`.`id` = 893;
UPDATE `items` SET `cost` = '792' WHERE `items`.`id` = 894;
UPDATE `items` SET `cost` = '782' WHERE `items`.`id` = 895;
UPDATE `items` SET `cost` = '931' WHERE `items`.`id` = 919;
UPDATE `items` SET `cost` = '403' WHERE `items`.`id` = 920;
UPDATE `items` SET `cost` = '958' WHERE `items`.`id` = 921;
UPDATE `items` SET `cost` = '743' WHERE `items`.`id` = 922;
UPDATE `items` SET `cost` = '571' WHERE `items`.`id` = 923;
UPDATE `items` SET `cost` = '876' WHERE `items`.`id` = 924;
UPDATE `items` SET `cost` = '805' WHERE `items`.`id` = 925;
UPDATE `items` SET `cost` = '844' WHERE `items`.`id` = 926;
UPDATE `items` SET `cost` = '194' WHERE `items`.`id` = 927;
UPDATE `items` SET `cost` = '784' WHERE `items`.`id` = 928;
UPDATE `items` SET `cost` = '209' WHERE `items`.`id` = 929;
UPDATE `items` SET `cost` = '975' WHERE `items`.`id` = 930;
UPDATE `items` SET `cost` = '983' WHERE `items`.`id` = 931;
UPDATE `items` SET `cost` = '752' WHERE `items`.`id` = 932;
UPDATE `items` SET `cost` = '889' WHERE `items`.`id` = 933;
UPDATE `items` SET `cost` = '684' WHERE `items`.`id` = 934;
UPDATE `items` SET `cost` = '447' WHERE `items`.`id` = 935;
UPDATE `items` SET `cost` = '219' WHERE `items`.`id` = 936;
UPDATE `items` SET `cost` = '722' WHERE `items`.`id` = 937;
UPDATE `items` SET `cost` = '166' WHERE `items`.`id` = 938;
UPDATE `items` SET `cost` = '643' WHERE `items`.`id` = 939;
UPDATE `items` SET `cost` = '326' WHERE `items`.`id` = 940;
UPDATE `items` SET `cost` = '322' WHERE `items`.`id` = 941;
UPDATE `items` SET `cost` = '349' WHERE `items`.`id` = 942;
UPDATE `items` SET `cost` = '113' WHERE `items`.`id` = 943;
UPDATE `items` SET `cost` = '875' WHERE `items`.`id` = 944;
UPDATE `items` SET `cost` = '374' WHERE `items`.`id` = 945;
UPDATE `items` SET `cost` = '406' WHERE `items`.`id` = 946;
UPDATE `items` SET `cost` = '234' WHERE `items`.`id` = 947;
UPDATE `items` SET `cost` = '147' WHERE `items`.`id` = 948;
UPDATE `items` SET `cost` = '763' WHERE `items`.`id` = 949;
UPDATE `items` SET `cost` = '274' WHERE `items`.`id` = 950;
UPDATE `items` SET `cost` = '786' WHERE `items`.`id` = 951;
UPDATE `items` SET `cost` = '790' WHERE `items`.`id` = 952;
UPDATE `items` SET `cost` = '893' WHERE `items`.`id` = 953;
UPDATE `items` SET `cost` = '943' WHERE `items`.`id` = 954;
UPDATE `items` SET `cost` = '485' WHERE `items`.`id` = 955;
UPDATE `items` SET `cost` = '412' WHERE `items`.`id` = 956;
UPDATE `items` SET `cost` = '197' WHERE `items`.`id` = 957;
UPDATE `items` SET `cost` = '815' WHERE `items`.`id` = 958;
UPDATE `items` SET `cost` = '600' WHERE `items`.`id` = 959;
UPDATE `items` SET `cost` = '333' WHERE `items`.`id` = 960;
UPDATE `items` SET `cost` = '129' WHERE `items`.`id` = 961;
UPDATE `items` SET `cost` = '967' WHERE `items`.`id` = 962;
UPDATE `items` SET `cost` = '446' WHERE `items`.`id` = 963;
UPDATE `items` SET `cost` = '928' WHERE `items`.`id` = 964;
UPDATE `items` SET `cost` = '995' WHERE `items`.`id` = 965;
UPDATE `items` SET `cost` = '673' WHERE `items`.`id` = 966;
UPDATE `items` SET `cost` = '316' WHERE `items`.`id` = 967;
UPDATE `items` SET `cost` = '176' WHERE `items`.`id` = 968;
UPDATE `items` SET `cost` = '620' WHERE `items`.`id` = 969;
UPDATE `items` SET `cost` = '304' WHERE `items`.`id` = 970;
UPDATE `items` SET `cost` = '886' WHERE `items`.`id` = 971;
UPDATE `items` SET `cost` = '861' WHERE `items`.`id` = 972;
UPDATE `items` SET `cost` = '610' WHERE `items`.`id` = 973;
UPDATE `items` SET `cost` = '327' WHERE `items`.`id` = 974;
UPDATE `items` SET `cost` = '336' WHERE `items`.`id` = 975;
UPDATE `items` SET `cost` = '738' WHERE `items`.`id` = 976;
UPDATE `items` SET `cost` = '808' WHERE `items`.`id` = 977;
UPDATE `items` SET `cost` = '931' WHERE `items`.`id` = 978;
UPDATE `items` SET `cost` = '307' WHERE `items`.`id` = 979;
UPDATE `items` SET `cost` = '538' WHERE `items`.`id` = 980;
UPDATE `items` SET `cost` = '801' WHERE `items`.`id` = 981;
UPDATE `items` SET `cost` = '652' WHERE `items`.`id` = 982;
UPDATE `items` SET `cost` = '701' WHERE `items`.`id` = 983;
UPDATE `items` SET `cost` = '562' WHERE `items`.`id` = 984;
UPDATE `items` SET `cost` = '347' WHERE `items`.`id` = 985;
UPDATE `items` SET `cost` = '204' WHERE `items`.`id` = 986;
UPDATE `items` SET `cost` = '577' WHERE `items`.`id` = 987;
UPDATE `items` SET `cost` = '688' WHERE `items`.`id` = 988;
UPDATE `items` SET `cost` = '946' WHERE `items`.`id` = 989;
UPDATE `items` SET `cost` = '211' WHERE `items`.`id` = 990;
UPDATE `items` SET `cost` = '690' WHERE `items`.`id` = 991;
UPDATE `items` SET `cost` = '671' WHERE `items`.`id` = 992;
UPDATE `items` SET `cost` = '253' WHERE `items`.`id` = 993;
UPDATE `items` SET `cost` = '767' WHERE `items`.`id` = 994;
UPDATE `items` SET `cost` = '463' WHERE `items`.`id` = 995;
UPDATE `items` SET `cost` = '395' WHERE `items`.`id` = 996;
UPDATE `items` SET `cost` = '877' WHERE `items`.`id` = 997;
UPDATE `items` SET `cost` = '164' WHERE `items`.`id` = 998;
UPDATE `items` SET `cost` = '346' WHERE `items`.`id` = 999;
UPDATE `items` SET `cost` = '359' WHERE `items`.`id` = 1000;
UPDATE `items` SET `cost` = '766' WHERE `items`.`id` = 1001;
UPDATE `items` SET `cost` = '226' WHERE `items`.`id` = 1002;
UPDATE `items` SET `cost` = '626' WHERE `items`.`id` = 1003;
UPDATE `items` SET `cost` = '429' WHERE `items`.`id` = 1004;
UPDATE `items` SET `cost` = '502' WHERE `items`.`id` = 1005;
UPDATE `items` SET `cost` = '336' WHERE `items`.`id` = 1006;
UPDATE `items` SET `cost` = '784' WHERE `items`.`id` = 1007;
UPDATE `items` SET `cost` = '457' WHERE `items`.`id` = 1008;
UPDATE `items` SET `cost` = '918' WHERE `items`.`id` = 1009;
UPDATE `items` SET `cost` = '579' WHERE `items`.`id` = 1010;
UPDATE `items` SET `cost` = '181' WHERE `items`.`id` = 1011;
UPDATE `items` SET `cost` = '630' WHERE `items`.`id` = 1012;
UPDATE `items` SET `cost` = '498' WHERE `items`.`id` = 1013;
UPDATE `items` SET `cost` = '417' WHERE `items`.`id` = 1020;
UPDATE `items` SET `cost` = '146' WHERE `items`.`id` = 1021;
UPDATE `items` SET `cost` = '373' WHERE `items`.`id` = 1022;
UPDATE `items` SET `cost` = '865' WHERE `items`.`id` = 1023;
UPDATE `items` SET `cost` = '377' WHERE `items`.`id` = 1033;
UPDATE `items` SET `cost` = '507' WHERE `items`.`id` = 1034;
UPDATE `items` SET `cost` = '500' WHERE `items`.`id` = 1035;
UPDATE `items` SET `cost` = '472' WHERE `items`.`id` = 1138;
UPDATE `items` SET `cost` = '889' WHERE `items`.`id` = 1139;
UPDATE `items` SET `cost` = '408' WHERE `items`.`id` = 1140;
UPDATE `items` SET `cost` = '987' WHERE `items`.`id` = 1141;
UPDATE `items` SET `cost` = '521' WHERE `items`.`id` = 1142;
UPDATE `items` SET `cost` = '741' WHERE `items`.`id` = 1143;
UPDATE `items` SET `cost` = '442' WHERE `items`.`id` = 1160;
UPDATE `items` SET `cost` = '942' WHERE `items`.`id` = 1161;
UPDATE `items` SET `cost` = '544' WHERE `items`.`id` = 1162;
UPDATE `items` SET `cost` = '520' WHERE `items`.`id` = 1187;
UPDATE `items` SET `cost` = '659' WHERE `items`.`id` = 1313;
UPDATE `items` SET `cost` = '598' WHERE `items`.`id` = 1323;
UPDATE `items` SET `cost` = '248' WHERE `items`.`id` = 1324;
UPDATE `items` SET `cost` = '112' WHERE `items`.`id` = 1325;
UPDATE `items` SET `cost` = '157' WHERE `items`.`id` = 1326;
UPDATE `items` SET `cost` = '655' WHERE `items`.`id` = 1327;
UPDATE `items` SET `cost` = '695' WHERE `items`.`id` = 1328;
UPDATE `items` SET `cost` = '223' WHERE `items`.`id` = 1329;
UPDATE `items` SET `cost` = '155' WHERE `items`.`id` = 1634;
UPDATE `items` SET `cost` = '196' WHERE `items`.`id` = 1635;
UPDATE `items` SET `cost` = '982' WHERE `items`.`id` = 1636;
UPDATE `items` SET `cost` = '172' WHERE `items`.`id` = 1637;
UPDATE `items` SET `cost` = '811' WHERE `items`.`id` = 1638;
UPDATE `items` SET `cost` = '748' WHERE `items`.`id` = 1640;
UPDATE `items` SET `cost` = '156' WHERE `items`.`id` = 1641;
UPDATE `items` SET `cost` = '130' WHERE `items`.`id` = 1642;
UPDATE `items` SET `cost` = '572' WHERE `items`.`id` = 1644;
UPDATE `items` SET `cost` = '399' WHERE `items`.`id` = 1645;
UPDATE `items` SET `cost` = '853' WHERE `items`.`id` = 1646;
UPDATE `items` SET `cost` = '574' WHERE `items`.`id` = 1647;
UPDATE `items` SET `cost` = '618' WHERE `items`.`id` = 1648;
UPDATE `items` SET `cost` = '134' WHERE `items`.`id` = 1649;
UPDATE `items` SET `cost` = '160' WHERE `items`.`id` = 1650;
UPDATE `items` SET `cost` = '164' WHERE `items`.`id` = 1651;
UPDATE `items` SET `cost` = '715' WHERE `items`.`id` = 1652;
UPDATE `items` SET `cost` = '870' WHERE `items`.`id` = 1653;
UPDATE `items` SET `cost` = '471' WHERE `items`.`id` = 1654;
UPDATE `items` SET `cost` = '866' WHERE `items`.`id` = 1658;


CREATE TABLE `used_pokemon` (
  `codV` int(11) NOT NULL,
  `pokemonId` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` int(5) NOT NULL,
  `description` char(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `pokedb`.`notif` (
  `id` int(11) AUTO_INCREMENT PRIMARY KEY ,
  `notif_msg` VARCHAR(200),
  `notif_time` datetime DEFAULT NULL,
  `notif_repeat` int(11) DEFAULT 1,
  `notif_loop` int(11) DEFAULT 1,
  `publish_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB;

INSERT INTO `merchant` (`codV`, `name`, `IBAN`, `avatar`) VALUES ('1', 'PokeZone', 'NL35ABNA2779975601', 'base');

INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 1, 39, 2079, 'Bulbasaur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 2, 75, 2669, 'Ivysaur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 3, 41, 2522, 'Venusaur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 4, 51, 8135, 'Charmander raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 5, 40, 2675, 'Charmeleon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 6, 68, 5471, 'Charizard raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 7, 72, 1069, 'Squirtle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 8, 23, 3316, 'Wartortle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 9, 60, 3938, 'Blastoise raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 10, 95, 3276, 'Caterpie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 11, 18, 2761, 'Metapod raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 12, 14, 7100, 'Butterfree raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 13, 99, 8657, 'Weedle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 14, 60, 3204, 'Kakuna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 15, 75, 1415, 'Beedrill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 16, 54, 8888, 'Pidgey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 17, 40, 2103, 'Pidgeotto raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 18, 91, 6662, 'Pidgeot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 19, 21, 2951, 'Rattata raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 20, 31, 8098, 'Raticate raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 21, 73, 1701, 'Spearow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 22, 91, 3068, 'Fearow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 23, 17, 4718, 'Ekans raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 24, 94, 1790, 'Arbok raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 25, 83, 9080, 'Pikachu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 26, 43, 3811, 'Raichu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 27, 13, 2798, 'Sandshrew raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 28, 40, 8916, 'Sandslash raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 29, 60, 7759, 'Nidoran-f raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 30, 37, 5384, 'Nidorina raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 31, 78, 3311, 'Nidoqueen raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 32, 68, 1414, 'Nidoran-m raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 33, 89, 7586, 'Nidorino raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 34, 11, 8060, 'Nidoking raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 35, 58, 6713, 'Clefairy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 36, 14, 8521, 'Clefable raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 37, 28, 3035, 'Vulpix raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 38, 50, 4070, 'Ninetales raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 39, 82, 9700, 'Jigglypuff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 40, 60, 3273, 'Wigglytuff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 41, 19, 1405, 'Zubat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 42, 94, 5828, 'Golbat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 43, 54, 6807, 'Oddish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 44, 36, 9897, 'Gloom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 45, 82, 4553, 'Vileplume raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 46, 93, 1801, 'Paras raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 47, 76, 5609, 'Parasect raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 48, 67, 6060, 'Venonat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 49, 55, 1300, 'Venomoth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 50, 55, 5298, 'Diglett raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 51, 37, 3422, 'Dugtrio raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 52, 27, 2017, 'Meowth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 53, 58, 7572, 'Persian raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 54, 49, 7564, 'Psyduck raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 55, 41, 8466, 'Golduck raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 56, 84, 7967, 'Mankey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 57, 24, 2349, 'Primeape raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 58, 94, 1081, 'Growlithe raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 59, 85, 2696, 'Arcanine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 60, 33, 8324, 'Poliwag raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 61, 41, 9929, 'Poliwhirl raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 62, 29, 3272, 'Poliwrath raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 63, 62, 9911, 'Abra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 64, 63, 5035, 'Kadabra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 65, 81, 2767, 'Alakazam raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 66, 48, 5907, 'Machop raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 67, 41, 7164, 'Machoke raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 68, 48, 5146, 'Machamp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 69, 78, 5474, 'Bellsprout raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 70, 44, 3288, 'Weepinbell raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 71, 37, 4739, 'Victreebel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 72, 55, 5427, 'Tentacool raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 73, 45, 5199, 'Tentacruel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 74, 22, 5654, 'Geodude raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 75, 48, 1667, 'Graveler raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 76, 13, 9817, 'Golem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 77, 22, 3333, 'Ponyta raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 78, 44, 5464, 'Rapidash raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 79, 57, 7466, 'Slowpoke raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 80, 83, 3328, 'Slowbro raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 81, 82, 6878, 'Magnemite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 82, 67, 6069, 'Magneton raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 83, 85, 7032, 'Farfetchd raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 84, 11, 7739, 'Doduo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 85, 24, 2781, 'Dodrio raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 86, 73, 6570, 'Seel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 87, 40, 6423, 'Dewgong raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 88, 26, 8182, 'Grimer raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 89, 40, 9204, 'Muk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 90, 28, 7398, 'Shellder raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 91, 78, 4138, 'Cloyster raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 92, 77, 8775, 'Gastly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 93, 28, 1449, 'Haunter raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 94, 26, 5110, 'Gengar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 95, 72, 2040, 'Onix raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 96, 30, 7549, 'Drowzee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 97, 13, 2577, 'Hypno raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 98, 20, 7819, 'Krabby raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 99, 64, 2050, 'Kingler raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 100, 63, 3385, 'Voltorb raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 101, 25, 3198, 'Electrode raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 102, 64, 3537, 'Exeggcute raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 103, 82, 4695, 'Exeggutor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 104, 29, 8433, 'Cubone raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 105, 58, 7649, 'Marowak raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 106, 32, 5233, 'Hitmonlee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 107, 18, 3244, 'Hitmonchan raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 108, 73, 2067, 'Lickitung raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 109, 94, 6648, 'Koffing raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 110, 29, 5795, 'Weezing raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 111, 87, 9448, 'Rhyhorn raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 112, 40, 8107, 'Rhydon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 113, 43, 7013, 'Chansey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 114, 95, 1351, 'Tangela raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 115, 50, 4813, 'Kangaskhan raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 116, 13, 3147, 'Horsea raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 117, 37, 1631, 'Seadra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 118, 61, 7716, 'Goldeen raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 119, 22, 8199, 'Seaking raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 120, 96, 4319, 'Staryu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 121, 17, 8751, 'Starmie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 122, 68, 5399, 'Mr-mime raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 123, 43, 4687, 'Scyther raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 124, 47, 3031, 'Jynx raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 125, 20, 4237, 'Electabuzz raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 126, 18, 6980, 'Magmar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 127, 47, 2932, 'Pinsir raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 128, 73, 3973, 'Tauros raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 129, 17, 2078, 'Magikarp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 130, 68, 5995, 'Gyarados raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 131, 28, 7159, 'Lapras raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 132, 34, 7388, 'Ditto raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 133, 15, 7110, 'Eevee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 134, 72, 9420, 'Vaporeon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 135, 69, 1168, 'Jolteon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 136, 30, 5209, 'Flareon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 137, 75, 7639, 'Porygon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 138, 79, 9267, 'Omanyte raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 139, 95, 7356, 'Omastar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 140, 81, 8759, 'Kabuto raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 141, 12, 8309, 'Kabutops raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 142, 16, 6642, 'Aerodactyl raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 143, 33, 5419, 'Snorlax raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 144, 35, 9396, 'Articuno raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 145, 82, 7367, 'Zapdos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 146, 32, 1635, 'Moltres raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 147, 35, 1812, 'Dratini raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 148, 46, 1391, 'Dragonair raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 149, 42, 1109, 'Dragonite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 150, 28, 9043, 'Mewtwo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 151, 70, 5039, 'Mew raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 152, 88, 3177, 'Chikorita raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 153, 38, 1575, 'Bayleef raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 154, 30, 6728, 'Meganium raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 155, 87, 6678, 'Cyndaquil raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 156, 83, 5005, 'Quilava raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 157, 37, 5703, 'Typhlosion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 158, 28, 9433, 'Totodile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 159, 92, 1177, 'Croconaw raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 160, 77, 4773, 'Feraligatr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 161, 68, 3789, 'Sentret raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 162, 89, 5180, 'Furret raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 163, 86, 6145, 'Hoothoot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 164, 22, 1146, 'Noctowl raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 165, 14, 8524, 'Ledyba raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 166, 26, 2202, 'Ledian raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 167, 97, 8043, 'Spinarak raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 168, 84, 7930, 'Ariados raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 169, 40, 6673, 'Crobat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 170, 60, 3974, 'Chinchou raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 171, 26, 7470, 'Lanturn raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 172, 14, 5405, 'Pichu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 173, 73, 2168, 'Cleffa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 174, 91, 8491, 'Igglybuff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 175, 94, 8463, 'Togepi raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 176, 38, 4777, 'Togetic raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 177, 68, 1358, 'Natu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 178, 24, 8929, 'Xatu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 179, 51, 2004, 'Mareep raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 180, 70, 5854, 'Flaaffy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 181, 89, 4863, 'Ampharos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 182, 29, 1279, 'Bellossom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 183, 98, 1066, 'Marill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 184, 81, 6143, 'Azumarill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 185, 32, 3790, 'Sudowoodo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 186, 92, 1684, 'Politoed raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 187, 67, 3242, 'Hoppip raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 188, 57, 9196, 'Skiploom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 189, 36, 7602, 'Jumpluff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 190, 76, 8136, 'Aipom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 191, 14, 9599, 'Sunkern raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 192, 28, 3227, 'Sunflora raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 193, 65, 8385, 'Yanma raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 194, 14, 7604, 'Wooper raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 195, 64, 5804, 'Quagsire raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 196, 34, 1833, 'Espeon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 197, 16, 7294, 'Umbreon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 198, 36, 1098, 'Murkrow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 199, 26, 1873, 'Slowking raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 200, 35, 9002, 'Misdreavus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 201, 38, 6888, 'Unown raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 202, 75, 5967, 'Wobbuffet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 203, 18, 2087, 'Girafarig raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 204, 39, 7569, 'Pineco raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 205, 57, 9047, 'Forretress raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 206, 95, 3868, 'Dunsparce raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 207, 73, 5966, 'Gligar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 208, 81, 9990, 'Steelix raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 209, 82, 7146, 'Snubbull raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 210, 50, 7970, 'Granbull raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 211, 37, 1390, 'Qwilfish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 212, 24, 9569, 'Scizor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 213, 91, 8474, 'Shuckle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 214, 48, 9821, 'Heracross raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 215, 87, 1245, 'Sneasel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 216, 67, 9123, 'Teddiursa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 217, 66, 6655, 'Ursaring raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 218, 53, 3862, 'Slugma raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 219, 98, 4475, 'Magcargo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 220, 22, 8952, 'Swinub raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 221, 64, 1209, 'Piloswine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 222, 22, 1097, 'Corsola raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 223, 65, 9848, 'Remoraid raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 224, 36, 5713, 'Octillery raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 225, 78, 9380, 'Delibird raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 226, 90, 6789, 'Mantine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 227, 41, 7366, 'Skarmory raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 228, 82, 1138, 'Houndour raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 229, 25, 6667, 'Houndoom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 230, 79, 9048, 'Kingdra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 231, 61, 7243, 'Phanpy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 232, 56, 1255, 'Donphan raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 233, 31, 2854, 'Porygon2 raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 234, 58, 1668, 'Stantler raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 235, 54, 5865, 'Smeargle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 236, 14, 8776, 'Tyrogue raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 237, 62, 3131, 'Hitmontop raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 238, 39, 5370, 'Smoochum raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 239, 60, 8291, 'Elekid raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 240, 40, 4050, 'Magby raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 241, 34, 3576, 'Miltank raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 242, 46, 7599, 'Blissey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 243, 96, 1031, 'Raikou raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 244, 27, 7446, 'Entei raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 245, 18, 6371, 'Suicune raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 246, 29, 3081, 'Larvitar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 247, 83, 6910, 'Pupitar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 248, 73, 5838, 'Tyranitar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 249, 11, 7469, 'Lugia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 250, 65, 3065, 'Ho-oh raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 251, 35, 8069, 'Celebi raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 252, 80, 2466, 'Treecko raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 253, 24, 4561, 'Grovyle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 254, 59, 5073, 'Sceptile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 255, 82, 4202, 'Torchic raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 256, 90, 9271, 'Combusken raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 257, 49, 1286, 'Blaziken raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 258, 32, 6790, 'Mudkip raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 259, 11, 8586, 'Marshtomp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 260, 17, 3877, 'Swampert raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 261, 77, 6902, 'Poochyena raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 262, 40, 3018, 'Mightyena raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 263, 37, 7511, 'Zigzagoon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 264, 36, 4202, 'Linoone raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 265, 72, 6142, 'Wurmple raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 266, 77, 5592, 'Silcoon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 267, 22, 8974, 'Beautifly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 268, 99, 5680, 'Cascoon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 269, 54, 9615, 'Dustox raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 270, 50, 3500, 'Lotad raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 271, 74, 8740, 'Lombre raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 272, 89, 2616, 'Ludicolo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 273, 60, 5398, 'Seedot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 274, 61, 8568, 'Nuzleaf raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 275, 60, 7180, 'Shiftry raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 276, 15, 7061, 'Taillow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 277, 68, 1107, 'Swellow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 278, 53, 2948, 'Wingull raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 279, 38, 1445, 'Pelipper raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 280, 41, 1623, 'Ralts raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 281, 26, 8066, 'Kirlia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 282, 83, 9076, 'Gardevoir raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 283, 74, 4645, 'Surskit raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 284, 78, 2423, 'Masquerain raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 285, 42, 7484, 'Shroomish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 286, 71, 4304, 'Breloom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 287, 91, 2118, 'Slakoth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 288, 42, 7897, 'Vigoroth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 289, 75, 3274, 'Slaking raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 290, 55, 9908, 'Nincada raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 291, 42, 3355, 'Ninjask raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 292, 66, 8950, 'Shedinja raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 293, 31, 7090, 'Whismur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 294, 87, 3166, 'Loudred raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 295, 70, 1236, 'Exploud raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 296, 93, 1589, 'Makuhita raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 297, 62, 4995, 'Hariyama raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 298, 69, 8036, 'Azurill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 299, 13, 3512, 'Nosepass raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 300, 43, 3960, 'Skitty raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 301, 85, 7352, 'Delcatty raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 302, 26, 5067, 'Sableye raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 303, 32, 1492, 'Mawile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 304, 50, 5917, 'Aron raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 305, 71, 3971, 'Lairon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 306, 14, 4609, 'Aggron raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 307, 40, 3328, 'Meditite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 308, 30, 3459, 'Medicham raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 309, 68, 9784, 'Electrike raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 310, 61, 1976, 'Manectric raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 311, 83, 9954, 'Plusle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 312, 33, 2327, 'Minun raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 313, 49, 7545, 'Volbeat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 314, 49, 2397, 'Illumise raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 315, 94, 1817, 'Roselia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 316, 82, 3728, 'Gulpin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 317, 32, 6992, 'Swalot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 318, 27, 9369, 'Carvanha raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 319, 62, 8142, 'Sharpedo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 320, 23, 4551, 'Wailmer raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 321, 71, 6470, 'Wailord raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 322, 17, 2039, 'Numel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 323, 11, 3285, 'Camerupt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 324, 34, 9248, 'Torkoal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 325, 94, 6359, 'Spoink raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 326, 42, 7718, 'Grumpig raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 327, 73, 4430, 'Spinda raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 328, 11, 8289, 'Trapinch raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 329, 67, 2154, 'Vibrava raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 330, 14, 9138, 'Flygon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 331, 91, 4522, 'Cacnea raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 332, 98, 9494, 'Cacturne raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 333, 66, 3002, 'Swablu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 334, 80, 1804, 'Altaria raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 335, 16, 8292, 'Zangoose raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 336, 79, 5154, 'Seviper raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 337, 19, 2790, 'Lunatone raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 338, 75, 9487, 'Solrock raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 339, 36, 7420, 'Barboach raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 340, 53, 2227, 'Whiscash raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 341, 48, 1454, 'Corphish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 342, 10, 1294, 'Crawdaunt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 343, 47, 2244, 'Baltoy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 344, 20, 3598, 'Claydol raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 345, 99, 7491, 'Lileep raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 346, 42, 8454, 'Cradily raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 347, 65, 9170, 'Anorith raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 348, 68, 6441, 'Armaldo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 349, 32, 9300, 'Feebas raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 350, 97, 8398, 'Milotic raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 351, 82, 1670, 'Castform raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 352, 34, 5975, 'Kecleon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 353, 28, 1882, 'Shuppet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 354, 91, 4847, 'Banette raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 355, 19, 7281, 'Duskull raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 356, 29, 2765, 'Dusclops raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 357, 45, 2591, 'Tropius raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 358, 57, 2821, 'Chimecho raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 359, 46, 5381, 'Absol raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 360, 89, 3917, 'Wynaut raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 361, 74, 9107, 'Snorunt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 362, 11, 8991, 'Glalie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 363, 36, 1550, 'Spheal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 364, 81, 1793, 'Sealeo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 365, 74, 8891, 'Walrein raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 366, 80, 4759, 'Clamperl raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 367, 50, 1733, 'Huntail raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 368, 25, 9035, 'Gorebyss raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 369, 15, 7884, 'Relicanth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 370, 30, 4293, 'Luvdisc raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 371, 24, 7436, 'Bagon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 372, 13, 4913, 'Shelgon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 373, 79, 3466, 'Salamence raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 374, 65, 3661, 'Beldum raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 375, 72, 6041, 'Metang raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 376, 37, 8818, 'Metagross raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 377, 15, 6517, 'Regirock raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 378, 16, 6750, 'Regice raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 379, 47, 3193, 'Registeel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 380, 51, 1335, 'Latias raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 381, 93, 6481, 'Latios raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 382, 46, 9942, 'Kyogre raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 383, 12, 8842, 'Groudon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 384, 12, 7533, 'Rayquaza raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 385, 84, 4285, 'Jirachi raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 386, 86, 3910, 'Deoxys-normal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 387, 74, 7657, 'Turtwig raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 388, 40, 6349, 'Grotle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 389, 75, 4218, 'Torterra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 390, 77, 9775, 'Chimchar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 391, 61, 8159, 'Monferno raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 392, 63, 5431, 'Infernape raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 393, 92, 2162, 'Piplup raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 394, 71, 2051, 'Prinplup raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 395, 73, 7338, 'Empoleon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 396, 17, 3333, 'Starly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 397, 75, 1091, 'Staravia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 398, 43, 4078, 'Staraptor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 399, 60, 4429, 'Bidoof raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 400, 74, 7922, 'Bibarel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 401, 42, 2843, 'Kricketot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 402, 99, 5286, 'Kricketune raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 403, 76, 5528, 'Shinx raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 404, 41, 5899, 'Luxio raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 405, 43, 7845, 'Luxray raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 406, 98, 6486, 'Budew raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 407, 68, 1515, 'Roserade raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 408, 22, 9054, 'Cranidos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 409, 84, 3472, 'Rampardos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 410, 78, 9420, 'Shieldon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 411, 73, 8834, 'Bastiodon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 412, 39, 3686, 'Burmy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 413, 52, 5852, 'Wormadam-plant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 414, 57, 9513, 'Mothim raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 415, 45, 3541, 'Combee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 416, 54, 3501, 'Vespiquen raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 417, 40, 1061, 'Pachirisu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 418, 59, 6081, 'Buizel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 419, 79, 8753, 'Floatzel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 420, 90, 2994, 'Cherubi raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 421, 55, 1491, 'Cherrim raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 422, 78, 1815, 'Shellos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 423, 77, 7499, 'Gastrodon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 424, 97, 9153, 'Ambipom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 425, 61, 6885, 'Drifloon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 426, 43, 4937, 'Drifblim raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 427, 69, 8316, 'Buneary raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 428, 59, 8804, 'Lopunny raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 429, 22, 1825, 'Mismagius raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 430, 88, 1187, 'Honchkrow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 431, 83, 1552, 'Glameow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 432, 14, 1257, 'Purugly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 433, 81, 7217, 'Chingling raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 434, 22, 5562, 'Stunky raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 435, 60, 2930, 'Skuntank raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 436, 69, 3142, 'Bronzor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 437, 18, 7866, 'Bronzong raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 438, 27, 5055, 'Bonsly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 439, 22, 1068, 'Mime-jr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 440, 96, 7836, 'Happiny raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 441, 48, 8016, 'Chatot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 442, 22, 5446, 'Spiritomb raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 443, 65, 8457, 'Gible raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 444, 60, 8474, 'Gabite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 445, 71, 8245, 'Garchomp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 446, 58, 3635, 'Munchlax raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 447, 67, 8742, 'Riolu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 448, 32, 7755, 'Lucario raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 449, 80, 4325, 'Hippopotas raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 450, 11, 3986, 'Hippowdon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 451, 58, 9149, 'Skorupi raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 452, 42, 2828, 'Drapion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 453, 28, 5891, 'Croagunk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 454, 99, 1533, 'Toxicroak raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 455, 93, 9912, 'Carnivine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 456, 33, 3193, 'Finneon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 457, 91, 8122, 'Lumineon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 458, 13, 1756, 'Mantyke raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 459, 23, 9393, 'Snover raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 460, 43, 8222, 'Abomasnow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 461, 86, 4954, 'Weavile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 462, 59, 3087, 'Magnezone raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 463, 56, 3215, 'Lickilicky raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 464, 74, 3036, 'Rhyperior raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 465, 64, 7613, 'Tangrowth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 466, 36, 6459, 'Electivire raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 467, 54, 8644, 'Magmortar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 468, 37, 6221, 'Togekiss raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 469, 40, 8203, 'Yanmega raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 470, 17, 2300, 'Leafeon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 471, 50, 2917, 'Glaceon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 472, 26, 1111, 'Gliscor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 473, 39, 5774, 'Mamoswine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 474, 38, 8419, 'Porygon-z raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 475, 78, 1228, 'Gallade raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 476, 18, 5605, 'Probopass raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 477, 86, 1908, 'Dusknoir raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 478, 49, 5999, 'Froslass raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 479, 37, 1359, 'Rotom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 480, 50, 9098, 'Uxie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 481, 67, 8897, 'Mesprit raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 482, 59, 6328, 'Azelf raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 483, 96, 8796, 'Dialga raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 484, 19, 3791, 'Palkia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 485, 81, 1274, 'Heatran raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 486, 46, 2938, 'Regigigas raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 487, 98, 3725, 'Giratina-altered raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 488, 23, 6459, 'Cresselia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 489, 32, 3240, 'Phione raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 490, 55, 3538, 'Manaphy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 491, 86, 5311, 'Darkrai raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 492, 27, 6418, 'Shaymin-land raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 493, 42, 8587, 'Arceus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 494, 46, 8821, 'Victini raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 495, 92, 3610, 'Snivy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 496, 69, 3278, 'Servine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 497, 12, 1313, 'Serperior raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 498, 56, 7351, 'Tepig raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 499, 59, 9576, 'Pignite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 500, 81, 3379, 'Emboar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 501, 86, 2884, 'Oshawott raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 502, 39, 7734, 'Dewott raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 503, 69, 6250, 'Samurott raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 504, 34, 3939, 'Patrat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 505, 98, 2220, 'Watchog raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 506, 35, 2442, 'Lillipup raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 507, 46, 6903, 'Herdier raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 508, 49, 4981, 'Stoutland raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 509, 81, 3532, 'Purrloin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 510, 77, 5614, 'Liepard raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 511, 56, 6125, 'Pansage raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 512, 48, 7078, 'Simisage raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 513, 26, 9893, 'Pansear raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 514, 65, 9135, 'Simisear raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 515, 93, 4166, 'Panpour raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 516, 84, 8834, 'Simipour raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 517, 61, 9375, 'Munna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 518, 46, 9594, 'Musharna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 519, 51, 3239, 'Pidove raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 520, 19, 6963, 'Tranquill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 521, 91, 8097, 'Unfezant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 522, 75, 1815, 'Blitzle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 523, 83, 8763, 'Zebstrika raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 524, 46, 4722, 'Roggenrola raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 525, 29, 6803, 'Boldore raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 526, 86, 5432, 'Gigalith raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 527, 24, 1542, 'Woobat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 528, 27, 6176, 'Swoobat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 529, 26, 5709, 'Drilbur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 530, 16, 3828, 'Excadrill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 531, 41, 4512, 'Audino raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 532, 19, 5096, 'Timburr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 533, 79, 3567, 'Gurdurr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 534, 42, 2850, 'Conkeldurr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 535, 82, 6518, 'Tympole raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 536, 28, 1010, 'Palpitoad raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 537, 85, 7449, 'Seismitoad raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 538, 50, 4079, 'Throh raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 539, 84, 6199, 'Sawk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 540, 87, 8957, 'Sewaddle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 541, 26, 1290, 'Swadloon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 542, 86, 9391, 'Leavanny raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 543, 39, 4923, 'Venipede raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 544, 60, 1149, 'Whirlipede raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 545, 32, 5673, 'Scolipede raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 546, 38, 3301, 'Cottonee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 547, 48, 6050, 'Whimsicott raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 548, 49, 4306, 'Petilil raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 549, 23, 6214, 'Lilligant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 550, 98, 9230, 'Basculin-red-striped raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 551, 61, 8242, 'Sandile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 552, 72, 5402, 'Krokorok raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 553, 58, 1246, 'Krookodile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 554, 80, 1301, 'Darumaka raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 555, 65, 7609, 'Darmanitan-standard raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 556, 83, 7643, 'Maractus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 557, 80, 1728, 'Dwebble raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 558, 44, 3524, 'Crustle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 559, 19, 4513, 'Scraggy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 560, 80, 6532, 'Scrafty raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 561, 80, 2021, 'Sigilyph raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 562, 78, 9296, 'Yamask raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 563, 52, 4410, 'Cofagrigus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 564, 37, 9301, 'Tirtouga raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 565, 14, 6758, 'Carracosta raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 566, 75, 9071, 'Archen raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 567, 49, 9458, 'Archeops raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 568, 47, 7686, 'Trubbish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 569, 22, 6326, 'Garbodor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 570, 77, 7262, 'Zorua raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 571, 18, 5036, 'Zoroark raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 572, 91, 7717, 'Minccino raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 573, 24, 2121, 'Cinccino raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 574, 36, 4519, 'Gothita raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 575, 35, 4431, 'Gothorita raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 576, 47, 1673, 'Gothitelle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 577, 59, 7786, 'Solosis raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 578, 23, 2222, 'Duosion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 579, 78, 7776, 'Reuniclus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 580, 14, 6285, 'Ducklett raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 581, 81, 7700, 'Swanna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 582, 88, 8952, 'Vanillite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 583, 47, 5125, 'Vanillish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 584, 99, 7097, 'Vanilluxe raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 585, 47, 3249, 'Deerling raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 586, 13, 7888, 'Sawsbuck raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 587, 65, 7160, 'Emolga raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 588, 26, 4243, 'Karrablast raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 589, 50, 1271, 'Escavalier raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 590, 50, 5181, 'Foongus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 591, 82, 1320, 'Amoonguss raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 592, 61, 4056, 'Frillish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 593, 16, 4290, 'Jellicent raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 594, 37, 2707, 'Alomomola raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 595, 59, 4068, 'Joltik raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 596, 68, 8227, 'Galvantula raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 597, 30, 2439, 'Ferroseed raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 598, 96, 4454, 'Ferrothorn raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 599, 19, 6455, 'Klink raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 600, 48, 7339, 'Klang raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 601, 66, 1425, 'Klinklang raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 602, 14, 7065, 'Tynamo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 603, 45, 7065, 'Eelektrik raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 604, 34, 1515, 'Eelektross raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 605, 86, 9121, 'Elgyem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 606, 33, 7753, 'Beheeyem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 607, 77, 4695, 'Litwick raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 608, 71, 7736, 'Lampent raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 609, 55, 3571, 'Chandelure raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 610, 82, 9321, 'Axew raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 611, 78, 3676, 'Fraxure raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 612, 41, 1440, 'Haxorus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 613, 39, 9928, 'Cubchoo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 614, 61, 1570, 'Beartic raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 615, 64, 8759, 'Cryogonal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 616, 64, 4742, 'Shelmet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 617, 85, 1907, 'Accelgor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 618, 56, 9197, 'Stunfisk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 619, 52, 6310, 'Mienfoo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 620, 89, 7383, 'Mienshao raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 621, 53, 4002, 'Druddigon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 622, 63, 6172, 'Golett raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 623, 33, 6815, 'Golurk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 624, 46, 3353, 'Pawniard raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 625, 98, 7938, 'Bisharp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 626, 95, 2826, 'Bouffalant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 627, 65, 2786, 'Rufflet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 628, 30, 7120, 'Braviary raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 629, 25, 7421, 'Vullaby raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 630, 84, 4059, 'Mandibuzz raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 631, 27, 5500, 'Heatmor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 632, 64, 2832, 'Durant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 633, 85, 4238, 'Deino raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 634, 30, 3955, 'Zweilous raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 635, 43, 5707, 'Hydreigon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 636, 76, 2406, 'Larvesta raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 637, 22, 2449, 'Volcarona raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 638, 68, 8129, 'Cobalion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 639, 63, 1864, 'Terrakion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 640, 13, 9659, 'Virizion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 641, 59, 4290, 'Tornadus-incarnate raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 642, 69, 4115, 'Thundurus-incarnate raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 643, 87, 4108, 'Reshiram raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 644, 61, 8918, 'Zekrom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 645, 96, 6193, 'Landorus-incarnate raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 646, 73, 5831, 'Kyurem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 647, 90, 2524, 'Keldeo-ordinary raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 648, 69, 5934, 'Meloetta-aria raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 649, 52, 6937, 'Genesect raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 650, 27, 9923, 'Chespin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 651, 53, 3281, 'Quilladin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 652, 37, 1354, 'Chesnaught raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 653, 17, 3280, 'Fennekin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 654, 14, 9348, 'Braixen raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 655, 81, 9261, 'Delphox raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 656, 24, 7557, 'Froakie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 657, 45, 7652, 'Frogadier raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 658, 26, 3181, 'Greninja raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 659, 44, 2698, 'Bunnelby raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 660, 26, 7824, 'Diggersby raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 661, 62, 7966, 'Fletchling raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 662, 97, 2803, 'Fletchinder raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 663, 50, 9585, 'Talonflame raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 664, 62, 7300, 'Scatterbug raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 665, 29, 3124, 'Spewpa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 666, 79, 4581, 'Vivillon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 667, 96, 9089, 'Litleo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 668, 11, 4159, 'Pyroar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 669, 71, 8673, 'Flabebe raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 670, 79, 1821, 'Floette raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 671, 69, 8144, 'Florges raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 672, 52, 6513, 'Skiddo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 673, 94, 4271, 'Gogoat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 674, 57, 9883, 'Pancham raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 675, 81, 3756, 'Pangoro raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 676, 83, 1522, 'Furfrou raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 677, 93, 2521, 'Espurr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 678, 94, 7518, 'Meowstic-male raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 679, 25, 7102, 'Honedge raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 680, 34, 8547, 'Doublade raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 681, 73, 4744, 'Aegislash-shield raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 682, 97, 4694, 'Spritzee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 683, 43, 2565, 'Aromatisse raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 684, 64, 1755, 'Swirlix raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 685, 25, 7887, 'Slurpuff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 686, 32, 2674, 'Inkay raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 687, 62, 1768, 'Malamar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 688, 61, 8284, 'Binacle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 689, 98, 1727, 'Barbaracle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 690, 40, 4748, 'Skrelp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 691, 93, 2347, 'Dragalge raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 692, 67, 1427, 'Clauncher raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 693, 75, 4209, 'Clawitzer raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 694, 13, 8722, 'Helioptile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 695, 59, 3236, 'Heliolisk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 696, 90, 9534, 'Tyrunt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 697, 65, 8085, 'Tyrantrum raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 698, 84, 1522, 'Amaura raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 699, 13, 5652, 'Aurorus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 700, 32, 3934, 'Sylveon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 701, 58, 4405, 'Hawlucha raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 702, 62, 1678, 'Dedenne raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 703, 14, 2215, 'Carbink raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 704, 86, 8748, 'Goomy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 705, 13, 3981, 'Sliggoo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 706, 40, 9339, 'Goodra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 707, 53, 5551, 'Klefki raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 708, 71, 9920, 'Phantump raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 709, 67, 1889, 'Trevenant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 710, 13, 1534, 'Pumpkaboo-average raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 711, 99, 1944, 'Gourgeist-average raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 712, 97, 5181, 'Bergmite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 713, 33, 7753, 'Avalugg raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 714, 56, 1436, 'Noibat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 715, 36, 6364, 'Noivern raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 716, 15, 6792, 'Xerneas raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 717, 18, 8090, 'Yveltal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 718, 73, 1619, 'Zygarde-50 raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 719, 96, 6532, 'Diancie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 720, 62, 2805, 'Hoopa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 721, 54, 3361, 'Volcanion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 722, 15, 4661, 'Rowlet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 723, 46, 7211, 'Dartrix raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 724, 45, 4188, 'Decidueye raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 725, 64, 2189, 'Litten raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 726, 84, 8316, 'Torracat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 727, 52, 5389, 'Incineroar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 728, 82, 9845, 'Popplio raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 729, 25, 3930, 'Brionne raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 730, 62, 6019, 'Primarina raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 731, 12, 7378, 'Pikipek raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 732, 10, 8570, 'Trumbeak raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 733, 84, 8128, 'Toucannon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 734, 69, 1660, 'Yungoos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 735, 99, 8859, 'Gumshoos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 736, 65, 8696, 'Grubbin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 737, 15, 7243, 'Charjabug raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 738, 54, 6756, 'Vikavolt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 739, 74, 4989, 'Crabrawler raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 740, 22, 7107, 'Crabominable raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 741, 11, 9069, 'Oricorio-baile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 742, 78, 5932, 'Cutiefly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 743, 83, 1549, 'Ribombee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 744, 69, 3760, 'Rockruff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 745, 27, 2872, 'Lycanroc-midday raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 746, 97, 1213, 'Wishiwashi-solo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 747, 72, 6270, 'Mareanie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 748, 72, 2263, 'Toxapex raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 749, 54, 2549, 'Mudbray raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 750, 53, 3871, 'Mudsdale raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 751, 24, 5510, 'Dewpider raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 752, 47, 2200, 'Araquanid raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 753, 64, 5714, 'Fomantis raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 754, 85, 4919, 'Lurantis raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 755, 29, 5306, 'Morelull raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 756, 27, 3659, 'Shiinotic raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 757, 65, 3286, 'Salandit raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 758, 89, 5783, 'Salazzle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 759, 74, 3707, 'Stufful raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 760, 77, 9389, 'Bewear raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 761, 57, 6861, 'Bounsweet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 762, 96, 1132, 'Steenee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 763, 30, 2961, 'Tsareena raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 764, 39, 9570, 'Comfey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 765, 14, 4316, 'Oranguru raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 766, 59, 2690, 'Passimian raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 767, 90, 1185, 'Wimpod raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 768, 27, 4487, 'Golisopod raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 769, 31, 7060, 'Sandygast raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 770, 19, 8710, 'Palossand raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 771, 17, 7965, 'Pyukumuku raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 772, 31, 1014, 'Type-null raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 773, 71, 4943, 'Silvally raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 775, 25, 6263, 'Komala raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 776, 78, 2290, 'Turtonator raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 777, 90, 3170, 'Togedemaru raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 779, 95, 6459, 'Bruxish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 780, 52, 3433, 'Drampa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 781, 91, 2001, 'Dhelmise raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 782, 43, 4315, 'Jangmo-o raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 783, 89, 9619, 'Hakamo-o raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 784, 65, 5679, 'Kommo-o raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 785, 89, 4434, 'Tapu-koko raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 786, 73, 8565, 'Tapu-lele raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 787, 42, 2914, 'Tapu-bulu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 788, 73, 1874, 'Tapu-fini raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 789, 75, 5530, 'Cosmog raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 790, 30, 9879, 'Cosmoem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 791, 72, 1518, 'Solgaleo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 792, 81, 4354, 'Lunala raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 793, 85, 3311, 'Nihilego raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 794, 10, 7587, 'Buzzwole raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 795, 97, 9487, 'Pheromosa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 796, 80, 2833, 'Xurkitree raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 797, 25, 2731, 'Celesteela raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 798, 69, 7351, 'Kartana raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 799, 97, 5309, 'Guzzlord raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 800, 13, 5428, 'Necrozma raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 801, 71, 9182, 'Magearna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 802, 87, 4899, 'Marshadow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 803, 93, 4948, 'Poipole raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 804, 60, 6194, 'Naganadel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 805, 51, 2231, 'Stakataka raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 806, 35, 8623, 'Blacephalon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 807, 29, 5869, 'Zeraora raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 808, 11, 8152, 'Meltan raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 809, 92, 8171, 'Melmetal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 810, 86, 2786, 'Grookey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 811, 21, 7393, 'Thwackey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 812, 24, 4667, 'Rillaboom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 813, 93, 7258, 'Scorbunny raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 814, 89, 1913, 'Raboot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 815, 34, 4388, 'Cinderace raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 816, 11, 6083, 'Sobble raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 817, 12, 6270, 'Drizzile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 818, 81, 6930, 'Inteleon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 819, 80, 7987, 'Skwovet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 820, 97, 8124, 'Greedent raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 821, 72, 7340, 'Rookidee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 822, 81, 8905, 'Corvisquire raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 823, 33, 4723, 'Corviknight raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 824, 92, 4182, 'Blipbug raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 825, 15, 3863, 'Dottler raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 826, 83, 9721, 'Orbeetle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 827, 64, 5955, 'Nickit raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 828, 77, 1427, 'Thievul raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 829, 44, 3759, 'Gossifleur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 830, 20, 2677, 'Eldegoss raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 831, 57, 5291, 'Wooloo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 832, 16, 6089, 'Dubwool raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 833, 95, 3420, 'Chewtle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 834, 17, 1610, 'Drednaw raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 835, 36, 2492, 'Yamper raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 836, 39, 2153, 'Boltund raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 837, 59, 6139, 'Rolycoly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 838, 41, 8388, 'Carkol raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 839, 60, 6529, 'Coalossal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 840, 85, 2939, 'Applin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 841, 14, 5503, 'Flapple raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 842, 62, 9363, 'Appletun raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 843, 14, 4763, 'Silicobra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 844, 43, 4520, 'Sandaconda raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 845, 43, 8306, 'Cramorant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 846, 29, 7661, 'Arrokuda raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 847, 39, 3225, 'Barraskewda raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 848, 44, 5508, 'Toxel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 849, 49, 6028, 'Toxtricity-amped raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 850, 44, 8261, 'Sizzlipede raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 851, 32, 7405, 'Centiskorch raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 852, 61, 1375, 'Clobbopus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 853, 42, 6914, 'Grapploct raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 854, 52, 3823, 'Sinistea raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 855, 10, 9523, 'Polteageist raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 856, 20, 6628, 'Hatenna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 857, 27, 5643, 'Hattrem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 858, 57, 1951, 'Hatterene raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 859, 82, 7550, 'Impidimp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 860, 41, 9870, 'Morgrem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 861, 17, 5884, 'Grimmsnarl raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 862, 70, 9766, 'Obstagoon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 863, 24, 6388, 'Perrserker raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 864, 82, 2095, 'Cursola raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 865, 49, 1940, 'Sirfetchd raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 866, 93, 1869, 'Mr-rime raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 867, 63, 4657, 'Runerigus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 868, 90, 2731, 'Milcery raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 869, 85, 6205, 'Alcremie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 870, 84, 1968, 'Falinks raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 871, 32, 8245, 'Pincurchin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 872, 10, 3435, 'Snom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 873, 98, 5118, 'Frosmoth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 874, 14, 7942, 'Stonjourner raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 875, 31, 6305, 'Eiscue-ice raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 876, 17, 8356, 'Indeedee-male raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 877, 13, 9123, 'Morpeko-full-belly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 878, 10, 3595, 'Cufant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 879, 64, 8353, 'Copperajah raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 880, 98, 4418, 'Dracozolt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 881, 76, 5515, 'Arctozolt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 882, 92, 7858, 'Dracovish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 883, 36, 6541, 'Arctovish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 884, 53, 5239, 'Duraludon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 885, 10, 3788, 'Dreepy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 886, 67, 7744, 'Drakloak raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 887, 31, 8523, 'Dragapult raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 888, 69, 4117, 'Zacian raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 889, 76, 1884, 'Zamazenta raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 890, 48, 3203, 'Eternatus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 891, 31, 7267, 'Kubfu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 892, 97, 6528, 'Urshifu-single-strike raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 893, 84, 3437, 'Zarude raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 894, 27, 5996, 'Regieleki raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 895, 79, 4605, 'Regidrago raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 896, 69, 8331, 'Glastrier raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 897, 90, 4234, 'Spectrier raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 898, 12, 7333, 'Calyrex raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 10001, 16, 4180, 'Deoxys-attack raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 10002, 45, 9630, 'Deoxys-defense raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 10003, 44, 4218, 'Deoxys-speed raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 10004, 67, 2127, 'Wormadam-sandy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 10005, 47, 2125, 'Wormadam-trash raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 10006, 38, 8200, 'Shaymin-sky raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('1', 10007, 35, 9927, 'Giratina-origin raised by PokeZone');

CREATE TABLE images(name VARCHAR(100) PRIMARY KEY);

INSERT INTO images(name) VALUES ('../resources/Trainers/trainer00.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer01.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer02.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer03.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer04.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer05.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer06.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer07.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer08.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer09.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer010.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer011.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer012.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer013.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer014.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer015.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer016.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer017.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer018.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer019.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer020.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer021.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer022.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer023.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer024.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer025.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer026.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer027.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer028.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer029.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer030.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer031.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer032.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer033.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer034.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer035.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer036.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer037.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer038.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer039.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer040.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer041.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer042.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer043.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer044.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer045.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer046.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer047.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer048.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer049.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer050.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer051.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer052.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer053.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer054.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer055.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer056.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer057.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer058.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer059.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer060.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer061.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer062.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer063.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer064.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer065.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer066.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer067.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer068.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer069.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer070.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer071.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer072.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer073.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer074.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer075.png');
INSERT INTO images(name) VALUES ('../resources/Trainers/trainer076.png');

INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 1, 39, 2079, 'Bulbasaur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 2, 75, 2669, 'Ivysaur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 3, 41, 2522, 'Venusaur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 4, 51, 8135, 'Charmander raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 5, 40, 2675, 'Charmeleon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 6, 68, 5471, 'Charizard raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 7, 72, 1069, 'Squirtle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 8, 23, 3316, 'Wartortle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 9, 60, 3938, 'Blastoise raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 10, 95, 3276, 'Caterpie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 11, 18, 2761, 'Metapod raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 12, 14, 7100, 'Butterfree raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 13, 99, 8657, 'Weedle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 14, 60, 3204, 'Kakuna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 15, 75, 1415, 'Beedrill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 16, 54, 8888, 'Pidgey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 17, 40, 2103, 'Pidgeotto raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 18, 91, 6662, 'Pidgeot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 19, 21, 2951, 'Rattata raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 20, 31, 8098, 'Raticate raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 21, 73, 1701, 'Spearow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 22, 91, 3068, 'Fearow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 23, 17, 4718, 'Ekans raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 24, 94, 1790, 'Arbok raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 25, 83, 9080, 'Pikachu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 26, 43, 3811, 'Raichu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 27, 13, 2798, 'Sandshrew raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 28, 40, 8916, 'Sandslash raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 29, 60, 7759, 'Nidoran-f raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 30, 37, 5384, 'Nidorina raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 31, 78, 3311, 'Nidoqueen raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 32, 68, 1414, 'Nidoran-m raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 33, 89, 7586, 'Nidorino raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 34, 11, 8060, 'Nidoking raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 35, 58, 6713, 'Clefairy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 36, 14, 8521, 'Clefable raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 37, 28, 3035, 'Vulpix raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 38, 50, 4070, 'Ninetales raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 39, 82, 9700, 'Jigglypuff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 40, 60, 3273, 'Wigglytuff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 41, 19, 1405, 'Zubat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 42, 94, 5828, 'Golbat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 43, 54, 6807, 'Oddish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 44, 36, 9897, 'Gloom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 45, 82, 4553, 'Vileplume raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 46, 93, 1801, 'Paras raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 47, 76, 5609, 'Parasect raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 48, 67, 6060, 'Venonat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 49, 55, 1300, 'Venomoth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 50, 55, 5298, 'Diglett raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 51, 37, 3422, 'Dugtrio raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 52, 27, 2017, 'Meowth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 53, 58, 7572, 'Persian raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 54, 49, 7564, 'Psyduck raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 55, 41, 8466, 'Golduck raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 56, 84, 7967, 'Mankey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 57, 24, 2349, 'Primeape raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 58, 94, 1081, 'Growlithe raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 59, 85, 2696, 'Arcanine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 60, 33, 8324, 'Poliwag raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 61, 41, 9929, 'Poliwhirl raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 62, 29, 3272, 'Poliwrath raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 63, 62, 9911, 'Abra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 64, 63, 5035, 'Kadabra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 65, 81, 2767, 'Alakazam raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 66, 48, 5907, 'Machop raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 67, 41, 7164, 'Machoke raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 68, 48, 5146, 'Machamp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 69, 78, 5474, 'Bellsprout raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 70, 44, 3288, 'Weepinbell raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 71, 37, 4739, 'Victreebel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 72, 55, 5427, 'Tentacool raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 73, 45, 5199, 'Tentacruel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 74, 22, 5654, 'Geodude raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 75, 48, 1667, 'Graveler raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 76, 13, 9817, 'Golem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 77, 22, 3333, 'Ponyta raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 78, 44, 5464, 'Rapidash raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 79, 57, 7466, 'Slowpoke raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 80, 83, 3328, 'Slowbro raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 81, 82, 6878, 'Magnemite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 82, 67, 6069, 'Magneton raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 83, 85, 7032, 'Farfetchd raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 84, 11, 7739, 'Doduo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 85, 24, 2781, 'Dodrio raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 86, 73, 6570, 'Seel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 87, 40, 6423, 'Dewgong raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 88, 26, 8182, 'Grimer raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 89, 40, 9204, 'Muk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 90, 28, 7398, 'Shellder raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 91, 78, 4138, 'Cloyster raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 92, 77, 8775, 'Gastly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 93, 28, 1449, 'Haunter raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 94, 26, 5110, 'Gengar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 95, 72, 2040, 'Onix raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 96, 30, 7549, 'Drowzee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 97, 13, 2577, 'Hypno raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 98, 20, 7819, 'Krabby raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 99, 64, 2050, 'Kingler raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 100, 63, 3385, 'Voltorb raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 101, 25, 3198, 'Electrode raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 102, 64, 3537, 'Exeggcute raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 103, 82, 4695, 'Exeggutor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 104, 29, 8433, 'Cubone raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 105, 58, 7649, 'Marowak raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 106, 32, 5233, 'Hitmonlee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 107, 18, 3244, 'Hitmonchan raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 108, 73, 2067, 'Lickitung raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 109, 94, 6648, 'Koffing raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 110, 29, 5795, 'Weezing raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 111, 87, 9448, 'Rhyhorn raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 112, 40, 8107, 'Rhydon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 113, 43, 7013, 'Chansey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 114, 95, 1351, 'Tangela raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 115, 50, 4813, 'Kangaskhan raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 116, 13, 3147, 'Horsea raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 117, 37, 1631, 'Seadra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 118, 61, 7716, 'Goldeen raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 119, 22, 8199, 'Seaking raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 120, 96, 4319, 'Staryu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 121, 17, 8751, 'Starmie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 122, 68, 5399, 'Mr-mime raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 123, 43, 4687, 'Scyther raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 124, 47, 3031, 'Jynx raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 125, 20, 4237, 'Electabuzz raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 126, 18, 6980, 'Magmar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 127, 47, 2932, 'Pinsir raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 128, 73, 3973, 'Tauros raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 129, 17, 2078, 'Magikarp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 130, 68, 5995, 'Gyarados raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 131, 28, 7159, 'Lapras raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 132, 34, 7388, 'Ditto raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 133, 15, 7110, 'Eevee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 134, 72, 9420, 'Vaporeon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 135, 69, 1168, 'Jolteon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 136, 30, 5209, 'Flareon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 137, 75, 7639, 'Porygon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 138, 79, 9267, 'Omanyte raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 139, 95, 7356, 'Omastar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 140, 81, 8759, 'Kabuto raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 141, 12, 8309, 'Kabutops raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 142, 16, 6642, 'Aerodactyl raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 143, 33, 5419, 'Snorlax raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 144, 35, 9396, 'Articuno raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 145, 82, 7367, 'Zapdos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 146, 32, 1635, 'Moltres raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 147, 35, 1812, 'Dratini raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 148, 46, 1391, 'Dragonair raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 149, 42, 1109, 'Dragonite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 150, 28, 9043, 'Mewtwo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 151, 70, 5039, 'Mew raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 152, 88, 3177, 'Chikorita raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 153, 38, 1575, 'Bayleef raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 154, 30, 6728, 'Meganium raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 155, 87, 6678, 'Cyndaquil raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 156, 83, 5005, 'Quilava raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 157, 37, 5703, 'Typhlosion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 158, 28, 9433, 'Totodile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 159, 92, 1177, 'Croconaw raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 160, 77, 4773, 'Feraligatr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 161, 68, 3789, 'Sentret raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 162, 89, 5180, 'Furret raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 163, 86, 6145, 'Hoothoot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 164, 22, 1146, 'Noctowl raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 165, 14, 8524, 'Ledyba raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 166, 26, 2202, 'Ledian raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 167, 97, 8043, 'Spinarak raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 168, 84, 7930, 'Ariados raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 169, 40, 6673, 'Crobat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 170, 60, 3974, 'Chinchou raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 171, 26, 7470, 'Lanturn raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 172, 14, 5405, 'Pichu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 173, 73, 2168, 'Cleffa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 174, 91, 8491, 'Igglybuff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 175, 94, 8463, 'Togepi raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 176, 38, 4777, 'Togetic raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 177, 68, 1358, 'Natu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 178, 24, 8929, 'Xatu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 179, 51, 2004, 'Mareep raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 180, 70, 5854, 'Flaaffy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 181, 89, 4863, 'Ampharos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 182, 29, 1279, 'Bellossom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 183, 98, 1066, 'Marill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 184, 81, 6143, 'Azumarill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 185, 32, 3790, 'Sudowoodo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 186, 92, 1684, 'Politoed raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 187, 67, 3242, 'Hoppip raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 188, 57, 9196, 'Skiploom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 189, 36, 7602, 'Jumpluff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 190, 76, 8136, 'Aipom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 191, 14, 9599, 'Sunkern raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 192, 28, 3227, 'Sunflora raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 193, 65, 8385, 'Yanma raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 194, 14, 7604, 'Wooper raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 195, 64, 5804, 'Quagsire raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 196, 34, 1833, 'Espeon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 197, 16, 7294, 'Umbreon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 198, 36, 1098, 'Murkrow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 199, 26, 1873, 'Slowking raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 200, 35, 9002, 'Misdreavus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 201, 38, 6888, 'Unown raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 202, 75, 5967, 'Wobbuffet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 203, 18, 2087, 'Girafarig raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 204, 39, 7569, 'Pineco raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 205, 57, 9047, 'Forretress raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 206, 95, 3868, 'Dunsparce raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 207, 73, 5966, 'Gligar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 208, 81, 9990, 'Steelix raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 209, 82, 7146, 'Snubbull raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 210, 50, 7970, 'Granbull raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 211, 37, 1390, 'Qwilfish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 212, 24, 9569, 'Scizor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 213, 91, 8474, 'Shuckle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 214, 48, 9821, 'Heracross raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 215, 87, 1245, 'Sneasel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 216, 67, 9123, 'Teddiursa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 217, 66, 6655, 'Ursaring raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 218, 53, 3862, 'Slugma raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 219, 98, 4475, 'Magcargo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 220, 22, 8952, 'Swinub raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 221, 64, 1209, 'Piloswine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 222, 22, 1097, 'Corsola raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 223, 65, 9848, 'Remoraid raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 224, 36, 5713, 'Octillery raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 225, 78, 9380, 'Delibird raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 226, 90, 6789, 'Mantine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 227, 41, 7366, 'Skarmory raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 228, 82, 1138, 'Houndour raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 229, 25, 6667, 'Houndoom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 230, 79, 9048, 'Kingdra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 231, 61, 7243, 'Phanpy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 232, 56, 1255, 'Donphan raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 233, 31, 2854, 'Porygon2 raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 234, 58, 1668, 'Stantler raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 235, 54, 5865, 'Smeargle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 236, 14, 8776, 'Tyrogue raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 237, 62, 3131, 'Hitmontop raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 238, 39, 5370, 'Smoochum raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 239, 60, 8291, 'Elekid raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 240, 40, 4050, 'Magby raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 241, 34, 3576, 'Miltank raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 242, 46, 7599, 'Blissey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 243, 96, 1031, 'Raikou raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 244, 27, 7446, 'Entei raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 245, 18, 6371, 'Suicune raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 246, 29, 3081, 'Larvitar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 247, 83, 6910, 'Pupitar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 248, 73, 5838, 'Tyranitar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 249, 11, 7469, 'Lugia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 250, 65, 3065, 'Ho-oh raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 251, 35, 8069, 'Celebi raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 252, 80, 2466, 'Treecko raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 253, 24, 4561, 'Grovyle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 254, 59, 5073, 'Sceptile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 255, 82, 4202, 'Torchic raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 256, 90, 9271, 'Combusken raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 257, 49, 1286, 'Blaziken raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 258, 32, 6790, 'Mudkip raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 259, 11, 8586, 'Marshtomp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 260, 17, 3877, 'Swampert raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 261, 77, 6902, 'Poochyena raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 262, 40, 3018, 'Mightyena raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 263, 37, 7511, 'Zigzagoon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 264, 36, 4202, 'Linoone raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 265, 72, 6142, 'Wurmple raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 266, 77, 5592, 'Silcoon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 267, 22, 8974, 'Beautifly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 268, 99, 5680, 'Cascoon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 269, 54, 9615, 'Dustox raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 270, 50, 3500, 'Lotad raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 271, 74, 8740, 'Lombre raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 272, 89, 2616, 'Ludicolo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 273, 60, 5398, 'Seedot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 274, 61, 8568, 'Nuzleaf raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 275, 60, 7180, 'Shiftry raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 276, 15, 7061, 'Taillow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 277, 68, 1107, 'Swellow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 278, 53, 2948, 'Wingull raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 279, 38, 1445, 'Pelipper raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 280, 41, 1623, 'Ralts raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 281, 26, 8066, 'Kirlia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 282, 83, 9076, 'Gardevoir raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 283, 74, 4645, 'Surskit raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 284, 78, 2423, 'Masquerain raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 285, 42, 7484, 'Shroomish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 286, 71, 4304, 'Breloom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 287, 91, 2118, 'Slakoth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 288, 42, 7897, 'Vigoroth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 289, 75, 3274, 'Slaking raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 290, 55, 9908, 'Nincada raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 291, 42, 3355, 'Ninjask raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 292, 66, 8950, 'Shedinja raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 293, 31, 7090, 'Whismur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 294, 87, 3166, 'Loudred raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 295, 70, 1236, 'Exploud raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 296, 93, 1589, 'Makuhita raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 297, 62, 4995, 'Hariyama raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 298, 69, 8036, 'Azurill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 299, 13, 3512, 'Nosepass raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 300, 43, 3960, 'Skitty raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 301, 85, 7352, 'Delcatty raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 302, 26, 5067, 'Sableye raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 303, 32, 1492, 'Mawile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 304, 50, 5917, 'Aron raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 305, 71, 3971, 'Lairon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 306, 14, 4609, 'Aggron raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 307, 40, 3328, 'Meditite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 308, 30, 3459, 'Medicham raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 309, 68, 9784, 'Electrike raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 310, 61, 1976, 'Manectric raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 311, 83, 9954, 'Plusle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 312, 33, 2327, 'Minun raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 313, 49, 7545, 'Volbeat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 314, 49, 2397, 'Illumise raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 315, 94, 1817, 'Roselia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 316, 82, 3728, 'Gulpin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 317, 32, 6992, 'Swalot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 318, 27, 9369, 'Carvanha raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 319, 62, 8142, 'Sharpedo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 320, 23, 4551, 'Wailmer raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 321, 71, 6470, 'Wailord raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 322, 17, 2039, 'Numel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 323, 11, 3285, 'Camerupt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 324, 34, 9248, 'Torkoal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 325, 94, 6359, 'Spoink raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 326, 42, 7718, 'Grumpig raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 327, 73, 4430, 'Spinda raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 328, 11, 8289, 'Trapinch raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 329, 67, 2154, 'Vibrava raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 330, 14, 9138, 'Flygon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 331, 91, 4522, 'Cacnea raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 332, 98, 9494, 'Cacturne raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 333, 66, 3002, 'Swablu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 334, 80, 1804, 'Altaria raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 335, 16, 8292, 'Zangoose raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 336, 79, 5154, 'Seviper raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 337, 19, 2790, 'Lunatone raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 338, 75, 9487, 'Solrock raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 339, 36, 7420, 'Barboach raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 340, 53, 2227, 'Whiscash raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 341, 48, 1454, 'Corphish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 342, 10, 1294, 'Crawdaunt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 343, 47, 2244, 'Baltoy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 344, 20, 3598, 'Claydol raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 345, 99, 7491, 'Lileep raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 346, 42, 8454, 'Cradily raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 347, 65, 9170, 'Anorith raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 348, 68, 6441, 'Armaldo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 349, 32, 9300, 'Feebas raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 350, 97, 8398, 'Milotic raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 351, 82, 1670, 'Castform raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 352, 34, 5975, 'Kecleon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 353, 28, 1882, 'Shuppet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 354, 91, 4847, 'Banette raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 355, 19, 7281, 'Duskull raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 356, 29, 2765, 'Dusclops raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 357, 45, 2591, 'Tropius raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 358, 57, 2821, 'Chimecho raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 359, 46, 5381, 'Absol raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 360, 89, 3917, 'Wynaut raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 361, 74, 9107, 'Snorunt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 362, 11, 8991, 'Glalie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 363, 36, 1550, 'Spheal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 364, 81, 1793, 'Sealeo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 365, 74, 8891, 'Walrein raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 366, 80, 4759, 'Clamperl raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 367, 50, 1733, 'Huntail raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 368, 25, 9035, 'Gorebyss raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 369, 15, 7884, 'Relicanth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 370, 30, 4293, 'Luvdisc raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 371, 24, 7436, 'Bagon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 372, 13, 4913, 'Shelgon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 373, 79, 3466, 'Salamence raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 374, 65, 3661, 'Beldum raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 375, 72, 6041, 'Metang raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 376, 37, 8818, 'Metagross raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 377, 15, 6517, 'Regirock raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 378, 16, 6750, 'Regice raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 379, 47, 3193, 'Registeel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 380, 51, 1335, 'Latias raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 381, 93, 6481, 'Latios raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 382, 46, 9942, 'Kyogre raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 383, 12, 8842, 'Groudon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 384, 12, 7533, 'Rayquaza raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 385, 84, 4285, 'Jirachi raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 386, 86, 3910, 'Deoxys-normal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 387, 74, 7657, 'Turtwig raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 388, 40, 6349, 'Grotle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 389, 75, 4218, 'Torterra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 390, 77, 9775, 'Chimchar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 391, 61, 8159, 'Monferno raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 392, 63, 5431, 'Infernape raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 393, 92, 2162, 'Piplup raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 394, 71, 2051, 'Prinplup raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 395, 73, 7338, 'Empoleon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 396, 17, 3333, 'Starly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 397, 75, 1091, 'Staravia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 398, 43, 4078, 'Staraptor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 399, 60, 4429, 'Bidoof raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 400, 74, 7922, 'Bibarel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 401, 42, 2843, 'Kricketot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 402, 99, 5286, 'Kricketune raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 403, 76, 5528, 'Shinx raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 404, 41, 5899, 'Luxio raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 405, 43, 7845, 'Luxray raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 406, 98, 6486, 'Budew raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 407, 68, 1515, 'Roserade raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 408, 22, 9054, 'Cranidos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 409, 84, 3472, 'Rampardos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 410, 78, 9420, 'Shieldon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 411, 73, 8834, 'Bastiodon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 412, 39, 3686, 'Burmy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 413, 52, 5852, 'Wormadam-plant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 414, 57, 9513, 'Mothim raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 415, 45, 3541, 'Combee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 416, 54, 3501, 'Vespiquen raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 417, 40, 1061, 'Pachirisu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 418, 59, 6081, 'Buizel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 419, 79, 8753, 'Floatzel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 420, 90, 2994, 'Cherubi raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 421, 55, 1491, 'Cherrim raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 422, 78, 1815, 'Shellos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 423, 77, 7499, 'Gastrodon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 424, 97, 9153, 'Ambipom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 425, 61, 6885, 'Drifloon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 426, 43, 4937, 'Drifblim raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 427, 69, 8316, 'Buneary raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 428, 59, 8804, 'Lopunny raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 429, 22, 1825, 'Mismagius raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 430, 88, 1187, 'Honchkrow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 431, 83, 1552, 'Glameow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 432, 14, 1257, 'Purugly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 433, 81, 7217, 'Chingling raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 434, 22, 5562, 'Stunky raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 435, 60, 2930, 'Skuntank raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 436, 69, 3142, 'Bronzor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 437, 18, 7866, 'Bronzong raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 438, 27, 5055, 'Bonsly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 439, 22, 1068, 'Mime-jr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 440, 96, 7836, 'Happiny raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 441, 48, 8016, 'Chatot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 442, 22, 5446, 'Spiritomb raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 443, 65, 8457, 'Gible raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 444, 60, 8474, 'Gabite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 445, 71, 8245, 'Garchomp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 446, 58, 3635, 'Munchlax raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 447, 67, 8742, 'Riolu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 448, 32, 7755, 'Lucario raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 449, 80, 4325, 'Hippopotas raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 450, 11, 3986, 'Hippowdon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 451, 58, 9149, 'Skorupi raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 452, 42, 2828, 'Drapion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 453, 28, 5891, 'Croagunk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 454, 99, 1533, 'Toxicroak raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 455, 93, 9912, 'Carnivine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 456, 33, 3193, 'Finneon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 457, 91, 8122, 'Lumineon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 458, 13, 1756, 'Mantyke raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 459, 23, 9393, 'Snover raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 460, 43, 8222, 'Abomasnow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 461, 86, 4954, 'Weavile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 462, 59, 3087, 'Magnezone raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 463, 56, 3215, 'Lickilicky raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 464, 74, 3036, 'Rhyperior raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 465, 64, 7613, 'Tangrowth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 466, 36, 6459, 'Electivire raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 467, 54, 8644, 'Magmortar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 468, 37, 6221, 'Togekiss raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 469, 40, 8203, 'Yanmega raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 470, 17, 2300, 'Leafeon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 471, 50, 2917, 'Glaceon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 472, 26, 1111, 'Gliscor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 473, 39, 5774, 'Mamoswine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 474, 38, 8419, 'Porygon-z raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 475, 78, 1228, 'Gallade raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 476, 18, 5605, 'Probopass raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 477, 86, 1908, 'Dusknoir raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 478, 49, 5999, 'Froslass raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 479, 37, 1359, 'Rotom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 480, 50, 9098, 'Uxie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 481, 67, 8897, 'Mesprit raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 482, 59, 6328, 'Azelf raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 483, 96, 8796, 'Dialga raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 484, 19, 3791, 'Palkia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 485, 81, 1274, 'Heatran raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 486, 46, 2938, 'Regigigas raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 487, 98, 3725, 'Giratina-altered raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 488, 23, 6459, 'Cresselia raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 489, 32, 3240, 'Phione raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 490, 55, 3538, 'Manaphy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 491, 86, 5311, 'Darkrai raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 492, 27, 6418, 'Shaymin-land raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 493, 42, 8587, 'Arceus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 494, 46, 8821, 'Victini raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 495, 92, 3610, 'Snivy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 496, 69, 3278, 'Servine raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 497, 12, 1313, 'Serperior raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 498, 56, 7351, 'Tepig raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 499, 59, 9576, 'Pignite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 500, 81, 3379, 'Emboar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 501, 86, 2884, 'Oshawott raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 502, 39, 7734, 'Dewott raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 503, 69, 6250, 'Samurott raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 504, 34, 3939, 'Patrat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 505, 98, 2220, 'Watchog raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 506, 35, 2442, 'Lillipup raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 507, 46, 6903, 'Herdier raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 508, 49, 4981, 'Stoutland raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 509, 81, 3532, 'Purrloin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 510, 77, 5614, 'Liepard raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 511, 56, 6125, 'Pansage raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 512, 48, 7078, 'Simisage raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 513, 26, 9893, 'Pansear raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 514, 65, 9135, 'Simisear raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 515, 93, 4166, 'Panpour raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 516, 84, 8834, 'Simipour raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 517, 61, 9375, 'Munna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 518, 46, 9594, 'Musharna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 519, 51, 3239, 'Pidove raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 520, 19, 6963, 'Tranquill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 521, 91, 8097, 'Unfezant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 522, 75, 1815, 'Blitzle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 523, 83, 8763, 'Zebstrika raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 524, 46, 4722, 'Roggenrola raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 525, 29, 6803, 'Boldore raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 526, 86, 5432, 'Gigalith raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 527, 24, 1542, 'Woobat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 528, 27, 6176, 'Swoobat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 529, 26, 5709, 'Drilbur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 530, 16, 3828, 'Excadrill raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 531, 41, 4512, 'Audino raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 532, 19, 5096, 'Timburr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 533, 79, 3567, 'Gurdurr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 534, 42, 2850, 'Conkeldurr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 535, 82, 6518, 'Tympole raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 536, 28, 1010, 'Palpitoad raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 537, 85, 7449, 'Seismitoad raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 538, 50, 4079, 'Throh raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 539, 84, 6199, 'Sawk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 540, 87, 8957, 'Sewaddle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 541, 26, 1290, 'Swadloon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 542, 86, 9391, 'Leavanny raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 543, 39, 4923, 'Venipede raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 544, 60, 1149, 'Whirlipede raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 545, 32, 5673, 'Scolipede raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 546, 38, 3301, 'Cottonee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 547, 48, 6050, 'Whimsicott raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 548, 49, 4306, 'Petilil raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 549, 23, 6214, 'Lilligant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 550, 98, 9230, 'Basculin-red-striped raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 551, 61, 8242, 'Sandile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 552, 72, 5402, 'Krokorok raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 553, 58, 1246, 'Krookodile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 554, 80, 1301, 'Darumaka raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 555, 65, 7609, 'Darmanitan-standard raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 556, 83, 7643, 'Maractus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 557, 80, 1728, 'Dwebble raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 558, 44, 3524, 'Crustle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 559, 19, 4513, 'Scraggy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 560, 80, 6532, 'Scrafty raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 561, 80, 2021, 'Sigilyph raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 562, 78, 9296, 'Yamask raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 563, 52, 4410, 'Cofagrigus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 564, 37, 9301, 'Tirtouga raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 565, 14, 6758, 'Carracosta raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 566, 75, 9071, 'Archen raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 567, 49, 9458, 'Archeops raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 568, 47, 7686, 'Trubbish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 569, 22, 6326, 'Garbodor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 570, 77, 7262, 'Zorua raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 571, 18, 5036, 'Zoroark raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 572, 91, 7717, 'Minccino raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 573, 24, 2121, 'Cinccino raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 574, 36, 4519, 'Gothita raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 575, 35, 4431, 'Gothorita raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 576, 47, 1673, 'Gothitelle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 577, 59, 7786, 'Solosis raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 578, 23, 2222, 'Duosion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 579, 78, 7776, 'Reuniclus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 580, 14, 6285, 'Ducklett raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 581, 81, 7700, 'Swanna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 582, 88, 8952, 'Vanillite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 583, 47, 5125, 'Vanillish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 584, 99, 7097, 'Vanilluxe raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 585, 47, 3249, 'Deerling raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 586, 13, 7888, 'Sawsbuck raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 587, 65, 7160, 'Emolga raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 588, 26, 4243, 'Karrablast raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 589, 50, 1271, 'Escavalier raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 590, 50, 5181, 'Foongus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 591, 82, 1320, 'Amoonguss raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 592, 61, 4056, 'Frillish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 593, 16, 4290, 'Jellicent raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 594, 37, 2707, 'Alomomola raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 595, 59, 4068, 'Joltik raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 596, 68, 8227, 'Galvantula raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 597, 30, 2439, 'Ferroseed raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 598, 96, 4454, 'Ferrothorn raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 599, 19, 6455, 'Klink raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 600, 48, 7339, 'Klang raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 601, 66, 1425, 'Klinklang raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 602, 14, 7065, 'Tynamo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 603, 45, 7065, 'Eelektrik raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 604, 34, 1515, 'Eelektross raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 605, 86, 9121, 'Elgyem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 606, 33, 7753, 'Beheeyem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 607, 77, 4695, 'Litwick raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 608, 71, 7736, 'Lampent raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 609, 55, 3571, 'Chandelure raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 610, 82, 9321, 'Axew raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 611, 78, 3676, 'Fraxure raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 612, 41, 1440, 'Haxorus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 613, 39, 9928, 'Cubchoo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 614, 61, 1570, 'Beartic raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 615, 64, 8759, 'Cryogonal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 616, 64, 4742, 'Shelmet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 617, 85, 1907, 'Accelgor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 618, 56, 9197, 'Stunfisk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 619, 52, 6310, 'Mienfoo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 620, 89, 7383, 'Mienshao raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 621, 53, 4002, 'Druddigon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 622, 63, 6172, 'Golett raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 623, 33, 6815, 'Golurk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 624, 46, 3353, 'Pawniard raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 625, 98, 7938, 'Bisharp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 626, 95, 2826, 'Bouffalant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 627, 65, 2786, 'Rufflet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 628, 30, 7120, 'Braviary raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 629, 25, 7421, 'Vullaby raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 630, 84, 4059, 'Mandibuzz raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 631, 27, 5500, 'Heatmor raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 632, 64, 2832, 'Durant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 633, 85, 4238, 'Deino raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 634, 30, 3955, 'Zweilous raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 635, 43, 5707, 'Hydreigon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 636, 76, 2406, 'Larvesta raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 637, 22, 2449, 'Volcarona raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 638, 68, 8129, 'Cobalion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 639, 63, 1864, 'Terrakion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 640, 13, 9659, 'Virizion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 641, 59, 4290, 'Tornadus-incarnate raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 642, 69, 4115, 'Thundurus-incarnate raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 643, 87, 4108, 'Reshiram raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 644, 61, 8918, 'Zekrom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 645, 96, 6193, 'Landorus-incarnate raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 646, 73, 5831, 'Kyurem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 647, 90, 2524, 'Keldeo-ordinary raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 648, 69, 5934, 'Meloetta-aria raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 649, 52, 6937, 'Genesect raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 650, 27, 9923, 'Chespin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 651, 53, 3281, 'Quilladin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 652, 37, 1354, 'Chesnaught raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 653, 17, 3280, 'Fennekin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 654, 14, 9348, 'Braixen raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 655, 81, 9261, 'Delphox raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 656, 24, 7557, 'Froakie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 657, 45, 7652, 'Frogadier raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 658, 26, 3181, 'Greninja raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 659, 44, 2698, 'Bunnelby raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 660, 26, 7824, 'Diggersby raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 661, 62, 7966, 'Fletchling raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 662, 97, 2803, 'Fletchinder raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 663, 50, 9585, 'Talonflame raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 664, 62, 7300, 'Scatterbug raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 665, 29, 3124, 'Spewpa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 666, 79, 4581, 'Vivillon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 667, 96, 9089, 'Litleo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 668, 11, 4159, 'Pyroar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 669, 71, 8673, 'Flabebe raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 670, 79, 1821, 'Floette raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 671, 69, 8144, 'Florges raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 672, 52, 6513, 'Skiddo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 673, 94, 4271, 'Gogoat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 674, 57, 9883, 'Pancham raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 675, 81, 3756, 'Pangoro raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 676, 83, 1522, 'Furfrou raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 677, 93, 2521, 'Espurr raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 678, 94, 7518, 'Meowstic-male raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 679, 25, 7102, 'Honedge raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 680, 34, 8547, 'Doublade raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 681, 73, 4744, 'Aegislash-shield raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 682, 97, 4694, 'Spritzee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 683, 43, 2565, 'Aromatisse raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 684, 64, 1755, 'Swirlix raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 685, 25, 7887, 'Slurpuff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 686, 32, 2674, 'Inkay raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 687, 62, 1768, 'Malamar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 688, 61, 8284, 'Binacle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 689, 98, 1727, 'Barbaracle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 690, 40, 4748, 'Skrelp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 691, 93, 2347, 'Dragalge raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 692, 67, 1427, 'Clauncher raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 693, 75, 4209, 'Clawitzer raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 694, 13, 8722, 'Helioptile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 695, 59, 3236, 'Heliolisk raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 696, 90, 9534, 'Tyrunt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 697, 65, 8085, 'Tyrantrum raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 698, 84, 1522, 'Amaura raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 699, 13, 5652, 'Aurorus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 700, 32, 3934, 'Sylveon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 701, 58, 4405, 'Hawlucha raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 702, 62, 1678, 'Dedenne raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 703, 14, 2215, 'Carbink raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 704, 86, 8748, 'Goomy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 705, 13, 3981, 'Sliggoo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 706, 40, 9339, 'Goodra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 707, 53, 5551, 'Klefki raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 708, 71, 9920, 'Phantump raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 709, 67, 1889, 'Trevenant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 710, 13, 1534, 'Pumpkaboo-average raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 711, 99, 1944, 'Gourgeist-average raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 712, 97, 5181, 'Bergmite raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 713, 33, 7753, 'Avalugg raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 714, 56, 1436, 'Noibat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 715, 36, 6364, 'Noivern raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 716, 15, 6792, 'Xerneas raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 717, 18, 8090, 'Yveltal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 718, 73, 1619, 'Zygarde-50 raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 719, 96, 6532, 'Diancie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 720, 62, 2805, 'Hoopa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 721, 54, 3361, 'Volcanion raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 722, 15, 4661, 'Rowlet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 723, 46, 7211, 'Dartrix raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 724, 45, 4188, 'Decidueye raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 725, 64, 2189, 'Litten raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 726, 84, 8316, 'Torracat raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 727, 52, 5389, 'Incineroar raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 728, 82, 9845, 'Popplio raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 729, 25, 3930, 'Brionne raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 730, 62, 6019, 'Primarina raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 731, 12, 7378, 'Pikipek raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 732, 10, 8570, 'Trumbeak raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 733, 84, 8128, 'Toucannon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 734, 69, 1660, 'Yungoos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 735, 99, 8859, 'Gumshoos raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 736, 65, 8696, 'Grubbin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 737, 15, 7243, 'Charjabug raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 738, 54, 6756, 'Vikavolt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 739, 74, 4989, 'Crabrawler raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 740, 22, 7107, 'Crabominable raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 741, 11, 9069, 'Oricorio-baile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 742, 78, 5932, 'Cutiefly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 743, 83, 1549, 'Ribombee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 744, 69, 3760, 'Rockruff raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 745, 27, 2872, 'Lycanroc-midday raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 746, 97, 1213, 'Wishiwashi-solo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 747, 72, 6270, 'Mareanie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 748, 72, 2263, 'Toxapex raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 749, 54, 2549, 'Mudbray raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 750, 53, 3871, 'Mudsdale raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 751, 24, 5510, 'Dewpider raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 752, 47, 2200, 'Araquanid raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 753, 64, 5714, 'Fomantis raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 754, 85, 4919, 'Lurantis raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 755, 29, 5306, 'Morelull raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 756, 27, 3659, 'Shiinotic raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 757, 65, 3286, 'Salandit raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 758, 89, 5783, 'Salazzle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 759, 74, 3707, 'Stufful raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 760, 77, 9389, 'Bewear raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 761, 57, 6861, 'Bounsweet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 762, 96, 1132, 'Steenee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 763, 30, 2961, 'Tsareena raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 764, 39, 9570, 'Comfey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 765, 14, 4316, 'Oranguru raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 766, 59, 2690, 'Passimian raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 767, 90, 1185, 'Wimpod raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 768, 27, 4487, 'Golisopod raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 769, 31, 7060, 'Sandygast raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 770, 19, 8710, 'Palossand raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 771, 17, 7965, 'Pyukumuku raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 772, 31, 1014, 'Type-null raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 773, 71, 4943, 'Silvally raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 775, 25, 6263, 'Komala raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 776, 78, 2290, 'Turtonator raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 777, 90, 3170, 'Togedemaru raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 779, 95, 6459, 'Bruxish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 780, 52, 3433, 'Drampa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 781, 91, 2001, 'Dhelmise raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 782, 43, 4315, 'Jangmo-o raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 783, 89, 9619, 'Hakamo-o raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 784, 65, 5679, 'Kommo-o raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 785, 89, 4434, 'Tapu-koko raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 786, 73, 8565, 'Tapu-lele raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 787, 42, 2914, 'Tapu-bulu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 788, 73, 1874, 'Tapu-fini raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 789, 75, 5530, 'Cosmog raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 790, 30, 9879, 'Cosmoem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 791, 72, 1518, 'Solgaleo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 792, 81, 4354, 'Lunala raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 793, 85, 3311, 'Nihilego raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 794, 10, 7587, 'Buzzwole raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 795, 97, 9487, 'Pheromosa raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 796, 80, 2833, 'Xurkitree raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 797, 25, 2731, 'Celesteela raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 798, 69, 7351, 'Kartana raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 799, 97, 5309, 'Guzzlord raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 800, 13, 5428, 'Necrozma raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 801, 71, 9182, 'Magearna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 802, 87, 4899, 'Marshadow raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 803, 93, 4948, 'Poipole raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 804, 60, 6194, 'Naganadel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 805, 51, 2231, 'Stakataka raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 806, 35, 8623, 'Blacephalon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 807, 29, 5869, 'Zeraora raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 808, 11, 8152, 'Meltan raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 809, 92, 8171, 'Melmetal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 810, 86, 2786, 'Grookey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 811, 21, 7393, 'Thwackey raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 812, 24, 4667, 'Rillaboom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 813, 93, 7258, 'Scorbunny raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 814, 89, 1913, 'Raboot raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 815, 34, 4388, 'Cinderace raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 816, 11, 6083, 'Sobble raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 817, 12, 6270, 'Drizzile raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 818, 81, 6930, 'Inteleon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 819, 80, 7987, 'Skwovet raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 820, 97, 8124, 'Greedent raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 821, 72, 7340, 'Rookidee raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 822, 81, 8905, 'Corvisquire raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 823, 33, 4723, 'Corviknight raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 824, 92, 4182, 'Blipbug raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 825, 15, 3863, 'Dottler raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 826, 83, 9721, 'Orbeetle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 827, 64, 5955, 'Nickit raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 828, 77, 1427, 'Thievul raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 829, 44, 3759, 'Gossifleur raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 830, 20, 2677, 'Eldegoss raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 831, 57, 5291, 'Wooloo raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 832, 16, 6089, 'Dubwool raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 833, 95, 3420, 'Chewtle raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 834, 17, 1610, 'Drednaw raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 835, 36, 2492, 'Yamper raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 836, 39, 2153, 'Boltund raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 837, 59, 6139, 'Rolycoly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 838, 41, 8388, 'Carkol raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 839, 60, 6529, 'Coalossal raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 840, 85, 2939, 'Applin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 841, 14, 5503, 'Flapple raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 842, 62, 9363, 'Appletun raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 843, 14, 4763, 'Silicobra raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 844, 43, 4520, 'Sandaconda raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 845, 43, 8306, 'Cramorant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 846, 29, 7661, 'Arrokuda raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 847, 39, 3225, 'Barraskewda raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 848, 44, 5508, 'Toxel raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 849, 49, 6028, 'Toxtricity-amped raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 850, 44, 8261, 'Sizzlipede raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 851, 32, 7405, 'Centiskorch raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 852, 61, 1375, 'Clobbopus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 853, 42, 6914, 'Grapploct raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 854, 52, 3823, 'Sinistea raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 855, 10, 9523, 'Polteageist raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 856, 20, 6628, 'Hatenna raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 857, 27, 5643, 'Hattrem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 858, 57, 1951, 'Hatterene raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 859, 82, 7550, 'Impidimp raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 860, 41, 9870, 'Morgrem raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 861, 17, 5884, 'Grimmsnarl raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 862, 70, 9766, 'Obstagoon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 863, 24, 6388, 'Perrserker raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 864, 82, 2095, 'Cursola raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 865, 49, 1940, 'Sirfetchd raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 866, 93, 1869, 'Mr-rime raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 867, 63, 4657, 'Runerigus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 868, 90, 2731, 'Milcery raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 869, 85, 6205, 'Alcremie raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 870, 84, 1968, 'Falinks raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 871, 32, 8245, 'Pincurchin raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 872, 10, 3435, 'Snom raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 873, 98, 5118, 'Frosmoth raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 874, 14, 7942, 'Stonjourner raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 875, 31, 6305, 'Eiscue-ice raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 876, 17, 8356, 'Indeedee-male raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 877, 13, 9123, 'Morpeko-full-belly raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 878, 10, 3595, 'Cufant raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 879, 64, 8353, 'Copperajah raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 880, 98, 4418, 'Dracozolt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 881, 76, 5515, 'Arctozolt raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 882, 92, 7858, 'Dracovish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 883, 36, 6541, 'Arctovish raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 884, 53, 5239, 'Duraludon raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 885, 10, 3788, 'Dreepy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 886, 67, 7744, 'Drakloak raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 887, 31, 8523, 'Dragapult raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 888, 69, 4117, 'Zacian raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 889, 76, 1884, 'Zamazenta raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 890, 48, 3203, 'Eternatus raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 891, 31, 7267, 'Kubfu raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 892, 97, 6528, 'Urshifu-single-strike raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 893, 84, 3437, 'Zarude raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 894, 27, 5996, 'Regieleki raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 895, 79, 4605, 'Regidrago raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 896, 69, 8331, 'Glastrier raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 897, 90, 4234, 'Spectrier raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 898, 12, 7333, 'Calyrex raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 10001, 16, 4180, 'Deoxys-attack raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 10002, 45, 9630, 'Deoxys-defense raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 10003, 44, 4218, 'Deoxys-speed raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 10004, 67, 2127, 'Wormadam-sandy raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 10005, 47, 2125, 'Wormadam-trash raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 10006, 38, 8200, 'Shaymin-sky raised by PokeZone');
INSERT INTO `used_pokemon` (`codV`, `pokemonId`, `quantity`, `price`, `description`) VALUES ('0', 10007, 35, 9927, 'Giratina-origin raised by PokeZone');
