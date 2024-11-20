﻿--MERGE generated by [sp_generate_merge] proc tool. Acknowledgements: https://github.com/dnlnln/generate-sql-merge

SET NOCOUNT ON

SET IDENTITY_INSERT [Artist] ON

DECLARE @mergeOutput TABLE ( [DMLAction] VARCHAR(6) );
MERGE INTO [Artist] WITH (SERIALIZABLE) AS [Target]
USING (VALUES
  (1,N'AC/DC')
 ,(2,N'Accept')
 ,(3,N'Aerosmith')
 ,(4,N'Alanis Morissette')
 ,(5,N'Alice In Chains')
 ,(6,N'Antônio Carlos Jobim')
 ,(7,N'Apocalyptica')
 ,(8,N'Audioslave')
 ,(9,N'BackBeat')
 ,(10,N'Billy Cobham')
 ,(11,N'Black Label Society')
 ,(12,N'Black Sabbath')
 ,(13,N'Body Count')
 ,(14,N'Bruce Dickinson')
 ,(15,N'Buddy Guy')
 ,(16,N'Caetano Veloso')
 ,(17,N'Chico Buarque')
 ,(18,N'Chico Science & Nação Zumbi')
 ,(19,N'Cidade Negra')
 ,(20,N'Cláudio Zoli')
 ,(21,N'Various Artists')
 ,(22,N'Led Zeppelin')
 ,(23,N'Frank Zappa & Captain Beefheart')
 ,(24,N'Marcos Valle')
 ,(25,N'Milton Nascimento & Bebeto')
 ,(26,N'Azymuth')
 ,(27,N'Gilberto Gil')
 ,(28,N'João Gilberto')
 ,(29,N'Bebel Gilberto')
 ,(30,N'Jorge Vercilo')
 ,(31,N'Baby Consuelo')
 ,(32,N'Ney Matogrosso')
 ,(33,N'Luiz Melodia')
 ,(34,N'Nando Reis')
 ,(35,N'Pedro Luís & A Parede')
 ,(36,N'O Rappa')
 ,(37,N'Ed Motta')
 ,(38,N'Banda Black Rio')
 ,(39,N'Fernanda Porto')
 ,(40,N'Os Cariocas')
 ,(41,N'Elis Regina')
 ,(42,N'Milton Nascimento')
 ,(43,N'A Cor Do Som')
 ,(44,N'Kid Abelha')
 ,(45,N'Sandra De Sá')
 ,(46,N'Jorge Ben')
 ,(47,N'Hermeto Pascoal')
 ,(48,N'Barão Vermelho')
 ,(49,N'Edson, DJ Marky & DJ Patife Featuring Fernanda Porto')
 ,(50,N'Metallica')
 ,(51,N'Queen')
 ,(52,N'Kiss')
 ,(53,N'Spyro Gyra')
 ,(54,N'Green Day')
 ,(55,N'David Coverdale')
 ,(56,N'Gonzaguinha')
 ,(57,N'Os Mutantes')
 ,(58,N'Deep Purple')
 ,(59,N'Santana')
 ,(60,N'Santana Feat. Dave Matthews')
 ,(61,N'Santana Feat. Everlast')
 ,(62,N'Santana Feat. Rob Thomas')
 ,(63,N'Santana Feat. Lauryn Hill & Cee-Lo')
 ,(64,N'Santana Feat. The Project G&B')
 ,(65,N'Santana Feat. Maná')
 ,(66,N'Santana Feat. Eagle-Eye Cherry')
 ,(67,N'Santana Feat. Eric Clapton')
 ,(68,N'Miles Davis')
 ,(69,N'Gene Krupa')
 ,(70,N'Toquinho & Vinícius')
 ,(71,N'Vinícius De Moraes & Baden Powell')
 ,(72,N'Vinícius De Moraes')
 ,(73,N'Vinícius E Qurteto Em Cy')
 ,(74,N'Vinícius E Odette Lara')
 ,(75,N'Vinicius, Toquinho & Quarteto Em Cy')
 ,(76,N'Creedence Clearwater Revival')
 ,(77,N'Cássia Eller')
 ,(78,N'Def Leppard')
 ,(79,N'Dennis Chambers')
 ,(80,N'Djavan')
 ,(81,N'Eric Clapton')
 ,(82,N'Faith No More')
 ,(83,N'Falamansa')
 ,(84,N'Foo Fighters')
 ,(85,N'Frank Sinatra')
 ,(86,N'Funk Como Le Gusta')
 ,(87,N'Godsmack')
 ,(88,N'Guns N'' Roses')
 ,(89,N'Incognito')
 ,(90,N'Iron Maiden')
 ,(91,N'James Brown')
 ,(92,N'Jamiroquai')
 ,(93,N'JET')
 ,(94,N'Jimi Hendrix')
 ,(95,N'Joe Satriani')
 ,(96,N'Jota Quest')
 ,(97,N'João Suplicy')
 ,(98,N'Judas Priest')
 ,(99,N'Legião Urbana')
 ,(100,N'Lenny Kravitz')
 ,(101,N'Lulu Santos')
 ,(102,N'Marillion')
 ,(103,N'Marisa Monte')
 ,(104,N'Marvin Gaye')
 ,(105,N'Men At Work')
 ,(106,N'Motörhead')
 ,(107,N'Motörhead & Girlschool')
 ,(108,N'Mônica Marianno')
 ,(109,N'Mötley Crüe')
 ,(110,N'Nirvana')
 ,(111,N'O Terço')
 ,(112,N'Olodum')
 ,(113,N'Os Paralamas Do Sucesso')
 ,(114,N'Ozzy Osbourne')
 ,(115,N'Page & Plant')
 ,(116,N'Passengers')
 ,(117,N'Paul D''Ianno')
 ,(118,N'Pearl Jam')
 ,(119,N'Peter Tosh')
 ,(120,N'Pink Floyd')
 ,(121,N'Planet Hemp')
 ,(122,N'R.E.M. Feat. Kate Pearson')
 ,(123,N'R.E.M. Feat. KRS-One')
 ,(124,N'R.E.M.')
 ,(125,N'Raimundos')
 ,(126,N'Raul Seixas')
 ,(127,N'Red Hot Chili Peppers')
 ,(128,N'Rush')
 ,(129,N'Simply Red')
 ,(130,N'Skank')
 ,(131,N'Smashing Pumpkins')
 ,(132,N'Soundgarden')
 ,(133,N'Stevie Ray Vaughan & Double Trouble')
 ,(134,N'Stone Temple Pilots')
 ,(135,N'System Of A Down')
 ,(136,N'Terry Bozzio, Tony Levin & Steve Stevens')
 ,(137,N'The Black Crowes')
 ,(138,N'The Clash')
 ,(139,N'The Cult')
 ,(140,N'The Doors')
 ,(141,N'The Police')
 ,(142,N'The Rolling Stones')
 ,(143,N'The Tea Party')
 ,(144,N'The Who')
 ,(145,N'Tim Maia')
 ,(146,N'Titãs')
 ,(147,N'Battlestar Galactica')
 ,(148,N'Heroes')
 ,(149,N'Lost')
 ,(150,N'U2')
 ,(151,N'UB40')
 ,(152,N'Van Halen')
 ,(153,N'Velvet Revolver')
 ,(154,N'Whitesnake')
 ,(155,N'Zeca Pagodinho')
 ,(156,N'The Office')
 ,(157,N'Dread Zeppelin')
 ,(158,N'Battlestar Galactica (Classic)')
 ,(159,N'Aquaman')
 ,(160,N'Christina Aguilera featuring BigElf')
 ,(161,N'Aerosmith & Sierra Leone''s Refugee Allstars')
 ,(162,N'Los Lonely Boys')
 ,(163,N'Corinne Bailey Rae')
 ,(164,N'Dhani Harrison & Jakob Dylan')
 ,(165,N'Jackson Browne')
 ,(166,N'Avril Lavigne')
 ,(167,N'Big & Rich')
 ,(168,N'Youssou N''Dour')
 ,(169,N'Black Eyed Peas')
 ,(170,N'Jack Johnson')
 ,(171,N'Ben Harper')
 ,(172,N'Snow Patrol')
 ,(173,N'Matisyahu')
 ,(174,N'The Postal Service')
 ,(175,N'Jaguares')
 ,(176,N'The Flaming Lips')
 ,(177,N'Jack''s Mannequin & Mick Fleetwood')
 ,(178,N'Regina Spektor')
 ,(179,N'Scorpions')
 ,(180,N'House Of Pain')
 ,(181,N'Xis')
 ,(182,N'Nega Gizza')
 ,(183,N'Gustavo & Andres Veiga & Salazar')
 ,(184,N'Rodox')
 ,(185,N'Charlie Brown Jr.')
 ,(186,N'Pedro Luís E A Parede')
 ,(187,N'Los Hermanos')
 ,(188,N'Mundo Livre S/A')
 ,(189,N'Otto')
 ,(190,N'Instituto')
 ,(191,N'Nação Zumbi')
 ,(192,N'DJ Dolores & Orchestra Santa Massa')
 ,(193,N'Seu Jorge')
 ,(194,N'Sabotage E Instituto')
 ,(195,N'Stereo Maracana')
 ,(196,N'Cake')
 ,(197,N'Aisha Duo')
 ,(198,N'Habib Koité and Bamada')
 ,(199,N'Karsh Kale')
 ,(200,N'The Posies')
 ,(201,N'Luciana Souza/Romero Lubambo')
 ,(202,N'Aaron Goldberg')
 ,(203,N'Nicolaus Esterhazy Sinfonia')
 ,(204,N'Temple of the Dog')
 ,(205,N'Chris Cornell')
 ,(206,N'Alberto Turco & Nova Schola Gregoriana')
 ,(207,N'Richard Marlow & The Choir of Trinity College, Cambridge')
 ,(208,N'English Concert & Trevor Pinnock')
 ,(209,N'Anne-Sophie Mutter, Herbert Von Karajan & Wiener Philharmoniker')
 ,(210,N'Hilary Hahn, Jeffrey Kahane, Los Angeles Chamber Orchestra & Margaret Batjer')
 ,(211,N'Wilhelm Kempff')
 ,(212,N'Yo-Yo Ma')
 ,(213,N'Scholars Baroque Ensemble')
 ,(214,N'Academy of St. Martin in the Fields & Sir Neville Marriner')
 ,(215,N'Academy of St. Martin in the Fields Chamber Ensemble & Sir Neville Marriner')
 ,(216,N'Berliner Philharmoniker, Claudio Abbado & Sabine Meyer')
 ,(217,N'Royal Philharmonic Orchestra & Sir Thomas Beecham')
 ,(218,N'Orchestre Révolutionnaire et Romantique & John Eliot Gardiner')
 ,(219,N'Britten Sinfonia, Ivor Bolton & Lesley Garrett')
 ,(220,N'Chicago Symphony Chorus, Chicago Symphony Orchestra & Sir Georg Solti')
 ,(221,N'Sir Georg Solti & Wiener Philharmoniker')
 ,(222,N'Academy of St. Martin in the Fields, John Birch, Sir Neville Marriner & Sylvia McNair')
 ,(223,N'London Symphony Orchestra & Sir Charles Mackerras')
 ,(224,N'Barry Wordsworth & BBC Concert Orchestra')
 ,(225,N'Herbert Von Karajan, Mirella Freni & Wiener Philharmoniker')
 ,(226,N'Eugene Ormandy')
 ,(227,N'Luciano Pavarotti')
 ,(228,N'Leonard Bernstein & New York Philharmonic')
 ,(229,N'Boston Symphony Orchestra & Seiji Ozawa')
 ,(230,N'Aaron Copland & London Symphony Orchestra')
 ,(231,N'Ton Koopman')
 ,(232,N'Sergei Prokofiev & Yuri Temirkanov')
 ,(233,N'Chicago Symphony Orchestra & Fritz Reiner')
 ,(234,N'Orchestra of The Age of Enlightenment')
 ,(235,N'Emanuel Ax, Eugene Ormandy & Philadelphia Orchestra')
 ,(236,N'James Levine')
 ,(237,N'Berliner Philharmoniker & Hans Rosbaud')
 ,(238,N'Maurizio Pollini')
 ,(239,N'Academy of St. Martin in the Fields, Sir Neville Marriner & William Bennett')
 ,(240,N'Gustav Mahler')
 ,(241,N'Felix Schmidt, London Symphony Orchestra & Rafael Frühbeck de Burgos')
 ,(242,N'Edo de Waart & San Francisco Symphony')
 ,(243,N'Antal Doráti & London Symphony Orchestra')
 ,(244,N'Choir Of Westminster Abbey & Simon Preston')
 ,(245,N'Michael Tilson Thomas & San Francisco Symphony')
 ,(246,N'Chor der Wiener Staatsoper, Herbert Von Karajan & Wiener Philharmoniker')
 ,(247,N'The King''s Singers')
 ,(248,N'Berliner Philharmoniker & Herbert Von Karajan')
 ,(249,N'Sir Georg Solti, Sumi Jo & Wiener Philharmoniker')
 ,(250,N'Christopher O''Riley')
 ,(251,N'Fretwork')
 ,(252,N'Amy Winehouse')
 ,(253,N'Calexico')
 ,(254,N'Otto Klemperer & Philharmonia Orchestra')
 ,(255,N'Yehudi Menuhin')
 ,(256,N'Philharmonia Orchestra & Sir Neville Marriner')
 ,(257,N'Academy of St. Martin in the Fields, Sir Neville Marriner & Thurston Dart')
 ,(258,N'Les Arts Florissants & William Christie')
 ,(259,N'The 12 Cellists of The Berlin Philharmonic')
 ,(260,N'Adrian Leaper & Doreen de Feis')
 ,(261,N'Roger Norrington, London Classical Players')
 ,(262,N'Charles Dutoit & L''Orchestre Symphonique de Montréal')
 ,(263,N'Equale Brass Ensemble, John Eliot Gardiner & Munich Monteverdi Orchestra and Choir')
 ,(264,N'Kent Nagano and Orchestre de l''Opéra de Lyon')
 ,(265,N'Julian Bream')
 ,(266,N'Martin Roscoe')
 ,(267,N'Göteborgs Symfoniker & Neeme Järvi')
 ,(268,N'Itzhak Perlman')
 ,(269,N'Michele Campanella')
 ,(270,N'Gerald Moore')
 ,(271,N'Mela Tenenbaum, Pro Musica Prague & Richard Kapp')
 ,(272,N'Emerson String Quartet')
 ,(273,N'C. Monteverdi, Nigel Rogers - Chiaroscuro; London Baroque; London Cornett & Sackbu')
 ,(274,N'Nash Ensemble')
 ,(275,N'Philip Glass Ensemble')
 ,(276,N'Gasolin''')
) AS [Source] ([ArtistId],[Name])
ON ([Target].[ArtistId] = [Source].[ArtistId])
WHEN MATCHED AND EXISTS (SELECT [Source].[Name]
                 EXCEPT  SELECT [Target].[Name]) THEN
 UPDATE SET
  [Target].[Name] = [Source].[Name]
