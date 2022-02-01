CREATE TABLE `pokedb`.`members` (
  `id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` VARCHAR(30) NOT NULL, 
  `email` VARCHAR(50) NOT NULL, 
  `password` CHAR(128) NOT NULL, 
  `salt` CHAR(128) NOT NULL,
  `role` CHAR(90) NOT NULL check (`role` in ('Trainer', 'Trader', 'Merchant', 'Druid')),
  `logged` BOOLEAN NOT NULL
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

CREATE TABLE orders_pokemon(
	orderId INT(11),
    pokemonId INT(11),
    quantity INT(11) NOT NULL,
    FOREIGN KEY(orderId) REFERENCES orders(orderId),
    FOREIGN KEY(pokemonId) REFERENCES pokemon(id)
);

CREATE TABLE orders_item(
	orderId INT(11),
    itemId INT(11),
    FOREIGN KEY(orderId) REFERENCES orders(orders.orderId),
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