WHEN NOT MATCHED BY TARGET THEN
 INSERT([ArtistId],[Name])
 VALUES([Source].[ArtistId],[Source].[Name])
WHEN NOT MATCHED BY SOURCE THEN 
 DELETE
OUTPUT $action INTO @mergeOutput;

DECLARE @mergeError INT = @@ERROR, @mergeCount INT = (SELECT COUNT(1) FROM @mergeOutput), @mergeCountIns INT = (SELECT COUNT(1) FROM @mergeOutput WHERE [DMLAction] = 'INSERT'), @mergeCountUpd INT = (SELECT COUNT(1) FROM @mergeOutput WHERE [DMLAction] = 'UPDATE'), @mergeCountDel INT = (SELECT COUNT(1) FROM @mergeOutput WHERE [DMLAction] = 'DELETE');
IF @mergeError <> 0 PRINT 'ERROR OCCURRED IN MERGE FOR [Artist]' + CONCAT(' (SQL Server error code: ', @mergeError) + ')';
PRINT CONCAT('[Artist] rows affected by MERGE: ', @mergeCount) + CONCAT(' (Inserted: ', @mergeCountIns) + CONCAT('; Updated: ', @mergeCountUpd) + CONCAT('; Deleted: ', @mergeCountDel) + ')';
GO



SET IDENTITY_INSERT [Artist] OFF
SET NOCOUNT OFF
GO