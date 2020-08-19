

CREATE TABLE city (
    name character varying(35) NOT NULL,
    country character varying(4) NOT NULL,
    province character varying(32) NOT NULL,
    population integer,
    longitude integer,
    latitude integer
);



--
-- Name: country; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE country (
    name character varying(32) NOT NULL,
    code character varying(4) NOT NULL,
    capital character varying(35),
    province character varying(32),
    area integer,
    population integer
);



--
-- Name: economy; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE economy (
    country character varying(4) NOT NULL,
    gdp integer,
    agriculture integer,
    service integer,
    industry integer,
    inflation integer
);



--
-- Name: ethnic_group; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE ethnic_group (
    country character varying(4) NOT NULL,
    name character varying(50) NOT NULL,
    percentage integer
);



--
-- Name: geo_lake; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE geo_lake (
    lake character varying(25) NOT NULL,
    country character varying(4) NOT NULL,
    province character varying(32) NOT NULL
);



--
-- Name: geo_mountain; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE geo_mountain (
    mountain character varying(20) NOT NULL,
    country character varying(4) NOT NULL,
    province character varying(32) NOT NULL
);



--
-- Name: geo_river; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE geo_river (
    river character varying(20) NOT NULL,
    country character varying(4) NOT NULL,
    province character varying(32) NOT NULL
);



--
-- Name: geo_sea; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE geo_sea (
    sea character varying(25) NOT NULL,
    country character varying(4) NOT NULL,
    province character varying(32) NOT NULL
);



--
-- Name: is_member; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE is_member (
    country character varying(4) NOT NULL,
    organization character varying(12) NOT NULL,
    "type" character varying(30)
);



--
-- Name: island; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE island (
    name character varying(25) NOT NULL,
    islands character varying(25),
    area integer,
    coordinateslong integer,
    coordinateslat integer
);



--
-- Name: lake; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE lake (
    name character varying(25) NOT NULL,
    area integer
);



--
-- Name: language; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE "language" (
    country character varying(4) NOT NULL,
    name character varying(50) NOT NULL,
    percentage integer
);



--
-- Name: located; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE located (
    city character varying(35),
    province character varying(32),
    country character varying(4),
    river character varying(20),
    lake character varying(25),
    sea character varying(25)
);



--
-- Name: merges_with; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE merges_with (
    sea1 character varying(25) NOT NULL,
    sea2 character varying(25) NOT NULL
);



--
-- Name: mountain; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE mountain (
    name character varying(20) NOT NULL,
    height integer,
    coordinateslatitute integer,
    coordinateslongitute integer
);



--
-- Name: organization; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE organization (
    abbreviation character varying(12) NOT NULL,
    name character varying(80) NOT NULL,
    city character varying(35),
    country character varying(4),
    province character varying(32),
    established character varying(20)
);



--
-- Name: politics; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE politics (
    country character varying(4) NOT NULL,
    independence character varying(20),
    government character varying(120)
);



--
-- Name: population; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE population (
    country character varying(4) NOT NULL,
    population_growth integer,
    infant_mortality integer
);



--
-- Name: province; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE province (
    name character varying(32) NOT NULL,
    country character varying(4) NOT NULL,
    population integer,
    area integer,
    capital character varying(35),
    capprov character varying(32)
);



--
-- Name: religion; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE religion (
    country character varying(4) NOT NULL,
    name character varying(50) NOT NULL,
    percentage integer
);



--
-- Name: river; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE river (
    name character varying(20) NOT NULL,
    river character varying(20),
    lake character varying(20),
    sea character varying(25),
    length integer
);



--
-- Name: sea; Type: TABLE; Schema: public; Owner: olive; Tablespace: 
--

CREATE TABLE sea (
    name character varying(25) NOT NULL,
    depth integer
);



---Filling table city :

COPY city FROM STDIN csv;
Luxembourg,L,Luxembourg,76600,6,49
Monaco,MC,Monaco,1234,7,44
San Marino,RSM,San Marino,4416,12,44
Armenia,CO,Quindio,220303,,
Kuwait,KWT,Kuwait,167768,47,29
Singapore,SGP,Singapore,2558000,104,1
Liberia,CR,Guanacaste,36400,,
Djibouti,DJI,Djibouti,,43,12
Tirane,AL,Albania,192000,20,41
Athens,GR,Greece,885737,24,38
Skopje,MK,Macedonia,,,
Belgrade,YU,Serbia and Montenegro,1407073,20,45
Paris,F,Ile de France,2152423,2,49
Madrid,E,Madrid,3041101,-4,40
Vienna,A,Vienna,1583000,16,48
Berlin,D,Berlin,3472009,13,52
Budapest,H,Budapest (munic.),2016000,19,48
Rome,I,Lazio,2791354,13,42
Vaduz,FL,Liechtenstein,27714,9,47
Bratislava,SK,Slovakia,,,
Ljubljana,SLO,Slovenia,,,
Minsk,BY,Belarus,1540000,28,54
Riga,LV,Latvia,900000,14,57
Vilnius,LT,Lithuania,566000,25,54
Warsaw,PL,Warszwaskie,1655000,21,52
Kiev,UA,Kyyivska,2616000,31,50
Moscow,R,Moskva,8717000,38,56
Brussels,B,Brabant,951580,4,51
Amsterdam,NL,Noord Holland,1101407,5,52
Sarajevo,BIH,Bosnia and Herzegovina,,,
Zagreb,HR,Croatia,,,
Sofia,BG,Bulgaria,1300000,23,43
Ankara,TR,Ankara,2782200,33,40
Copenhagen,DK,Denmark,1358540,13,56
Tallinn,EW,Estonia,478000,25,59
Helsinki,SF,Uusimaa,487428,25,60
Oslo,N,Oslo,449337,11,60
Stockholm,S,Stockholm,711119,18,59
Reykjavik,IS,Iceland,84000,-22,64
Dublin,IRL,Ireland,502337,-6,53
Valletta,M,Malta,9302,14,36
Victoria,M,Malta,,14,36
Chisinau,MD,Moldova,663000,28,47
Kabul,AFG,Afghanistan,892000,69,35
Tehran,IR,Tehran,6750043,51,36
Tashkent,UZB,Toshkent,2106000,69,41
Yerevan,ARM,Armenia,1200000,44,40
Tbilisi,GE,Georgia,1200000,45,42
Baku,AZ,Azerbaijan,1740000,50,40
Manama,BRN,Bahrain,145000,51,26
Rangoon,MYA,Yangon,2513000,96,17
New Delhi,IND,Delhi,7206704,77,29
Thimphu,BHT,Bhutan,20000,90,27
Kuala Lumpur,MAL,Fed. Terr. of Kuala Lumpur,1145075,102,3
Vientiane,LAO,Laos,377409,102,18
Bangkok,THA,Thailand,5876000,101,14
Phnom Penh,K,Cambodia,400000,105,12
Hanoi,VN,Vietnam,3056146,106,21
Bishkek,KGZ,Kyrgyzstan,630000,75,42
Ulaanbaatar,MNG,Mongolia,479500,107,48
Kathmandu,NEP,Nepal,393494,85,27
Nicosia,CY,Cyprus,161100,33,35
Jerusalem,IL,Central,468900,35,32
Cairo,ET,El Qahira (munic.),6053000,31,30
Baghdad,IRQ,Baghdad,4478000,44,33
Amman,JOR,Jordan,777500,36,32
Riyadh,SA,Saudi Arabia,1250000,47,25
Damascus,SYR,Syria,1500000,36,34
Beirut,RL,Lebanon,702000,35,34
Tokyo,J,Tokyo,7843000,140,36
Male,MV,Maldives,46334,72,2
Muscat,OM,Oman,30000,59,24
Sanaa,YE,Yemen,427185,44,15
Manila,RP,Philippines,1655000,121,15
Doha,Q,Qatar,217294,51,25
Colombo,CL,Sri Lanka,643000,80,7
Colombo,BR,Parana,153583,,
Taipei,RC,Taiwan,2626138,122,25
Nassau,BS,Bahamas,140000,-77,25
Bridgetown,BDS,Barbados,10000,-59,13
Belmopan,BZ,Belize,3000,-89,17
Guatemala City,GCA,Guatemala,823301,-91,15
Mexico City,MEX,Distrito Federal,9815795,-99,19
Hamilton,CDN,Ontario,318499,-80,43
Managua,NIC,Nicaragua,1195000,-86,12
Panama City,PA,Panama,594800,-80,9
Havana,C,Ciudad de la Habana,2241000,-82,23
Roseau,WD,Dominica,11000,-61,15
Port-au-Prince,RH,Haiti,800000,-72,18
Tegucigalpa,HCA,Francisco Morazan,670100,-87,14
Kingston,GB,Surrey,,,
Kingston,JA,Jamaica,101000,-77,18
Kingston,AUS,Norfolk Island,,,
Plymouth,GB,Devon,255800,,
Bogota,CO,"Santa Fe de Bogota, DC",5237635,-74,5
Basseterre,KN,Saint Kitts and Nevis,14700,-62,17
Castries,WL,Saint Lucia,49000,-61,14
Kingstown,WV,Saint Vincent and the Grenadines,33694,-61,13
Port-of-Spain,TT,Trinidad and Tobago,150000,-61,10
Suva,FJI,Fiji,69481,178,-19
Tarawa,KIR,Kiribati,2100,175,0
Majuro,MH,Marshall Islands,7600,170,10
Kolonia,FSM,Micronesia,5500,168,10
Noumea,NCA,New Caledonia,,,
Wellington,NZ,New Zealand,352030,175,-41
Koror,PAL,Palau,7685,135,8
Honiara,SLB,Solomon Islands,26000,160,-10
Nukualofa,TO,Tonga,28899,175,20
Funafuti,TUV,Tuvalu,2120,178,-8
Port-Vila,VU,Vanuatu,15759,167,-18
Apia,WS,Western Samoa,36000,-171,-12
Buenos Aires,RA,Distrito Federal,2988006,-58,-35
La Paz,MEX,Baja California Sur,137641,-101,24
La Paz,HCA,La Paz,,,
La Paz,BOL,Bolivia,953400,-68,-17
Brasilia,BR,Distrito Federal,1817001,-48,-16
Santiago,PA,Veraguas,61000,,
Santiago,RCH,Chile,4318000,-71,-33
Asuncion,PY,Paraguay,729307,-57,-26
Montevideo,ROU,Uruguay,1247000,-56,-35
Lima,PE,Lima,6321173,-77,-12
Cayenne,FGU,French Guiana,38155,-52,5
Georgetown,GUY,Guyana,170000,-58,7
Paramaribo,SME,Suriname,150000,-55,6
Caracas,YV,Distrito Federal,1822465,-67,11
Quito,EC,Ecuador,1200000,-79,0
Algiers,DZ,Algeria,1507241,30,37
Tripoli,LAR,Libya,,22,37
Bamako,RMM,Mali,,-8,12
Nouakchott,RIM,Mauritania,,-16,18
Niamey,RN,Niger,,2,13
Tunis,TN,Tunisia,,10,37
Luanda,ANG,Luanda,,13,-9
Brazzaville,RCB,Congo,,15,-4
Windhoek,NAM,Namibia,,17,-22
Porto-Novo,BEN,Benin,,2,6
Ouagadougou,BF,Burkina Faso,,-2,12
Abuja,WAN,Nigeria,,,
Lome,RT,Togo,,1,6
Gaborone,RB,Botswana,,26,-25
Harare,ZW,Zimbabwe,,31,-18
Yamoussoukro,CI,Cote dIvoire,,,
Accra,GH,Ghana,867459,0,6
Bujumbura,BI,Burundi,,29,-4
Kigali,RWA,Rwanda,,30,-2
Dar es Salaam,EAT,Daressalam,1360850,39,-7
Bangui,RCA,Central African Republic,,19,4
NDjamena,TCH,Chad,,15,12
Malabo,GQ,Equatorial Guinea,33000,9,4
Libreville,G,Gabon,,9,0
Praia,CV,Cape Verde,,-23,16
Khartoum,SUD,al Khartum,924505,33,16
Moroni,COM,Comoros,,43,-12
Conakry,RG,Guinea,,-14,9
Monrovia,LB,Liberia,,-11,6
Asmara,ER,Eritrea,,39,15
Addis Ababa,ETH,Ethiopia,2316400,39,9
Mogadishu,SP,Somalia,,45,2
Nairobi,EAK,Nairobi,2000000,37,-1
Banjul,WAG,Gambia,,-16,14
Dakar,SN,Dakar,1382000,-17,15
Bissau,GNB,Guinea-Bissau,,-16,12
Freetown,WAL,Sierra Leone,,-13,8
Kampala,EAU,Uganda,,32,0
Maseru,LS,Lesotho,75000,27,-29
Lilongwe,MW,Malawi,,34,-14
Mbabane,SD,Swaziland,,31,-25
Victoria,CDN,British Columbia,263180,-123,48
Victoria,SY,Seychelles,,52,-2
Shkoder,AL,Albania,62000,19,42
Durres,AL,Albania,60000,19,41
Vlore,AL,Albania,56000,19,40
Elbasan,AL,Albania,53000,20,41
Korce,AL,Albania,52000,21,40
Thessaloniki,GR,Greece,406413,23,41
Strasbourg,F,Alsace,252338,8,49
Bridgend,GB,Bridgend,,,
Carmarthen,GB,Carmarthenshire,,,
Aberystwyth,GB,Ceredigion,,,
Ruthin,GB,Denbighshire,,,
Mold,GB,Flintshire,,,
Caernarfon,GB,Gwynedd,,,
Cwmbran,GB,Monmouthshire,,,
Haverfordwest,GB,Pembrokeshire,,,
Rhondda,GB,Rhondda Cynon Taff,,,
Pontypool,GB,Torfaen,,,
Barry,GB,Vale of Glamorgan,,,
Wrexham,GB,Wrexham,,,
Shanghai,TJ,Shanghai (munic.),7830000,121,31
Xi,TJ,Shaanxi,,,
Yasuj,IR,Boyer Ahmad e Kohkiluyeh,,,
Bushehr,IR,Bushehr,,,
Semnan,IR,Semnan,,,
Lahore,PK,Pakistan,5085000,74,32
Karachi,PK,Pakistan,9863000,67,25
Khorugh,TAD,Badakhshoni Kuni,,,
Guliston,UZB,Sirdare,,,
Termiz,UZB,Surkhondare,,,
Chittagong,BD,Bangladesh,1599000,92,22
Mandalay,MYA,Mandalay,532900,96,22
Magway,MYA,Magway,,,
Sagaing,MYA,Sagaing,,,
Tavoy,MYA,Tanintharyi,,,
Hakha,MYA,Chin,,,
Myitkyina,MYA,Kachin,,,
Loikaw,MYA,Kayah,,,
Bangalore,IND,Karnataka,3302296,78,13
Calcutta,IND,West Bengal,4399819,88,23
Madras,IND,Tamil Nadu,3841396,80,13
Nagpur,IND,Maharashtra,1624752,79,21
Itanagar,IND,Arunachal Pradesh,,93,27
Dispur,IND,Assam,,92,26
Panaji,IND,Goa,,74,15
Gandhinagar,IND,Gujarat,,72,23
Simla,IND,Himachal Pradesh,,77,31
Bombay,IND,Maharashtra,,73,19
Imphal,IND,Manipur,,94,25
Shillong,IND,Meghalaya,,92,25
Aijal,IND,Mizoram,,92,23
Kohima,IND,Nagaland,,94,26
Gangtok,IND,Sikkim,,88,27
Agartala,IND,Tripura,,91,24
Silvassa,IND,Dadra and Nagar Haveli,,73,20
Daman,IND,Daman and Diu,,,
Kavaratti,IND,Lakshadweep Is.,,72,10
Pondicherry,IND,Pondicherry,,80,12
Jammu,IND,Jammu and Kashmir,,74,32
Kangar,MAL,Perlis,,,
Labuan,MAL,Fed. Terr. of Labuan,,,
Da Nang,VN,Vietnam,369734,108,16
Arqalyq,KAZ,Torghay,,,
Zhambyl,KAZ,Zhambyl,,,
Zhezkazghan,KAZ,Zhezkazghan,,,
Leninsk,KAZ,Leninsk (munic.),,,
Ramla,IL,Central,,,
Haifa,IL,Haifa,,,
Nazareth,IL,North,,,
Maastricht,NL,Limburg,164701,,
Rotterdam,NL,Zuid Holland,1078747,,
Eindhoven,NL,Noord Brabant,395612,,
Heerlen,NL,Limburg,270952,,
Enschede,NL,Overijssel,254480,,
Nijmegen,NL,Gelderland,249490,,
Tilburg,NL,Noord Brabant,237958,,
Dordrecht,NL,Zuid Holland,213963,,
Leiden,NL,Zuid Holland,194935,,
Geleen,NL,Limburg,186011,,
Breda,NL,Noord Brabant,166616,,
Zaanstreek,NL,Noord Holland,147917,,
Velsen,NL,Noord Holland,134973,,
Hilversum,NL,Noord Holland,102023,,
Bialystok,PL,Bialostockie,268000,,
Bielsko Biala,PL,Bielskie,180000,,
Bydgoszcz,PL,Bydgoskie,380000,,
Czestochowa,PL,Czestochowskie,258000,,
Elblag,PL,Elblaskie,125000,,
Gdansk,PL,Gdanskie,465000,,
Kalisz,PL,Kaliskie,106000,,
Katowice,PL,Katowickie,367000,,
Kielce,PL,Kieleckie,213000,,
Koszalin,PL,Koszalinskie,108000,,
Legnica,PL,Legnickie,104000,,
Lublin,PL,Lubelskie,350000,,
Olsztyn,PL,Olsztynskie,161000,,
Opole,PL,Opolskie,128000,,
Plock,PL,Plockie,122000,,
Poznan,PL,Poznanskie,589000,,
Radom,PL,Radomskie,226000,,
Rzeszow,PL,Rzeszowskie,151000,,
Szczecin,PL,Szczecinskie,412000,,
Tarnow,PL,Tarnowskie,120000,,
Torun,PL,Torunskie,201000,,
Walbrzych,PL,Walbrzyskie,141000,,
Wloclawek,PL,Wloclawskie,121000,,
Wroclaw,PL,Wroclawskie,642000,,
Zielona Gora,PL,Zielonogorskie,113000,,
Lodz,PL,Lodzkie,852000,,
Sosnowiec,PL,Katowickie,259000,,
Gdynia,PL,Gdanskie,251000,,
Bytom,PL,Katowickie,230000,,
Gliwice,PL,Katowickie,216000,,
Zabrze,PL,Katowickie,203000,,
Tychy,PL,Katowickie,190000,,
Ruda Slaska,PL,Katowickie,170000,,
Rybnik,PL,Katowickie,143000,,
Chorzow,PL,Katowickie,133000,,
Gorzow Wielkopolski,PL,Gorzowskie,123000,,
Wodzilaw Slaski,PL,Katowickie,111000,,
Grudziadz,PL,Torunskie,101000,,
Biala Podlaska,PL,Bialskopodlaskie,,,
Gorzow Wielkopolskie,PL,Gorzowskie,,,
Jelenia Gora,PL,Jeleniogorskie,,,
Nowy Sacz,PL,Nowosadeckie,,,
Piottrkow Trybunalski,PL,Piotrkowskie,,,
Lisbon,P,Lisbon,807937,-9,39
Braga,P,Braga,63033,,
Coimbra,P,Coimbra,74616,,
Porto,P,Porto,327368,,
Setubal,P,Setubal,77885,,
Amadora,P,Lisbon,95518,,
Vila Nova de Gaia,P,Porto,62468,,
Barreiro,P,Lisbon,50863,,
Funchal,P,Madeira,44111,,
Almada,P,Lisbon,42607,,
Bucharest,RO,Bucuresti,2037000,26,44
Pitesti,RO,Arges,162000,,
Oradea,RO,Bihor,225000,,
Cluj Napoca,RO,Cluj,318000,,
Craiova,RO,Dolj,300000,,
Baia Mare,RO,Maramures,150000,,
Tirgu Mures,RO,Mures,165000,,
Timisoara,RO,Timis,333000,,
Alba Iulia,RO,Alba,,,
Sfintu Gheorghe,RO,Covasha,,,
Tirgu Jiu,RO,Gorj,,,
Miercurea Ciuc,RO,Harghita,,,
Toledo,USA,Ohio,317606,-84,42
Alexandria,USA,Virginia,117586,,
Worcester,USA,Massachusetts,166350,-72,42
Lincoln,USA,Nebraska,209192,-96,41
Helena,USA,Montana,23938,-112,47
Concord,USA,California,114850,-122,38
Concord,USA,New Hampshire,30400,-72,43
Trenton,USA,New Jersey,92124,-75,40
Bismarck,USA,North Dakota,44485,-101,46
Harrisburg,USA,Pennsylvania,53264,-77,40
Pierre,USA,South Dakota,11973,-100,44
Nashville,USA,Tennessee,455657,-86,36
Montpelier,USA,Vermont,8241,-72,44
Olympia,USA,Washington,27447,-123,47
Charleston,USA,West Virginia,63968,-82,38
Cheyenne,USA,Wyoming,47283,-105,41
Hilo,USA,Hawaii,,-165,20
Savannah,USA,Georgia,136262,-81,32
Juneau,USA,Alaska,19528,-135,58
Albany,USA,New York,103564,-74,43
Cleveland,USA,Ohio,498246,,
Norfolk,USA,Virginia,233430,-76,37
Quebec,CDN,Quebec,167517,-71,47
San Jose,USA,California,838744,-122,37
Santa Ana,USA,California,302419,-118,34
New York,USA,New York,7380906,-74,40
Washington,USA,Distr. Columbia,543213,-77,39
Santa Fe,USA,New Mexico,48899,-106,35
Nurnberg,D,Bayern,495845,,
\.

---Filling table country :

COPY country FROM STDIN csv;
Albania,AL,Tirane,Albania,28750,3249136
Greece,GR,Athens,Greece,131940,10538594
Macedonia,MK,Skopje,Macedonia,25333,2104035
Serbia and Montenegro,YU,Belgrade,Serbia and Montenegro,102350,10614558
Andorra,AND,Andorra la Vella,Andorra,450,72766
France,F,Paris,Ile de France,547030,58317450
Spain,E,Madrid,Madrid,504750,39181114
Austria,A,Vienna,Vienna,83850,8023244
Czech Republic,CZ,Prague,Praha,78703,10321120
Germany,D,Berlin,Berlin,356910,83536115
Hungary,H,Budapest,Budapest (munic.),93030,10002541
Italy,I,Rome,Lazio,301230,57460274
Liechtenstein,FL,Vaduz,Liechtenstein,160,31122
Slovakia,SK,Bratislava,Slovakia,48845,5374362
Slovenia,SLO,Ljubljana,Slovenia,20256,1951443
Switzerland,CH,Bern,BE,41290,7207060
Belarus,BY,Minsk,Belarus,207600,10415973
Latvia,LV,Riga,Latvia,64100,2468982
Lithuania,LT,Vilnius,Lithuania,65200,3646041
Poland,PL,Warsaw,Warszwaskie,312683,38642565
Ukraine,UA,Kiev,Kyyivska,603700,50864009
Russia,R,Moscow,Moskva,17075200,148178487
Belgium,B,Brussels,Brabant,30510,10170241
Luxembourg,L,Luxembourg,Luxembourg,2586,415870
Netherlands,NL,Amsterdam,Noord Holland,37330,15568034
Bosnia and Herzegovina,BIH,Sarajevo,Bosnia and Herzegovina,51233,2656240
Croatia,HR,Zagreb,Croatia,56538,5004112
Bulgaria,BG,Sofia,Bulgaria,110910,8612757
Romania,RO,Bucharest,Bucuresti,237500,21657162
Turkey,TR,Ankara,Ankara,780580,62484478
Denmark,DK,Copenhagen,Denmark,43070,5249632
Estonia,EW,Tallinn,Estonia,45100,1459428
Finland,SF,Helsinki,Uusimaa,337030,5105230
Norway,N,Oslo,Oslo,324220,4383807
Sweden,S,Stockholm,Stockholm,449964,8900954
Monaco,MC,Monaco,Monaco,2,31719
Holy See,V,Vatican City,Holy See,0,840
Iceland,IS,Reykjavik,Iceland,103000,270292
Ireland,IRL,Dublin,Ireland,70280,3566833
San Marino,RSM,San Marino,San Marino,60,24521
Malta,M,Valletta,Malta,320,375576
Moldova,MD,Chisinau,Moldova,33700,4463847
Portugal,P,Lisbon,Lisbon,92080,9865114
United Kingdom,GB,London,Greater London,244820,58489975
Afghanistan,AFG,Kabul,Afghanistan,647500,22664136
China,TJ,Beijing,Beijing (munic.),9596960,1210004956
Iran,IR,Tehran,Tehran,1648000,66094264
Pakistan,PK,Islamabad,Pakistan,803940,129275660
Tajikistan,TAD,Dushanbe,Dushanbe (munic.),143100,5916373
Turkmenistan,TM,Ashgabat,Ahal,488100,4149283
Uzbekistan,UZB,Tashkent,Toshkent,447400,23418381
Armenia,ARM,Yerevan,Armenia,29800,3463574
Georgia,GE,Tbilisi,Georgia,69700,5219810
Azerbaijan,AZ,Baku,Azerbaijan,86600,7676953
Bahrain,BRN,Manama,Bahrain,620,590042
Bangladesh,BD,Dhaka,Bangladesh,144000,123062800
Burma,MYA,Rangoon,Yangon,678500,45975625
India,IND,New Delhi,Delhi,3287590,952107694
Bhutan,BHT,Thimphu,Bhutan,47000,1822625
Brunei,BRU,Bandar Seri Begawan,Brunei,5770,299939
Malaysia,MAL,Kuala Lumpur,Fed. Terr. of Kuala Lumpur,329750,19962893
Laos,LAO,Vientiane,Laos,236800,4975772
Thailand,THA,Bangkok,Thailand,514000,58851357
Cambodia,K,Phnom Penh,Cambodia,181040,10861218
Vietnam,VN,Hanoi,Vietnam,329560,73976973
Kazakstan,KAZ,Almaty,Almaty (munic.),2717300,16916463
North Korea,NOK,Pyongyang,North Korea,120540,23904124
Kyrgyzstan,KGZ,Bishkek,Kyrgyzstan,198500,4529648
Mongolia,MNG,Ulaanbaatar,Mongolia,1565000,2496617
Nepal,NEP,Kathmandu,Nepal,140800,22094033
Cyprus,CY,Nicosia,Cyprus,9250,744609
Israel,IL,Jerusalem,Central,20770,5421995
Egypt,ET,Cairo,El Qahira (munic.),1001450,63575107
Indonesia,RI,Jakarta,Indonesia,1919440,206611600
Papua New Guinea,PNG,Port Moresby,Papua New Guinea,461690,4394537
Iraq,IRQ,Baghdad,Baghdad,437072,21422292
Jordan,JOR,Amman,Jordan,89213,4212152
Kuwait,KWT,Kuwait,Kuwait,17820,1950047
Saudi Arabia,SA,Riyadh,Saudi Arabia,1960582,19409058
Syria,SYR,Damascus,Syria,185180,15608648
Lebanon,RL,Beirut,Lebanon,10400,3776317
Japan,J,Tokyo,Tokyo,377835,125449703
South Korea,ROK,Seoul,South Korea,98480,45482291
Maldives,MV,Male,Maldives,300,270758
Oman,OM,Muscat,Oman,212460,2186548
United Arab Emirates,UAE,Abu Dhabi,United Arab Emirates,75581,3057337
Yemen,YE,Sanaa,Yemen,527970,13483178
Philippines,RP,Manila,Philippines,300000,74480848
Qatar,Q,Doha,Qatar,11000,547761
Singapore,SGP,Singapore,Singapore,633,3396924
Sri Lanka,CL,Colombo,Sri Lanka,65610,18553074
Taiwan,RC,Taipei,Taiwan,35980,21465881
Antigua and Barbuda,AG,Saint Johns,Antigua and Barbuda,440,65647
Bahamas,BS,Nassau,Bahamas,13940,259367
Barbados,BDS,Bridgetown,Barbados,430,257030
Belize,BZ,Belmopan,Belize,22960,219296
Guatemala,GCA,Guatemala City,Guatemala,108890,11277614
Mexico,MEX,Mexico City,Distrito Federal,1972550,95772462
Canada,CDN,Ottawa,Ontario,9976140,28820671
United States,USA,Washington,Distr. Columbia,9372610,266476278
Costa Rica,CR,San Jose,San Jose,51100,3463083
Nicaragua,NIC,Managua,Nicaragua,129494,4272352
Panama,PA,Panama City,Panama,78200,2655094
Cuba,C,Havana,Ciudad de la Habana,110860,10951334
Dominica,WD,Roseau,Dominica,750,82926
Dominican Republic,DOM,Santo Domingo,Dominican Republic,48730,8088881
Haiti,RH,Port-au-Prince,Haiti,27750,6731539
El Salvador,ES,San Salvador,El Salvador,21040,5828987
Honduras,HCA,Tegucigalpa,Francisco Morazan,112090,5605193
Grenada,WG,Saint Georges,Grenada,340,94961
Jamaica,JA,Kingston,Jamaica,10990,2595275
Colombia,CO,Bogota,"Santa Fe de Bogota, DC",1138910,36813161
Saint Kitts and Nevis,KN,Basseterre,Saint Kitts and Nevis,269,41369
Saint Lucia,WL,Castries,Saint Lucia,620,157862
Saint Vincent and the Grenadines,WV,Kingstown,Saint Vincent and the Grenadines,340,118344
Trinidad and Tobago,TT,Port-of-Spain,Trinidad and Tobago,5130,1272385
Australia,AUS,Canberra,Australia Capital Territory,7686850,18260863
Fiji,FJI,Suva,Fiji,18270,782381
Kiribati,KIR,Tarawa,Kiribati,717,80919
Marshall Islands,MH,Majuro,Marshall Islands,181,58363
Micronesia,FSM,Kolonia,Micronesia,702,125377
Nauru,NAU,Yaren,Nauru,21,10273
New Caledonia,NCA,Noumea,New Caledonia,19060,187784
New Zealand,NZ,Wellington,New Zealand,268680,3547983
Palau,PAL,Koror,Palau,458,16952
Solomon Islands,SLB,Honiara,Solomon Islands,28450,412902
Tonga,TO,Nukualofa,Tonga,748,106466
Tuvalu,TUV,Funafuti,Tuvalu,26,10146
Vanuatu,VU,Port-Vila,Vanuatu,14760,177504
Western Samoa,WS,Apia,Western Samoa,2860,214384
Argentina,RA,Buenos Aires,Distrito Federal,2766890,34672997
Bolivia,BOL,La Paz,Bolivia,1098580,7165257
Brazil,BR,Brasilia,Distrito Federal,8511965,162661214
Chile,RCH,Santiago,Chile,756950,14333258
Paraguay,PY,Asuncion,Paraguay,406750,5504146
Uruguay,ROU,Montevideo,Uruguay,176220,3238952
Peru,PE,Lima,Lima,1285220,24523408
French Guiana,FGU,Cayenne,French Guiana,91000,151187
Guyana,GUY,Georgetown,Guyana,214970,712091
Suriname,SME,Paramaribo,Suriname,163270,436418
Venezuela,YV,Caracas,Distrito Federal,912050,21983188
Ecuador,EC,Quito,Ecuador,283560,11466291
Algeria,DZ,Algiers,Algeria,2381740,29183032
Libya,LAR,Tripoli,Libya,1759540,5445436
Mali,RMM,Bamako,Mali,1240000,9653261
Mauritania,RIM,Nouakchott,Mauritania,1030700,2336048
Morocco,MA,Rabat,Morocco,446550,29779156
Niger,RN,Niamey,Niger,1267000,9113001
Tunisia,TN,Tunis,Tunisia,163610,9019687
Western Sahara,WSA,El Alaiun,Western Sahara,266000,222631
Angola,ANG,Luanda,Luanda,1246700,10342899
Congo,RCB,Brazzaville,Congo,342000,2527841
Namibia,NAM,Windhoek,Namibia,825418,1677243
Zaire,ZRE,Kinshasa,Kinshasa,2345410,46498539
Zambia,Z,Lusaka,Lusaka,752610,9159072
Benin,BEN,Porto-Novo,Benin,112620,5709529
Burkina Faso,BF,Ouagadougou,Burkina Faso,274200,10623323
Nigeria,WAN,Abuja,Nigeria,923770,103912489
Togo,RT,Lome,Togo,56790,4570530
Botswana,RB,Gaborone,Botswana,600370,1477630
South Africa,RSA,Pretoria,South Africa,1219912,41743459
Zimbabwe,ZW,Harare,Zimbabwe,390580,11271314
Cote dIvoire,CI,Yamoussoukro,Cote dIvoire,322460,14762445
Ghana,GH,Accra,Ghana,238540,17698271
Burundi,BI,Bujumbura,Burundi,27830,5943057
Rwanda,RWA,Kigali,Rwanda,26340,6853359
Tanzania,EAT,Dar es Salaam,Daressalam,945090,29058470
Cameroon,CAM,Yaounde,Centre,475440,14261557
Central African Republic,RCA,Bangui,Central African Republic,622980,3274426
Chad,TCH,NDjamena,Chad,1284000,6976845
Equatorial Guinea,GQ,Malabo,Equatorial Guinea,28050,431282
Gabon,G,Libreville,Gabon,267670,1172798
Cape Verde,CV,Praia,Cape Verde,4030,449066
Sudan,SUD,Khartoum,al Khartum,2505810,31547543
Comoros,COM,Moroni,Comoros,2170,569237
Guinea,RG,Conakry,Guinea,245860,7411981
Liberia,LB,Monrovia,Liberia,111370,2109789
Djibouti,DJI,Djibouti,Djibouti,22000,427642
Eritrea,ER,Asmara,Eritrea,121320,3427883
Ethiopia,ETH,Addis Ababa,Ethiopia,1127127,57171662
Somalia,SP,Mogadishu,Somalia,637660,9639151
Kenya,EAK,Nairobi,Nairobi,582650,28176686
Gambia,WAG,Banjul,Gambia,11300,1204984
Senegal,SN,Dakar,Dakar,196190,9092749
Guinea-Bissau,GNB,Bissau,Guinea-Bissau,36120,1151330
Sierra Leone,WAL,Freetown,Sierra Leone,71740,4793121
Uganda,EAU,Kampala,Uganda,236040,20158176
Lesotho,LS,Maseru,Lesotho,30350,1970781
Madagascar,RM,Antananarivo,Antananarivo,587040,13670507
Malawi,MW,Lilongwe,Malawi,118480,9452844
Mozambique,MOC,Maputo,Maputo (munic.),801590,17877927
Mauritius,MS,Port Louis,Mauritius,1860,1140256
Swaziland,SD,Mbabane,Swaziland,17360,998730
Sao Tome and Principe,STP,Sao Tome,Sao Tome and Principe,960,144128
Seychelles,SY,Victoria,Seychelles,455,77575
\.

---Filling table economy :

COPY economy FROM STDIN csv;
AL,4100,55,,,16
GR,101700,12,22,66,8
MK,1900,24,44,32,15
YU,20600,,,,20
AND,1000,,,,
F,1173000,2,27,71,2
E,565000,4,34,63,4
A,152000,2,34,64,2
CZ,106200,6,41,54,9
D,1452200,1,34,65,
H,72500,7,38,55,28
I,1088600,3,32,66,5
FL,630,,,,5
SK,39000,7,48,46,8
SLO,22600,5,40,55,8
CH,158500,3,34,64,2
BY,49200,21,49,30,244
LV,14700,9,31,60,20
LT,13300,20,42,38,35
PL,226700,7,38,55,22
UA,174600,31,43,26,9
R,796000,6,41,53,7
B,197000,2,28,70,2
L,10000,1,34,65,4
NL,301900,3,27,70,2
BIH,1000,,,,
HR,20100,13,31,57,4
BG,43200,12,36,52,35
RO,105700,20,36,44,25
TR,345700,16,33,51,94
DK,112800,3,24,74,2
EW,12300,10,37,53,29
SF,92400,5,28,67,2
N,106200,3,35,62,3
S,177300,2,27,71,3
MC,788,,,,
V,,,,,
IS,5000,10,22,68,3
IRL,54600,7,35,58,3
RSM,380,,,,6
M,4400,,,,5
MD,10400,33,36,31,24
P,116200,6,36,58,5
GB,1138400,2,28,71,3
AFG,12800,65,15,20,
TJ,3500000,19,48,33,10
IR,323500,21,37,42,60
PK,274200,24,27,49,13
TAD,6400,,,,28
TM,11500,33,33,34,25
UZB,54700,,,,8
ARM,9100,57,36,7,32
GE,6200,70,10,19,2
AZ,11500,,,,85
BRN,7300,,,,3
BD,144500,,,,5
MYA,47000,60,10,30,38
IND,1408700,,,,9
BHT,1300,,,,9
BRU,4600,3,42,55,2
MAL,193600,8,25,67,5
LAO,5200,50,17,33,20
THA,416700,10,31,59,6
K,7000,52,14,35,6
VN,97000,28,28,44,14
KAZ,46900,29,42,30,60
NOK,21500,25,60,15,
KGZ,5400,,,,32
MNG,4900,28,35,37,53
NEP,25200,49,18,32,7
CY,7800,6,25,70,
IL,80100,4,22,75,10
ET,171000,,,,9
RI,710900,17,33,50,9
PNG,10200,,,,15
IRQ,41100,,,,
JOR,19300,11,25,64,3
KWT,30800,0,55,45,5
SA,189300,9,50,41,5
SYR,91200,30,25,45,15
RL,18300,13,28,59,9
J,2679200,2,40,58,0
ROK,590700,8,45,47,4
MV,390,22,15,63,17
OM,19100,3,60,37,-1
UAE,70100,2,55,43,5
YE,37100,21,24,55,71
RP,179700,22,30,48,8
Q,10700,1,50,49,3
SGP,66100,,28,72,2
CL,65600,24,24,52,8
RC,290500,4,37,59,4
AG,425,4,19,77,4
BS,4800,3,35,62,2
BDS,2500,6,39,54,2
BZ,575,30,,,2
GCA,36700,25,20,55,9
MEX,721400,9,28,63,52
CDN,694000,2,26,72,2
USA,7247700,2,23,75,3
CR,18400,,,,23
NIC,7100,,,,11
PA,13600,10,16,74,1
C,14700,7,30,63,
WD,200,26,,,0
DOM,26800,13,32,55,10
RH,6500,35,23,42,15
ES,11400,,,,11
HCA,10800,30,20,50,30
WG,284,10,40,50,3
JA,8200,8,28,64,26
CO,192500,22,29,50,20
KN,220,6,36,58,-1
WL,640,14,17,69,1
WV,240,24,33,43,0
TT,16200,5,45,51,5
AUS,405400,3,28,69,5
FJI,4700,22,17,61,2
KIR,68,,,,6
MH,94,,,,4
FSM,205,,,,4
NAU,100,,,,-4
NCA,1500,5,35,60,1
NZ,62300,7,26,67,2
PAL,82,,,,
SLB,1000,,,,13
TO,228,40,,,3
TUV,8,,,,3
VU,210,,,,7
WS,415,50,,,18
RA,278500,6,31,63,2
BOL,20000,,,,12
BR,976800,16,25,59,23
RCH,113200,7,36,56,8
PY,17000,26,26,49,11
ROU,24400,11,28,62,35
PE,87000,,,,10
FGU,800,,,,3
GUY,1600,27,28,46,8
SME,1300,22,24,55,62
YV,195500,5,41,54,57
EC,44600,13,39,48,25
DZ,108700,12,50,38,28
LAR,32900,,,,25
RMM,5400,42,15,42,8
RIM,2800,27,30,43,4
MA,87400,14,32,54,5
RN,5500,39,18,44,36
TN,37100,15,30,55,6
WSA,,,,,
ANG,7400,12,56,32,20
RCB,7700,11,35,53,61
NAM,5800,,,,11
ZRE,16500,,,,12
Z,8900,32,22,46,55
BEN,7600,37,13,51,55
BF,7400,32,24,44,5
WAN,135900,38,22,40,57
RT,4100,49,18,33,9
RB,4500,5,,,10
RSA,215000,,,,9
ZW,18100,18,35,46,26
CI,21900,37,24,39,10
GH,25100,47,16,37,69
BI,4000,54,17,29,10
RWA,3800,52,13,35,64
EAT,23100,58,8,34,25
CAM,16500,29,24,47,48
RCA,2500,50,14,36,45
TCH,3300,49,17,34,41
GQ,325,47,26,27,41
G,6000,8,45,47,15
CV,440,13,17,70,5
SUD,25000,33,17,50,66
COM,370,,,,15
RG,6500,24,31,45,4
LB,2300,,,,50
DJI,500,3,21,76,6
ER,2000,,,,10
ETH,24200,48,15,37,10
SP,3600,,,,
EAK,36800,27,19,54,2
WAG,1100,27,15,58,2
SN,14500,,,,6
GNB,1000,44,8,48,15
WAL,4400,40,17,43,24
EAU,16800,55,12,33,6
LS,2800,10,49,41,10
RM,11400,35,15,50,35
MW,6900,31,14,55,83
MOC,12200,33,12,55,50
MS,10900,,,,9
SD,3600,25,40,35,15
STP,138,28,14,58,38
SY,430,,,,4
\.

---Filling table ethnic_group :

COPY ethnic_group FROM STDIN csv;
AL,Greeks,3
AL,Albanian,95
GR,Greek,98
MK,Albanian,22
MK,Serb,2
MK,Macedonian,65
MK,Turkish,4
MK,Gypsies,3
YU,Serbs,63
YU,Albanians,14
YU,Montenegrins,6
YU,Hungarians,4
AND,French,6
AND,Spanish,61
AND,Andorran,30
E,Mediterranean Nordic,100
A,German,99
A,Slovene,0
A,Croatian,0
CZ,German,1
CZ,Polish,1
CZ,Gypsy,0
CZ,Hungarian,0
CZ,Czech,94
CZ,Slovak,3
D,Greeks,0
D,Turkish,2
D,German,95
D,Italians,1
D,Poles,0
H,Serb,2
H,German,3
H,Gypsy,4
H,Hungarian,90
H,Slovak,1
H,Romanian,1
FL,Italian,5
FL,Alemannic,95
SK,German,0
SK,Polish,0
SK,Gypsy,2
SK,Hungarian,11
SK,Czech,1
SK,Slovak,86
SK,Ukrainian,0
SK,Ruthenian,0
SLO,Serb,2
SLO,Slovene,91
SLO,Muslim,1
SLO,Croat,3
BY,Polish,4
BY,Ukrainian,3
BY,Russian,13
BY,Byelorussian,78
LV,Polish,2
LV,Ukrainian,3
LV,Russian,34
LV,Byelorussian,5
LV,Latvian,52
LT,Polish,8
LT,Russian,9
LT,Byelorussian,2
LT,Lithuanian,80
PL,German,1
PL,Polish,98
PL,Ukrainian,1
PL,Byelorussian,1
UA,Ukrainian,73
UA,Russian,22
UA,Jewish,1
R,Ukrainian,3
R,Russian,82
R,Byelorussian,1
R,Tatar,4
R,Chuvash,1
R,Bashkir,1
R,Moldavian,1
B,Fleming,55
B,Walloon,33
NL,Dutch,96
BIH,Serb,40
BIH,Muslim,38
BIH,Croat,22
HR,Serb,12
HR,Hungarian,1
HR,Muslim,1
HR,Croat,78
HR,Slovenian,1
BG,Macedonian,3
BG,Gypsy,3
BG,Russian,0
BG,Turk,9
BG,Bulgarian,85
BG,Armenian,0
RO,Serb,
RO,German,0
RO,Gypsy,2
RO,Hungarian,9
RO,Romanian,89
RO,Ukrainian,
RO,Croat,
RO,Russian,
RO,Turk,
TR,Turkish,80
TR,Kurdish,20
EW,Ukrainian,3
EW,Russian,30
EW,Byelorussian,2
EW,Finn,1
EW,Estonian,62
S,foreign-born first-generation,12
MC,French,47
MC,Italian,16
MC,Monegasque,16
IS,Norwegians Celts,100
MD,Ukrainian,14
MD,Russian,13
MD,Jewish,2
MD,Bulgarian,2
MD,Gagauz,4
MD,Moldavian/Romanian,65
GB,English,82
GB,West Indian,
GB,Indian,
GB,Pakistani,
GB,Irish,2
GB,Welsh,2
GB,Scottish,10
GB,Ulster,2
AFG,Tajik,25
AFG,Pashtun,38
AFG,Uzbek,6
AFG,Hazara,19
TJ,Han Chinese,92
IR,Arab,3
IR,Persian,51
IR,Baloch,2
IR,Azerbaijani,24
IR,Kurd,7
IR,Lur,2
IR,Turkmen,2
IR,Gilaki Mazandarani,8
TAD,Russian,4
TAD,Tajik,65
TAD,Uzbek,25
TM,Russian,10
TM,Uzbek,9
TM,Turkmen,73
TM,Kazak,2
UZB,Russian,8
UZB,Tatar,2
UZB,Tajik,5
UZB,Uzbek,71
UZB,Kazak,4
UZB,Karakalpak,2
ARM,Russian,2
ARM,Armenian,93
ARM,Azeri,3
GE,Russian,6
GE,Armenian,8
GE,Azeri,6
GE,Georgian,70
GE,Ossetian,3
GE,Abkhaz,2
AZ,Russian,3
AZ,Armenian,2
AZ,Azeri,90
AZ,Dagestani Peoples,3
BRN,Arab,10
BRN,Asian,13
BRN,Bahraini,63
BRN,Iranian,8
BD,Bengali,98
MYA,Indian,2
MYA,Chinese,3
MYA,Burman,68
MYA,Shan,9
MYA,Karen,7
MYA,Rakhine,4
MYA,Mon,2
IND,Dravidian,25
IND,Indo-Aryan,72
IND,Mongoloid,3
BHT,Bhote,50
BHT,Nepalese,35
BRU,Chinese,20
BRU,Malay,64
MAL,Indian,9
MAL,Chinese,32
MAL,Malay,59
LAO,Lao Loum,68
LAO,Lao Theung,22
LAO,Lao Soung Hmong Yao,9
LAO,Vietnamese/Chinese,1
THA,Chinese,14
THA,Thai,75
K,Chinese,1
K,Khmer,90
K,Vietnamese,5
VN,Man,
VN,Chinese,3
VN,Thai,
VN,Khmer,
VN,Vietnamese,85
VN,Muong,
VN,Meo,
VN,Cham,
KAZ,German,5
KAZ,Ukrainian,5
KAZ,Russian,37
KAZ,Tatar,2
KAZ,Uzbek,2
KAZ,Kazak,42
KGZ,German,2
KGZ,Ukrainian,3
KGZ,Russian,22
KGZ,Uzbek,13
KGZ,Kirghiz,52
MNG,Russian,2
MNG,Kazak,4
MNG,Chinese,2
MNG,Mongol,90
IL,Jewish,82
IL,non-Jewish,18
ET,Greek,
ET,Armenian,
ET,European,1
ET,Nubian,
ET,Eastern Hamitic,99
RI,Javanese,45
RI,Sundanese,14
RI,Madurese,8
RI,Malays,8
IRQ,Kurdish,15
IRQ,Arab,75
IRQ,Turkoman,
IRQ,Assyrian,5
JOR,Armenian,1
JOR,Arab,98
JOR,Circassian,1
KWT,Arab,35
KWT,Iranian,4
KWT,South Asian,9
KWT,Kuwaiti,45
SA,Arab,90
SA,Afro-Asian,10
SYR,Arab,90
RL,Armenian,4
RL,Arab,95
J,Japanese,99
UAE,South Asian,50
UAE,Emiri,19
UAE,Arab Iranian,23
RP,Chinese,2
RP,Christian Malay,92
RP,Muslim Malay,4
Q,Indian,18
Q,Pakistani,18
Q,Arab,40
Q,Iranian,10
SGP,Indian,6
SGP,Chinese,76
SGP,Malay,15
CL,Malay,
CL,Sinhalese,74
CL,Burgher,
CL,Tamil,18
CL,Moor,7
CL,Vedda,1
RC,Chinese,14
RC,Taiwanese,84
BDS,European,4
BDS,African,80
BZ,Creole,30
BZ,Garifuna,7
BZ,Maya,11
GCA,Mestizo - Amerindian-Spanish,56
GCA,Amerindian Amerindian,44
MEX,Amerindian Amerindian,30
MEX,Caucasian Caucasian,9
CDN,French,27
CDN,Asian,12
CDN,European,20
CDN,British Isles,40
CDN,Indian Eskimo,2
USA,Asian,3
USA,Native American,1
CR,Indian,1
CR,Chinese,1
NIC,Indian,5
PA,West Indian,14
PA,Indian,6
C,Chinese,1
WD,Carib Indians,100
RH,European,5
ES,Indian,5
HCA,Indian,7
WG,African,100
JA,African,76
JA,Afro-European,15
JA,East Indian Afro-East Indian,3
JA,Chinese Afro-Chinese,1
CO,Indian,1
CO,black-Indian,3
KN,African,100
WL,African,90
WL,East Indian,3
TT,Chinese,1
TT,East Indian,40
AUS,Asian,4
AUS,Caucasian,95
FJI,Indian,46
FJI,Chinese,
FJI,European,
FJI,Pacific Islanders,
FJI,Fijian,49
KIR,Micronesian,100
MH,Micronesian,100
FSM,Micronesian Polynesian,100
NAU,Chinese,8
NAU,European,8
NAU,Nauruan,58
NAU,Pacific Islander,26
NCA,Vietnamese,2
NCA,European,37
NCA,Polynesian,4
NCA,Melanesian,43
NCA,Wallisian,8
NCA,Indonesian,4
NZ,European,88
NZ,Pacific Islander,3
NZ,Maori,9
SLB,Chinese,0
SLB,European,1
SLB,Polynesian,4
SLB,Micronesian,2
SLB,Melanesian,93
TUV,Polynesian,96
VU,French,4
VU,Chinese,
VU,Vietnamese,
VU,Pacific Islanders,
VU,Melanesian,94
WS,Europeans,0
WS,Samoan,93
WS,Euronesians,7
RA,Indian,100
BOL,European,5
BOL,Quechua,30
BOL,Aymara,25
BR,African,44
RCH,Indian,3
RCH,European European-Indian,95
PY,Amerindians,5
PE,Indian,45
FGU,Amerindian,12
GUY,East Indian,51
GUY,Amerindian,4
GUY,European Chinese,2
SME,Chinese,2
SME,Javanese,15
SME,Creole,31
SME,Europeans,1
SME,Amerindian,3
SME,Hindustani,37
SME,Bush Black,
YV,Amerindian,2
EC,Spanish,10
EC,Indian,25
DZ,European,1
DZ,Arab-Berber,99
LAR,Berber Arab,97
RMM,Mande,50
RMM,Peul,17
RMM,Voltaic,12
RMM,Songhai,6
RMM,Tuareg Moor,10
RIM,Maur,30
RIM,Maur/black,40
MA,Jewish,0
MA,Arab-Berber,99
RN,French,
RN,Arab,
RN,Toubou,
RN,Fula,9
RN,Hausa,56
RN,Djerma,22
RN,Tuareg,8
RN,Beri Beri,4
RN,Gourmantche,1
TN,Jewish,1
TN,European,1
TN,Arab-Berber,98
ANG,European,1
ANG,Ovimbundu,37
ANG,Kimbundu,25
ANG,Bakongo,13
ZRE,Mangbetu-Azande,45
Z,European,1
Z,African,99
BEN,African,99
BF,Mossi,24
WAN,non-Africans 27000,100
RT,African,99
RT,European Syrian-Lebanese,1
RB,Kalanga,
RB,Basarwa,
RB,Batswana,95
RB,Kgalagadi,4
RSA,Indian,3
RSA,Colored,9
ZW,Asian,1
ZW,African,98
CI,Agni,
CI,Malinke,11
CI,Baoule,23
CI,Bete,18
CI,Senoufou,15
CI,Africans,
CI,non-Africans 330000,
GH,European,0
GH,African,100
RWA,Hutu,80
RWA,Tutsi,19
RWA,Twa,1
CAM,African,13
CAM,Fulani,10
CAM,Cameroon Highlanders,31
CAM,Equatorial Bantu,19
CAM,Kirdi,11
CAM,Northwestern Bantu,8
CAM,Eastern Nigritic,7
CAM,non-African,1
RCA,Europeans 6500,
RCA,Baya,34
RCA,Banda,27
RCA,Sara,10
RCA,Mandjia,21
RCA,Mboum,4
RCA,MBaka,4
CV,European,1
CV,African,28
CV,Creole,71
SUD,Arab,39
SUD,Beja,6
RG,Malinke,30
RG,Peuhl,40
RG,Soussou,20
LB,African,95
LB,Americo-Liberians,5
DJI,French,
DJI,Italian,5
DJI,Arab,
DJI,Ethiopian,
DJI,Afar,35
DJI,Somali,60
ER,Afar,4
ER,Tigrinya,50
ER,Tigre Kunama,40
ER,Saho,3
ETH,Afar,4
ETH,Somali,6
ETH,Oromo,40
ETH,Sidamo,9
ETH,Shankella,6
ETH,Gurage,2
ETH,Amhara Tigrean,32
SP,Somali,85
EAK,Arab,1
EAK,Asian,
EAK,European,
EAK,Kikuyu,22
EAK,Luhya,14
EAK,Luo,13
EAK,Kalenjin,12
EAK,Kamba,11
EAK,Kisii,6
EAK,Meru,6
WAG,African,99
WAG,non-Gambian,1
SN,Fulani,17
SN,Wolof,36
SN,Diola,9
SN,Mandingo,9
SN,Serer,17
SN,Toucouleur,9
SN,European Lebanese,1
GNB,European,1
GNB,African,99
WAL,Asian,1
WAL,European,
WAL,African,99
WAL,Creole,
WAL,Lebanese,
EAU,Rwanda,6
EAU,Arab,1
EAU,Asian,
EAU,European,
EAU,Baganda,17
EAU,Karamojong,12
EAU,Basogo,8
EAU,Iteso,8
EAU,Langi,6
EAU,Bagisu,5
EAU,Acholi,4
EAU,Lugbara,4
EAU,Bunyoro,3
EAU,Batobo,3
LS,Sotho,100
MOC,Europeans,0
MOC,Indians,0
MOC,Euro-Africans,0
MS,Creole,27
MS,Indo-Mauritian,68
MS,Sino-Mauritian,3
MS,Franco-Mauritian,2
SD,European,3
SD,African,97
STP,Europeans,100
SY,Seychellois,100
\.

---Filling table geo_lake :

COPY geo_lake FROM STDIN csv;
Tschadsee,RN,Niger
Tschadsee,WAN,Nigeria
Tschadsee,TCH,Chad
Bodensee,A,Vorarlberg
Bodensee,D,Baden Wurttemberg
Bodensee,D,Bayern
Bodensee,CH,SG
Bodensee,CH,TG
Maelaren,S,Stockholm
Maelaren,S,Sodermanland
Maelaren,S,Uppsala
Maelaren,S,Vastmanland
Lake Nicaragua,NIC,Nicaragua
Lake Tanganjika,ZRE,Kivu
Lake Tanganjika,ZRE,Shaba
Lake Tanganjika,Z,Northern
Lake Tanganjika,BI,Burundi
Lake Tanganjika,EAT,Tabora
Lake Tanganjika,EAT,Mbeya
Lake Tanganjika,EAT,Kigoma
Lake Victoria,EAT,Kagera
Lake Victoria,EAT,Mwanza
Lake Victoria,EAT,Mara
Lake Victoria,EAK,Nyanza
Lake Victoria,EAK,Western
Lake Victoria,EAU,Uganda
Vaettern,S,Jonkoping
Vaettern,S,Orebro
Vaettern,S,Ostergotland
Vaettern,S,Skaraborg
Vaenern,S,Alvsborg
Vaenern,S,Skaraborg
Vaenern,S,Varmland
Lake Ontario,CDN,Ontario
Lake Ontario,USA,New York
Great Slave Lake,CDN,Northwest Territories
Lake Michigan,USA,Illinois
Lake Michigan,USA,Indiana
Lake Michigan,USA,Michigan
Lake Michigan,USA,Wisconsin
Lake Erie,CDN,Ontario
Lake Erie,USA,Michigan
Lake Erie,USA,New York
Lake Erie,USA,Ohio
Lake Erie,USA,Pennsylvania
Great Salt Lake,USA,Utah
Lake Maracaibo,YV,Merida
Lake Maracaibo,YV,Trujillo
Lake Maracaibo,YV,Zulia
Lake Kalla,SF,Kuopio
Lake Saima,SF,Kymi
Lake Saima,SF,Mikkeli
Paeijaenne,SF,Haeme
Paeijaenne,SF,Suomi
Lake Ori,SF,Pohjols-Karjala
Mjoesen,N,Hedmark
Mjoesen,N,Oppland
Lake Naesi,SF,Haeme
Lake Skutari,AL,Albania
Lake Skutari,YU,Serbia and Montenegro
Ozero Baikal,R,Rep. of Buryatiya
Ozero Baikal,R,Irkutskaya oblast
Ozero Aral,UZB,Qoraqalpoghiston
Ozero Aral,KAZ,Qyzylorda
Lake Prespa,AL,Albania
Lake Prespa,GR,Greece
Lake Ohrid,AL,Albania
Lake Ohrid,YU,Serbia and Montenegro
Ozero Ladoga,R,Rep. of Karelia
Ozero Ladoga,R,Leningradskaya oblast
Ozero Balchash,KAZ,Zhambyl
Ozero Balchash,KAZ,Zhezkazghan
Ozero Balchash,KAZ,Taldyqorghan
Ozero Balchash,KAZ,Almaty (munic.)
Ozero Onega,R,Rep. of Karelia
Ozero Onega,R,Vologodskaya oblast
Ozero Onega,R,Leningradskaya oblast
Ozero Taimyr,R,Krasnoyarskiy kray
Ozero Chanka,R,Primorsky kray
Ozero Chanka,TJ,Heilongjiang
Ozero Pskovskoje,R,Pskovskaya oblast
Ozero Pskovskoje,EW,Estonia
Ozero Tschany,R,Novosibirskaya oblast
Inari,SF,Lappia
Lago di Garda ,I,Lombardia
Lake Amadeus,AUS,Northern Territory
Disappointment-Lake,AUS,Western Australia
Lake Torren,AUS,South Australia
Lake Nasser,ET,El Bahr el Ahmar
Lake Nasser,ET,El Wadi el Jadid
Lake Nasser,ET,Aswan
Lake Nasser,SUD,ash Shamaliyah
Lake Volta,GH,Ghana
Lake Tana,ETH,Ethiopia
Lake Assale,ETH,Ethiopia
Lake Kainji,WAN,Nigeria
Lake Abaya,ETH,Ethiopia
Lake Stephanie,ETH,Ethiopia
Lake Suat,ETH,Ethiopia
Lake Rudolph,EAK,Eastern
Lake Rudolph,EAK,Rift Valley
Lake Albert,EAU,Uganda
Lake Kioga,EAU,Uganda
Lake Eduard,ZRE,Kivu
Lake Eduard,EAU,Uganda
Lake Kivu,ZRE,Kivu
Lake Kivu,RWA,Rwanda
Lake Rukwa,EAT,Tabora
Lake Rukwa,EAT,Mbeya
Lake Natron,EAT,Arusha
Lake Eyasi,EAT,Arusha
Lake Mweru,ZRE,Shaba
Lake Mweru,Z,Luapula
Lake Bangweulu,Z,Luapula
Lake Bangweulu,Z,Northern
Lake Nyasa,MW,Malawi
Lake Nyasa,MOC,Niassa
Lake Chilwa,MW,Malawi
Lake Cabora-Bassa,MOC,Tete
Lake Kariba,Z,Southern
Lake Kariba,ZW,Zimbabwe
Lake Ngami,RB,Botswana
Lake Etoscha,NAM,Namibia
Lake Makarikari,RB,Botswana
Issyk-Kul,KGZ,Kyrgyzstan
Arresee,DK,Denmark
Lake Titicaca,BOL,Bolivia
Lake Titicaca,PE,Puno
Lac Leman,F,Rhone Alpes
Lac Leman,CH,GE
Lac Leman,CH,VS
Lac Leman,CH,VD
Lago Maggiore,I,Lombardia
Lago Maggiore,CH,TI
Lago di Como,I,Lombardia
Lake Mackay,AUS,Northern Territory
Lake Mackay,AUS,Western Australia
Lake Eyre,AUS,South Australia
Lake Superior,CDN,Ontario
Lake Superior,USA,Michigan
Lake Superior,USA,Minnesota
Lake Superior,USA,Wisconsin
Lake Huron,CDN,Ontario
Lake Huron,USA,Michigan
Lake Okeechobee,USA,Florida
Kentucky Lake,USA,Kentucky
Kentucky Lake,USA,Tennessee
Chicamauga Lake,USA,Tennessee
Lake Winnipesaukee,USA,New Hampshire
Lake Tahoe,USA,California
Lake Tahoe,USA,Nevada
F.D.R. Lake,USA,Washington
Lake Powell,USA,Arizona
Lake Powell,USA,Utah
Lake Meade,USA,Arizona
Lake Meade,USA,Nevada
Lake Winnipeg,CDN,Manitoba
Lake Nipigon,CDN,Ontario
Lake Williston,CDN,British Columbia
Great Bear Lake,CDN,Northwest Territories
Lago de Chapala,MEX,Jalisco
Lake Urumiyeh,IR,Azarbayian e Gharbt
Lake Urumiyeh,IR,Azarbayian e Sharqi
Daryacheh ye Namak,IR,Tehran
Hamun e Jaz Murian,IR,Kerman
Hamun e Jaz Murian,IR,Sistan e Baluchestan
Barrage de Mbakaou,CAM,Adamaoua
\.

---Filling table geo_mountain :

COPY geo_mountain FROM STDIN csv;
Meru,EAT,Arusha
Kilimanjaro,EAT,Kilimanjaro
Cathkin Peak,RSA,South Africa
Kenia,EAK,Eastern
Jezerce,AL,Albania
Korab,AL,Albania
Korab,YU,Serbia and Montenegro
Kebnekaise,S,Norrbotten
Sarektjokko,S,Norrbotten
Portefjaellen,S,Norrbotten
Tarrekaise,S,Norrbotten
Sulitjelma,N,Nordland
Sulitjelma,S,Norrbotten
Galdhoeppig,N,Oppland
Jostedalsbre,N,Sogn og Fjordane
Glittertind,N,Oppland
Joekul,N,Hordaland
Snoehetta,N,Oppland
Pik Kommunizma,TAD,Badakhshoni Kuni
Pik Pobeda,TJ,Xinjiang Uygur
Pik Pobeda,KGZ,Kyrgyzstan
Pik Lenina,TAD,Badakhshoni Kuni
Pik Lenina,KGZ,Kyrgyzstan
Pik Chan-Tengri,KGZ,Kyrgyzstan
Pik Revoluzija,TAD,Badakhshoni Kuni
Pik Moskva,TAD,Badakhshoni Kuni
Elbrus,R,Kabardino Balkar Rep.
Kasbek,R,Rep. of North Ossetiya
Kasbek,GE,Georgia
Bjelucha,R,Rep. of Altay
Bjelucha,KAZ,Shyghys Qazaqstan
Oeraefajoekull,IS,Iceland
Snoefell,IS,Iceland
Haltiatunturi,SF,Lappia
Mauna Kea,USA,Hawaii
Mt McKinley,USA,Alaska
Humphreys Peak,USA,Arizona
Mt Whitney,USA,California
Mt Elbert,USA,Colorado
Borah Peak,USA,Idaho
Granite Peak,USA,Montana
Mt Washington,USA,New Hampshire
Boundary Peak,USA,Nevada
Mt Mitchell,USA,North Carolina
Mt Hood,USA,Oregon
Harney Peak,USA,South Dakota
Clingmans Dome,USA,Tennessee
Guadalupe Peak,USA,Texas
Kings Peak,USA,Utah
Mt Rainier,USA,Washington
Gannett Peak,USA,Wyoming
Mt Robson,CDN,British Columbia
Mt Aylmer,CDN,Alberta
Citlaltepetl,MEX,Puebla
Citlaltepetl,MEX,Veracruz
Popocatepetl,MEX,"Mexico, Estado de"
Popocatepetl,MEX,Morelos
Popocatepetl,MEX,Puebla
Nevado de Toluca,MEX,"Mexico, Estado de"
Nevado de Colima,MEX,Jalisco
Damavand,IR,Mazandaran
Sabalan,IR,Azarbayian e Sharqi
Tubhal,MA,Morocco
Djebel Aures,MA,Morocco
Tahat,DZ,Algeria
Emi Kussi,TCH,Chad
Jabal Marra,SUD,Darfur
Tamgak,RN,Niger
Ras Daschan,ETH,Ethiopia
Fako,CAM,Sudoueste
Mpika,Z,Northern
Mt-Grebun,RN,Niger
Fuji-Yama,J,Shizuoka
Fuji-Yama,J,Yamanashi
Hotaka-Dake,J,Nagano
Hotaka-Dake,J,Gifu
Mount Everest,TJ,Tibet
Mount Godwin Austen,TJ,Tibet
Tahan,MAL,Kelantan
Tahan,MAL,Pahang
Leuser,RI,Indonesia
Semeru,RI,Indonesia
Pulog,RP,Philippines
Kinabalu,RI,Indonesia
Mount Morrison,RC,Taiwan
Feldberg,D,Baden Wurttemberg
Brocken,D,Sachsen Anhalt
Grosser Arber,D,Bayern
Zugspitze,D,Bayern
Grossglockner,A,Carinthia
Montblanc,F,Rhone Alpes
Crap Sogn Gion,CH,GR
Aconcagua,RA,Mendoza
Blue Mountain Peak,JA,Jamaica
Huascaran,PE,Ancash
Chimborazo,EC,Ecuador
Pico Duarte,DOM,Dominican Republic
Illampu,BOL,Bolivia
Llullaillaco,RA,Tucuman
Llullaillaco,RCH,Chile
Mt. Kosciuszko,AUS,New South Wales
Mt. Bogong,AUS,Victoria
\.

---Filling table geo_river :

COPY geo_river FROM STDIN csv;
Paraguay,RA,Formosa
Paraguay,BR,Mato Grosso
Paraguay,PY,Paraguay
Uruguay,BR,Rio Grande do Sul
Uruguay,ROU,Uruguay
Niger,RMM,Mali
Niger,RN,Niger
Niger,WAN,Nigeria
Niger,RG,Guinea
Zaire,RCB,Congo
Zaire,ZRE,Bandundu
Zaire,ZRE,Bas Zaire
Zaire,ZRE,Equateur
Zaire,ZRE,Haut Zaire
Zaire,ZRE,Kinshasa
Gambia,RG,Guinea
Gambia,WAG,Gambia
Gambia,SN,Tambacounda
Senegal,RMM,Mali
Senegal,SN,Tambacounda
Arkansas,USA,Arkansas
Arkansas,USA,Colorado
Arkansas,USA,Kansas
Arkansas,USA,Oklahoma
Colorado,MEX,Baja California
Colorado,MEX,Sonora
Colorado,USA,Arizona
Colorado,USA,California
Colorado,USA,Colorado
Colorado,USA,Nevada
Colorado,USA,Utah
Mississippi,USA,Arkansas
Mississippi,USA,Illinois
Mississippi,USA,Iowa
Mississippi,USA,Kentucky
Mississippi,USA,Louisiana
Mississippi,USA,Minnesota
Mississippi,USA,Mississippi
Mississippi,USA,Missouri
Mississippi,USA,Tennessee
Mississippi,USA,Wisconsin
Missouri,USA,Iowa
Missouri,USA,Kansas
Missouri,USA,Missouri
Missouri,USA,Montana
Missouri,USA,Nebraska
Missouri,USA,North Dakota
Missouri,USA,South Dakota
Amazonas,CO,Amazonas
Amazonas,BR,Amapa
Amazonas,BR,Amazonas
Amazonas,BR,Para
Amazonas,PE,Loreto
Parana,RA,Buenos Aires
Parana,RA,Chaco
Parana,RA,Corrientes
Parana,RA,Entre Rios
Parana,RA,Misiones
Parana,RA,Santa Fe
Parana,BR,Goias
Parana,BR,Mato Grosso
Parana,BR,Parana
Cunene,ANG,Benguela
Cunene,ANG,Huambo
Cunene,ANG,Huila
Ruvuma,EAT,Mtwara
Ruvuma,EAT,Ruvuma
Ruvuma,MOC,Cabo Delgado
Ruvuma,MOC,Niassa
Rio Grande,MEX,Chiapas
Rio Grande,MEX,Coahuila
Rio Grande,MEX,Nuevo Leon
Rio Grande,MEX,Tamaulipas
Rio Grande,USA,Colorado
Rio Grande,USA,New Mexico
Rio Grande,USA,Texas
Oka,R,Vladimirskaya oblast
Oka,R,Kaluzhskaya oblast
Oka,R,Moskovskaya oblast
Oka,R,Orlovskaya oblast
Oka,R,Ryazanskaya oblast
Oka,R,Tulskaya oblast
Oka,R,Nizhegorodskaya oblast
Seine,F,Bourgogne
Seine,F,Haute Normandie
Seine,F,Ile de France
Donau,YU,Serbia and Montenegro
Donau,A,Vienna
Donau,A,Upper Austria
Donau,A,Lower Austria
Donau,D,Baden Wurttemberg
Donau,D,Bayern
Donau,H,Baranya
Donau,H,Bacs Kiskun
Donau,H,Fejer
Donau,H,Komarom Esztergom
Donau,H,Pest
Donau,H,Tolna
Donau,H,Budapest (munic.)
Donau,SK,Slovakia
Donau,BG,Bulgaria
Donau,RO,Calarasi
Donau,RO,Giurgiu
Donau,RO,Tulcea
Donau,RO,Braila
Donau,RO,Caras Severin
Donau,RO,Constanta
Donau,RO,Dolj
Donau,RO,Galati
Donau,RO,Ialomita
Donau,RO,Mehedinti
Donau,RO,Olt
Donau,RO,Teleorman
Western Dwina,BY,Belarus
Western Dwina,LV,Latvia
Western Dwina,R,Smolenskaya oblast
Western Dwina,R,Tverskaya oblast
Weichsel,PL,Warszwaskie
Weichsel,PL,Bielskie
Weichsel,PL,Bydgoskie
Weichsel,PL,Elblaskie
Weichsel,PL,Gdanskie
Weichsel,PL,Katowickie
Weichsel,PL,Kieleckie
Weichsel,PL,Krakowskie
Weichsel,PL,Lubelskie
Weichsel,PL,Plockie
Weichsel,PL,Radomskie
Weichsel,PL,Rzeszowskie
Weichsel,PL,Siedleckie
Weichsel,PL,Skierniewickie
Weichsel,PL,Tarnobrzeskie
Weichsel,PL,Tarnowskie
Weichsel,PL,Torunskie
Weichsel,PL,Wloclawskie
Dnepr,BY,Belarus
Dnepr,UA,Cherkaska
Dnepr,UA,Chernihivska
Dnepr,UA,Dnipropetrovska
Dnepr,UA,Khersonska
Dnepr,UA,Kyyivska
Dnepr,UA,Kirovohradska
Dnepr,UA,Poltavska
Dnepr,UA,Zaporizka
Dnepr,R,Smolenskaya oblast
Thames,GB,Greater London
Kura,TR,Artvin
Kura,TR,Kars
Kura,GE,Georgia
Kura,AZ,Azerbaijan
Rio de la Plata,RA,Buenos Aires
Rio de la Plata,RA,Distrito Federal
Rio de la Plata,ROU,Uruguay
Ubangi,ZRE,Equateur
Ubangi,RCA,Central African Republic
Schari,TCH,Chad
Nile,ET,Asyut
Nile,ET,Beni Suef
Nile,ET,El Giza
Nile,ET,El Minya
Nile,ET,El Qahira (munic.)
Nile,SUD,al Khartum
Nile,SUD,ash Shamaliyah
Loire,F,Auvergne
Loire,F,Centre
Loire,F,Pays de la Loire
Loire,F,Rhone Alpes
Garonne,F,Aquitaine
Garonne,F,Languedoc Rousillon
Garonne,F,Midi Pyrenees
Rhone,F,Languedoc Rousillon
Rhone,F,Rhone Alpes
Rhone,CH,GE
Rhone,CH,VD
Rhone,CH,VS
Weser,D,Bremen
Weser,D,Niedersachsen
Weser,D,Nordrhein Westfalen
Weser,D,Hessen
Aller,D,Niedersachsen
Leine,D,Niedersachsen
Leine,D,Thuringen
Werra,D,Hessen
Werra,D,Niedersachsen
Werra,D,Thuringen
Fulda,D,Hessen
Elbe,D,Hamburg
Elbe,D,Schleswig Holstein
Elbe,D,Niedersachsen
Elbe,D,Mecklenburg Vorpommern
Elbe,D,Brandenburg
Elbe,D,Sachsen Anhalt
Elbe,D,Sachsen
Elbe,CZ,Severocesky
Elbe,CZ,Praha
Elbe,CZ,Vychodocesky
Rhein,D,Baden Wurttemberg
Rhein,D,Hessen
Rhein,D,Nordrhein Westfalen
Rhein,D,Rheinland Pfalz
Rhein,CH,GR
Rhein,CH,AG
Rhein,CH,BS
Rhein,CH,BL
Rhein,CH,SG
Rhein,CH,SH
Rhein,CH,TG
Rhein,CH,ZH
Rhein,NL,Gelderland
Rhein,NL,Zuid Holland
Main,D,Hessen
Main,D,Bayern
Mosel,D,Rheinland Pfalz
Mosel,D,Saarland
Mosel,F,Lorraine
Neckar,D,Baden Wurttemberg
Tajo,P,Lisbon
Tajo,P,Santarem
Tajo,P,Castelo Branco
Tajo,P,Portalegre
Tajo,E,Estremadura
Tajo,E,Castile La Mancha
Goetaaelv,S,Alvsborg
Goetaaelv,S,Goteborg och Bohus
Goetaaelv,S,Skaraborg
Klaraelv,S,Varmland
Umeaelv,S,Vasterbotten
St. Lorenzstrom,CDN,Ontario
St. Lorenzstrom,CDN,Quebec
Hudson River,USA,New York
Connecticut River,USA,Connecticut
Connecticut River,USA,Massachusetts
Connecticut River,USA,New Hampshire
Connecticut River,USA,Vermont
Moldau,CZ,Jihocesky
Moldau,CZ,Praha
Ounasjoki,SF,Lappia
Kemijoki,SF,Lappia
Oulujoki,SF,Oulu
Kokemaeenjoki,SF,Turku-Pori
Northern Dwina,R,Arkhangelskaya oblast
Jenissej,R,Krasnoyarskiy kray
Volga,R,Ivanovskaya oblast
Volga,R,Kostromskaya oblast
Volga,R,Tverskaya oblast
Volga,R,Yaroslavskaya oblast
Volga,R,Rep. of Mariy El
Volga,R,Chuvash Republic
Volga,R,Nizhegorodskaya oblast
Volga,R,Rep. of Tatarstan
Volga,R,Astrakhanskaya oblast
Volga,R,Volgogradskaya oblast
Volga,R,Penzenskaya oblast
Volga,R,Samarskaya oblast
Volga,R,Saratovskaya oblast
Volga,R,Ulyanovskaya oblast
Casai,ANG,Lunda Norte
Casai,ANG,Lunda Sul
Casai,ANG,Moxico
Casai,ZRE,Bandundu
Casai,ZRE,Kasai Occidental
Casai,ZRE,Shaba
Kwa,ZRE,Bandundu
Cuilo,ANG,Bie
Cuilo,ANG,Moxico
Cuilo,ANG,Cuando Cubango
Cuilo,ZRE,Bandundu
Cuango,ANG,Uige
Cuango,ANG,Malanje
Cuango,ANG,Lunda Norte
Cuango,ANG,Lunda Sul
Cuango,ZRE,Bandundu
Cuango,ZRE,Bas Zaire
Cuanza,ANG,Luanda
Cuanza,ANG,Malanje
Cuanza,ANG,Bie
Cuanza,ANG,Cuanza Norte
Cuanza,ANG,Cuanza Sul
Zambezi,ANG,Moxico
Zambezi,Z,Central
Zambezi,Z,Western
Zambezi,Z,Northwestern
Zambezi,Z,Southern
Zambezi,MOC,Manica
Zambezi,MOC,Tete
Zambezi,MOC,Zambezia
Chire,MW,Malawi
Chire,MOC,Tete
Chire,MOC,Zambezia
Neva,R,Vologodskaya oblast
Neva,R,Leningradskaya oblast
White Drin,AL,Albania
White Drin,YU,Serbia and Montenegro
Drin,AL,Albania
Black Drin,AL,Albania
Black Drin,YU,Serbia and Montenegro
Thjorsa,IS,Iceland
Joekulsa a Fjoellum,IS,Iceland
Oesterdalaelv,S,Kopparberg
Dalaelv,S,Gavleborg
Dalaelv,S,Kopparberg
Dalaelv,S,Uppsala
Dalaelv,S,Vastmanland
Vaesterdalaelv,S,Kopparberg
Torneaelv,S,Norrbotten
Gloma,N,Akershus
Gloma,N,Oestfold
Gloma,N,Hedmark
Lena,R,Irkutskaya oblast
Lena,R,Rep. of Sakha
Ob,R,Altayskiy kray
Ob,R,Novosibirskaya oblast
Ob,R,Tomskaya oblast
Amur,R,Chitinskaya oblast
Amur,R,Yevreyskaya avt. oblast
Amur,R,Khabarovskiy kray
Amur,R,Amurskaya oblast
Petschora,R,Rep. of Komi
Petschora,R,Arkhangelskaya oblast
Kolyma,R,Murmanskaya oblast
Kolyma,R,Rep. of Sakha
Chatanga,R,Krasnoyarskiy kray
Bija,R,Rep. of Altay
Bija,R,Altayskiy kray
Katun,R,Rep. of Altay
Katun,R,Altayskiy kray
Irtysch,R,Omskaya oblast
Irtysch,R,Tyumenskaya oblast
Irtysch,KAZ,Pavlodar
Irtysch,KAZ,Semey
Irtysch,KAZ,Shyghys Qazaqstan
Tobol,R,Kurganskaya oblast
Tobol,R,Tyumenskaya oblast
Tobol,KAZ,Qostanay
Ischim,R,Omskaya oblast
Ischim,R,Tyumenskaya oblast
Ischim,KAZ,Qaraghandy
Schilka,R,Chitinskaya oblast
Argun,R,Chitinskaya oblast
Argun,TJ,Nei Monggol
Ingoda,R,Chitinskaya oblast
Onon,R,Chitinskaya oblast
Onon,MNG,Mongolia
Black Irtysch,TJ,Xinjiang Uygur
Black Irtysch,KAZ,Shyghys Qazaqstan
Grosser Jenissej,R,Rep. of Tyva
Kleiner Jenissej,R,Rep. of Tyva
Suchona,R,Vologodskaya oblast
Jug,R,Vologodskaya oblast
Amudarja,TAD,Khatlon
Amudarja,TM,Dashhowuz
Amudarja,TM,Leban
Amudarja,UZB,Samarqand
Amudarja,UZB,Qoraqalpoghiston
Pjandsh,AFG,Afghanistan
Pjandsh,TAD,Kulob
Pjandsh,TAD,Khatlon
Don,R,Tulskaya oblast
Don,R,Voronezhskaya oblast
Don,R,Lipetskaya oblast
Don,R,Volgogradskaya oblast
Don,R,Rostovskaya oblast
Syrdarja,KAZ,Qyzylorda
Ural,R,Rep. of Bashkortostan
Ural,R,Orenburgskaya oblast
Ural,KAZ,Atyrau
Ural,KAZ,Batys Qazaqstan
Kitakami,J,Iwate
Kitakami,J,Miyagi
Han,ROK,South Korea
Jangtse-Kiang,TJ,Anhui
Jangtse-Kiang,TJ,Hubei
Jangtse-Kiang,TJ,Jiangsu
Jangtse-Kiang,TJ,Sichuan
Jangtse-Kiang,TJ,Yunnan
Jangtse-Kiang,TJ,Tibet
Hwangho,TJ,Gansu
Hwangho,TJ,Henan
Hwangho,TJ,Qinghai
Hwangho,TJ,Shaanxi
Hwangho,TJ,Shandong
Hwangho,TJ,Nei Monggol
Hwangho,TJ,Ningxia Huizu
Mekong,TJ,Sichuan
Mekong,TJ,Yunnan
Mekong,TJ,Tibet
Mekong,LAO,Laos
Mekong,THA,Thailand
Mekong,K,Cambodia
Mekong,VN,Vietnam
Orinoco,YV,Amazonas
Orinoco,YV,Bolivar
Orinoco,YV,Anzoategui
Orinoco,YV,Apure
Orinoco,YV,Delta Amacuro
Orinoco,YV,Guarico
Orinoco,YV,Monagas
Columbia River,CDN,British Columbia
Columbia River,USA,Oregon
Columbia River,USA,Washington
Rio Balsas,MEX,Guerrero
Rio Balsas,MEX,Michoacan
Rio Balsas,MEX,Oaxaca
Rio Balsas,MEX,Puebla
Karun,IR,Boyer Ahmad e Kohkiluyeh
Karun,IR,Chahar Mahal e Bakhtiari
Karun,IR,Esfahan
Karun,IR,Khuzestan
Blue Nile,SUD,al Khartum
Blue Nile,SUD,al Wusta
Blue Nile,ETH,Ethiopia
White Nile,SUD,Aali an Nil
White Nile,SUD,al Khartum
White Nile,SUD,al Wusta
Atbara,SUD,ash Shamaliyah
Atbara,SUD,ash Sharqiyah
Atbara,ETH,Ethiopia
Bahr el-Gasal,SUD,Aali an Nil
Bahr el-Gasal,SUD,Bahr al Ghazal
Bahr el-Djebel,SUD,Aali an Nil
Bahr el-Djebel,SUD,Bahr al Ghazal
Bahr el-Djebel,SUD,al Istiwaiyah
Sobat,SUD,Aali an Nil
Sobat,ETH,Ethiopia
Pibor,SUD,Aali an Nil
Baro,ETH,Ethiopia
Djuba,ETH,Ethiopia
Djuba,SP,Somalia
Webi Schebeli,ETH,Ethiopia
Webi Schebeli,SP,Somalia
Bani,RMM,Mali
Bani,CI,Cote dIvoire
Volta,GH,Ghana
Benue,WAN,Nigeria
Benue,CAM,Nord
Sanaga,CAM,Centre
Sanaga,CAM,Est
Sanaga,CAM,Cote
Sanga,CAM,Est
Sanga,RCA,Central African Republic
Bomu,ZRE,Haut Zaire
Uelle,ZRE,Equateur
Uelle,ZRE,Haut Zaire
Lukuga,ZRE,Shaba
Luvua,ZRE,Shaba
Lomami,ZRE,Haut Zaire
Lomami,ZRE,Kasai Oriental
Lomami,ZRE,Kivu
Lomami,ZRE,Shaba
Ruki,ZRE,Equateur
Kafue,Z,Central
Kafue,Z,Copperbelt
Kafue,Z,Southern
Luangwa,Z,Central
Luangwa,Z,Eastern
Luangwa,Z,Northern
Tana,EAK,Central
Tana,EAK,Coast
Tana,EAK,Eastern
Tana,EAK,North Eastern
Rufiji,EAT,Morogoro
Rufiji,EAT,Pwani
Save,ZW,Zimbabwe
Save,MOC,Inhambane
Save,MOC,Gaza
Save,MOC,Sofala
Limpopo,RSA,South Africa
Limpopo,MOC,Gaza
Oranje,NAM,Namibia
Oranje,RSA,South Africa
Vaal,RSA,South Africa
Busira,ZRE,Equateur
Tshuapa,ZRE,Equateur
Tshuapa,ZRE,Kasai Oriental
\.

---Filling table geo_sea :

COPY geo_sea FROM STDIN csv;
Baltic Sea,D,Schleswig Holstein
Baltic Sea,D,Mecklenburg Vorpommern
Baltic Sea,PL,Elblaskie
Baltic Sea,PL,Gdanskie
Baltic Sea,PL,Koszalinskie
Baltic Sea,PL,Slupskie
Baltic Sea,PL,Szczecinskie
Baltic Sea,LT,Lithuania
Baltic Sea,LV,Latvia
Baltic Sea,EW,Estonia
Baltic Sea,R,Leningradskaya oblast
Baltic Sea,DK,Denmark
Baltic Sea,SF,Aland
Baltic Sea,SF,Kymi
Baltic Sea,SF,Lappia
Baltic Sea,SF,Oulu
Baltic Sea,SF,Turku-Pori
Baltic Sea,SF,Uusimaa
Baltic Sea,SF,Vaasa
Baltic Sea,S,Stockholm
Baltic Sea,S,Kalmar
Baltic Sea,S,Kristianstad
Baltic Sea,S,Blekinge
Baltic Sea,S,Gavleborg
Baltic Sea,S,Gotland
Baltic Sea,S,Malmohus
Baltic Sea,S,Norrbotten
Baltic Sea,S,Ostergotland
Baltic Sea,S,Sodermanland
Baltic Sea,S,Uppsala
Baltic Sea,S,Vasterbotten
Baltic Sea,S,Vasternorrland
Mediterranean Sea,HR,Croatia
Mediterranean Sea,SLO,Slovenia
Mediterranean Sea,BIH,Bosnia and Herzegovina
Mediterranean Sea,AL,Albania
Mediterranean Sea,GR,Greece
Mediterranean Sea,YU,Serbia and Montenegro
Mediterranean Sea,F,Corse
Mediterranean Sea,F,Languedoc Rousillon
Mediterranean Sea,F,Provence Cote dAzur
Mediterranean Sea,E,Valencia
Mediterranean Sea,E,Andalusia
Mediterranean Sea,E,Balearic Islands
Mediterranean Sea,E,Catalonia
Mediterranean Sea,E,Murcia
Mediterranean Sea,I,Veneto
Mediterranean Sea,I,Friuli Venezia Giulia
Mediterranean Sea,I,Liguria
Mediterranean Sea,I,Toscana
Mediterranean Sea,I,Marche
Mediterranean Sea,I,Lazio
Mediterranean Sea,I,Campania
Mediterranean Sea,I,Puglia
Mediterranean Sea,I,Calabria
Mediterranean Sea,I,Sicilia
Mediterranean Sea,I,Sardegna
Mediterranean Sea,TR,Adana
Mediterranean Sea,TR,Izmir
Mediterranean Sea,TR,Canakkale
Mediterranean Sea,TR,Mugla
Mediterranean Sea,TR,Antalya
Mediterranean Sea,TR,Aydin
Mediterranean Sea,TR,Balikesir
Mediterranean Sea,TR,Hatay
Mediterranean Sea,TR,Icel
Mediterranean Sea,MC,Monaco
Mediterranean Sea,M,Malta
Mediterranean Sea,CY,Cyprus
Mediterranean Sea,IL,Haifa
Mediterranean Sea,IL,Tel Aviv
Mediterranean Sea,IL,Central
Mediterranean Sea,IL,North
Mediterranean Sea,IL,South
Mediterranean Sea,ET,Matruh
Mediterranean Sea,ET,Sina ash Shamaliyah
Mediterranean Sea,ET,El Buhayra
Mediterranean Sea,ET,El Daqahliya
Mediterranean Sea,ET,Dumyat
Mediterranean Sea,ET,Kafr el Sheikh
Mediterranean Sea,ET,Bur Said (munic.)
Mediterranean Sea,ET,El Iskandariya (munic.)
Mediterranean Sea,SYR,Syria
Mediterranean Sea,RL,Lebanon
Mediterranean Sea,DZ,Algeria
Mediterranean Sea,LAR,Libya
Mediterranean Sea,MA,Morocco
Mediterranean Sea,TN,Tunisia
Atlantic Ocean,F,Aquitaine
Atlantic Ocean,F,Bretagne
Atlantic Ocean,F,Pays de la Loire
Atlantic Ocean,F,Poitou Charentes
Atlantic Ocean,E,Andalusia
Atlantic Ocean,IS,Iceland
Atlantic Ocean,IRL,Ireland
Atlantic Ocean,P,Lisbon
Atlantic Ocean,P,Beja
Atlantic Ocean,P,Aveiro
Atlantic Ocean,P,Braga
Atlantic Ocean,P,Coimbra
Atlantic Ocean,P,Faro
Atlantic Ocean,P,Leiria
Atlantic Ocean,P,Porto
Atlantic Ocean,P,Setubal
Atlantic Ocean,P,Viana do Castelo
Atlantic Ocean,GB,Greater London
Atlantic Ocean,GB,Northern Ireland
Atlantic Ocean,AG,Antigua and Barbuda
Atlantic Ocean,BS,Bahamas
Atlantic Ocean,BDS,Barbados
Atlantic Ocean,CDN,Manitoba
Atlantic Ocean,CDN,New Brunswick
Atlantic Ocean,CDN,Newfoundland
Atlantic Ocean,CDN,Northwest Territories
Atlantic Ocean,CDN,Nova Scotia
Atlantic Ocean,CDN,Ontario
Atlantic Ocean,CDN,Prince Edward Island
Atlantic Ocean,CDN,Quebec
Atlantic Ocean,USA,Georgia
Atlantic Ocean,USA,Connecticut
Atlantic Ocean,USA,Delaware
Atlantic Ocean,USA,Florida
Atlantic Ocean,USA,Maine
Atlantic Ocean,USA,Maryland
Atlantic Ocean,USA,Massachusetts
Atlantic Ocean,USA,New Hampshire
Atlantic Ocean,USA,New Jersey
Atlantic Ocean,USA,New York
Atlantic Ocean,USA,North Carolina
Atlantic Ocean,USA,Rhode Island
Atlantic Ocean,USA,South Carolina
Atlantic Ocean,USA,Virginia
Atlantic Ocean,C,Ciego de Avila
Atlantic Ocean,C,Guantanamo
Atlantic Ocean,C,Holguin
Atlantic Ocean,C,La Habana
Atlantic Ocean,C,Las Tunas
Atlantic Ocean,C,Matanzas
Atlantic Ocean,C,Sancti Spiritus
Atlantic Ocean,C,Villa Clara
Atlantic Ocean,WD,Dominica
Atlantic Ocean,DOM,Dominican Republic
Atlantic Ocean,RH,Haiti
Atlantic Ocean,WG,Grenada
Atlantic Ocean,KN,Saint Kitts and Nevis
Atlantic Ocean,WL,Saint Lucia
Atlantic Ocean,WV,Saint Vincent and the Grenadines
Atlantic Ocean,TT,Trinidad and Tobago
Atlantic Ocean,RA,Buenos Aires
Atlantic Ocean,RA,Chubut
Atlantic Ocean,RA,Rio Negro
Atlantic Ocean,RA,Santa Cruz
Atlantic Ocean,RA,Tierra del Fuego
Atlantic Ocean,BR,Sao Paulo
Atlantic Ocean,BR,Alagoas
Atlantic Ocean,BR,Amapa
Atlantic Ocean,BR,Bahia
Atlantic Ocean,BR,Ceara
Atlantic Ocean,BR,Espirito Santo
Atlantic Ocean,BR,Maranhao
Atlantic Ocean,BR,Para
Atlantic Ocean,BR,Paraiba
Atlantic Ocean,BR,Parana
Atlantic Ocean,BR,Pernambuco
Atlantic Ocean,BR,Rio de Janeiro
Atlantic Ocean,BR,Rio Grande do Norte
Atlantic Ocean,BR,Rio Grande do Sul
Atlantic Ocean,BR,Santa Catarina
Atlantic Ocean,BR,Sergipe
Atlantic Ocean,RCH,Chile
Atlantic Ocean,ROU,Uruguay
Atlantic Ocean,FGU,French Guiana
Atlantic Ocean,GUY,Guyana
Atlantic Ocean,SME,Suriname
Atlantic Ocean,YV,Delta Amacuro
Atlantic Ocean,RIM,Mauritania
Atlantic Ocean,MA,Morocco
Atlantic Ocean,WSA,Western Sahara
Atlantic Ocean,ANG,Zaire
Atlantic Ocean,ANG,Luanda
Atlantic Ocean,ANG,Cabinda
Atlantic Ocean,ANG,Benguela
Atlantic Ocean,ANG,Namibe
Atlantic Ocean,ANG,Cuanza Sul
Atlantic Ocean,ANG,Bengo
Atlantic Ocean,RCB,Congo
Atlantic Ocean,NAM,Namibia
Atlantic Ocean,ZRE,Bas Zaire
Atlantic Ocean,BEN,Benin
Atlantic Ocean,WAN,Nigeria
Atlantic Ocean,RT,Togo
Atlantic Ocean,RSA,South Africa
Atlantic Ocean,CI,Cote dIvoire
Atlantic Ocean,GH,Ghana
Atlantic Ocean,CAM,Centre
Atlantic Ocean,CAM,Cote
Atlantic Ocean,CAM,Sudoueste
Atlantic Ocean,GQ,Equatorial Guinea
Atlantic Ocean,G,Gabon
Atlantic Ocean,CV,Cape Verde
Atlantic Ocean,RG,Guinea
Atlantic Ocean,LB,Liberia
Atlantic Ocean,WAG,Gambia
Atlantic Ocean,SN,Dakar
Atlantic Ocean,SN,Fatick
Atlantic Ocean,SN,Louga
Atlantic Ocean,SN,Saint Louis
Atlantic Ocean,SN,Thies
Atlantic Ocean,SN,Ziguinchor
Atlantic Ocean,GNB,Guinea-Bissau
Atlantic Ocean,WAL,Sierra Leone
Atlantic Ocean,STP,Sao Tome and Principe
Irish Sea,IRL,Ireland
Irish Sea,GB,Greater London
Irish Sea,GB,Lothian
Irish Sea,GB,Cardiff
Irish Sea,GB,Northern Ireland
North Sea,F,Basse Normandie
North Sea,F,Haute Normandie
North Sea,F,Nord Pas de Calais
North Sea,F,Picardie
North Sea,D,Bremen
North Sea,D,Niedersachsen
North Sea,D,Schleswig Holstein
North Sea,B,West Flanders
North Sea,NL,Groningen
North Sea,NL,Friesland
North Sea,NL,Noord Holland
North Sea,NL,Zuid Holland
North Sea,NL,Zeeland
North Sea,DK,Denmark
North Sea,N,Oslo
North Sea,N,Akershus
North Sea,N,Oestfold
North Sea,N,Buskerud
North Sea,N,Vestfold
North Sea,N,Telemark
North Sea,N,Aust Agder
North Sea,N,Vest Agder
North Sea,N,Rogaland
North Sea,N,Hordaland
North Sea,S,Goteborg och Bohus
North Sea,S,Halland
North Sea,S,Malmohus
North Sea,GB,Greater London
North Sea,GB,Lothian
Persian Gulf,IR,Bushehr
Persian Gulf,IR,Hormozgan
Persian Gulf,IR,Khuzestan
Persian Gulf,BRN,Bahrain
Persian Gulf,IRQ,Al Basrah
Persian Gulf,KWT,Kuwait
Persian Gulf,SA,Saudi Arabia
Persian Gulf,OM,Oman
Persian Gulf,UAE,United Arab Emirates
Persian Gulf,Q,Qatar
Caribbean Sea,AG,Antigua and Barbuda
Caribbean Sea,BZ,Belize
Caribbean Sea,GCA,Guatemala
Caribbean Sea,MEX,Quintana Roo
Caribbean Sea,MEX,Yucatan
Caribbean Sea,CR,Limon
Caribbean Sea,NIC,Nicaragua
Caribbean Sea,PA,Colon
Caribbean Sea,PA,Bocas del Toro
Caribbean Sea,PA,Comarca de San Blas
Caribbean Sea,C,Ciego de Avila
Caribbean Sea,C,Cienfuegos
Caribbean Sea,C,Granma
Caribbean Sea,C,Guantanamo
Caribbean Sea,C,La Habana
Caribbean Sea,C,Las Tunas
Caribbean Sea,C,Matanzas
Caribbean Sea,C,Pinar del Rio
Caribbean Sea,C,Sancti Spiritus
Caribbean Sea,C,Santiago de Cuba
Caribbean Sea,C,Isla de la Juventud
Caribbean Sea,WD,Dominica
Caribbean Sea,DOM,Dominican Republic
Caribbean Sea,RH,Haiti
Caribbean Sea,HCA,Atlantida
Caribbean Sea,HCA,Colon
Caribbean Sea,HCA,Cortes
Caribbean Sea,HCA,Gracias a Dios
Caribbean Sea,WG,Grenada
Caribbean Sea,JA,Jamaica
Caribbean Sea,CO,Cordoba
Caribbean Sea,CO,Sucre
Caribbean Sea,CO,Antioquia
Caribbean Sea,CO,Atlantico
Caribbean Sea,CO,Choco
Caribbean Sea,CO,"Guajira, La"
Caribbean Sea,CO,Magdalena
Caribbean Sea,KN,Saint Kitts and Nevis
Caribbean Sea,WL,Saint Lucia
Caribbean Sea,WV,Saint Vincent and the Grenadines
Caribbean Sea,YV,Sucre
Caribbean Sea,YV,Distrito Federal
Caribbean Sea,YV,Anzoategui
Caribbean Sea,YV,Aragua
Caribbean Sea,YV,Carabobo
Caribbean Sea,YV,Delta Amacuro
Caribbean Sea,YV,Falcon
Caribbean Sea,YV,Miranda
Caribbean Sea,YV,Monagas
Caribbean Sea,YV,Nueva Esparta
Caribbean Sea,YV,Zulia
Gulf of Mexico,MEX,Campeche
Gulf of Mexico,MEX,Tabasco
Gulf of Mexico,MEX,Tamaulipas
Gulf of Mexico,MEX,Veracruz
Gulf of Mexico,MEX,Yucatan
Gulf of Mexico,USA,Alabama
Gulf of Mexico,USA,Florida
Gulf of Mexico,USA,Louisiana
Gulf of Mexico,USA,Mississippi
Gulf of Mexico,USA,Texas
Gulf of Mexico,C,Ciudad de la Habana
Gulf of Mexico,C,La Habana
Gulf of Mexico,C,Pinar del Rio
Pacific Ocean,R,Kamchatskaya oblast
Pacific Ocean,J,Aomori
Pacific Ocean,J,Fukushima
Pacific Ocean,J,Shizuoka
Pacific Ocean,J,Wakayama
Pacific Ocean,J,Tokushima
Pacific Ocean,J,Kochi
Pacific Ocean,J,Miyazaki
Pacific Ocean,J,Kagoshima
Pacific Ocean,J,Hokkaido
Pacific Ocean,J,Iwate
Pacific Ocean,J,Miyagi
Pacific Ocean,J,Ibaraki
Pacific Ocean,J,Chiba
Pacific Ocean,J,Kanagawa
Pacific Ocean,J,Aichi
Pacific Ocean,J,Mie
Pacific Ocean,NCA,New Caledonia
Pacific Ocean,PNG,Papua New Guinea
Pacific Ocean,MV,Maldives
Pacific Ocean,RP,Philippines
Pacific Ocean,RC,Taiwan
Pacific Ocean,GCA,Guatemala
Pacific Ocean,MEX,Baja California
Pacific Ocean,MEX,Baja California Sur
Pacific Ocean,MEX,Chiapas
Pacific Ocean,MEX,Colima
Pacific Ocean,MEX,Guerrero
Pacific Ocean,MEX,Jalisco
Pacific Ocean,MEX,Michoacan
Pacific Ocean,MEX,Nayarit
Pacific Ocean,MEX,Oaxaca
Pacific Ocean,MEX,Sinaloa
Pacific Ocean,MEX,Sonora
Pacific Ocean,CDN,British Columbia
Pacific Ocean,CDN,Yukon Territory
Pacific Ocean,USA,Alaska
Pacific Ocean,USA,California
Pacific Ocean,USA,Hawaii
Pacific Ocean,USA,Oregon
Pacific Ocean,USA,Washington
Pacific Ocean,CR,Guanacaste
Pacific Ocean,CR,Punarenas
Pacific Ocean,NIC,Nicaragua
Pacific Ocean,PA,Panama
Pacific Ocean,PA,Cocle
Pacific Ocean,PA,Chiriqui
Pacific Ocean,PA,Darien
Pacific Ocean,PA,Herrera
Pacific Ocean,PA,Los Santos
Pacific Ocean,PA,Veraguas
Pacific Ocean,ES,El Salvador
Pacific Ocean,HCA,Choluteca
Pacific Ocean,HCA,Valle
Pacific Ocean,CO,Cauca
Pacific Ocean,CO,Choco
Pacific Ocean,CO,Narino
Pacific Ocean,CO,Valle de Cauca
Pacific Ocean,AUS,Victoria
Pacific Ocean,AUS,New South Wales
Pacific Ocean,AUS,Queensland
Pacific Ocean,FJI,Fiji
Pacific Ocean,KIR,Kiribati
Pacific Ocean,MH,Marshall Islands
Pacific Ocean,FSM,Micronesia
Pacific Ocean,NAU,Nauru
Pacific Ocean,NZ,New Zealand
Pacific Ocean,PAL,Palau
Pacific Ocean,SLB,Solomon Islands
Pacific Ocean,TO,Tonga
Pacific Ocean,TUV,Tuvalu
Pacific Ocean,VU,Vanuatu
Pacific Ocean,WS,Western Samoa
Pacific Ocean,RCH,Chile
Pacific Ocean,PE,Lima
Pacific Ocean,PE,Moquegua
Pacific Ocean,PE,Tumbes
Pacific Ocean,PE,La Libertad
Pacific Ocean,PE,Ancash
Pacific Ocean,PE,Arequipa
Pacific Ocean,PE,Ica
Pacific Ocean,PE,Lambayeque
Pacific Ocean,PE,Piura
Pacific Ocean,PE,Tacna
Pacific Ocean,EC,Ecuador
Indian Ocean,PK,Pakistan
Indian Ocean,BD,Bangladesh
Indian Ocean,MYA,Rakhine
Indian Ocean,MYA,Mon
Indian Ocean,MYA,Ayeyarwady
Indian Ocean,MYA,Bago
Indian Ocean,MYA,Yangon
Indian Ocean,IND,Andhra Pradesh
Indian Ocean,IND,Goa
Indian Ocean,IND,Gujarat
Indian Ocean,IND,Karnataka
Indian Ocean,IND,Kerala
Indian Ocean,IND,Maharashtra
Indian Ocean,IND,Orissa
Indian Ocean,IND,Tamil Nadu
Indian Ocean,IND,West Bengal
Indian Ocean,IND,Andaman and Nicobar Is.
Indian Ocean,IND,Lakshadweep Is.
Indian Ocean,MAL,Johor
Indian Ocean,MAL,Kedah
Indian Ocean,MAL,Melaka
Indian Ocean,MAL,Negeri Sembilan
Indian Ocean,MAL,Perak
Indian Ocean,MAL,Perlis
Indian Ocean,MAL,Selangor
Indian Ocean,THA,Thailand
Indian Ocean,RI,Indonesia
Indian Ocean,SGP,Singapore
Indian Ocean,CL,Sri Lanka
Indian Ocean,AUS,Victoria
Indian Ocean,AUS,New South Wales
Indian Ocean,AUS,Northern Territory
Indian Ocean,AUS,South Australia
Indian Ocean,AUS,Tasmania
Indian Ocean,AUS,Western Australia
Indian Ocean,RSA,South Africa
Indian Ocean,EAT,Lindi
Indian Ocean,EAT,Tanga
Indian Ocean,EAT,Pwani
Indian Ocean,EAT,Daressalam
Indian Ocean,EAT,Mtwara
Indian Ocean,COM,Comoros
Indian Ocean,SP,Somalia
Indian Ocean,EAK,Coast
Indian Ocean,RM,Antsiranana
Indian Ocean,RM,Antananarivo
Indian Ocean,RM,Fianarantsoa
Indian Ocean,RM,Mahajanga
Indian Ocean,RM,Toamasina
Indian Ocean,RM,Toliary
Indian Ocean,MOC,Inhambane
Indian Ocean,MOC,Cabo Delgado
Indian Ocean,MOC,Gaza
Indian Ocean,MOC,Maputo
Indian Ocean,MOC,Nampula
Indian Ocean,MOC,Sofala
Indian Ocean,MOC,Zambezia
Indian Ocean,MOC,Maputo (munic.)
Indian Ocean,MS,Mauritius
Indian Ocean,SY,Seychelles
Gulf of Aden,DJI,Djibouti
Gulf of Aden,SP,Somalia
Norwegian Sea,N,Sogn og Fjordane
Norwegian Sea,N,Moere og Romsdal
Norwegian Sea,N,Soer Trondelag
Norwegian Sea,N,Nord Trondelag
Norwegian Sea,N,Nordland
Norwegian Sea,N,Troms
Norwegian Sea,N,Finnmark
Norwegian Sea,IS,Iceland
Norwegian Sea,GB,Lothian
Arctic Ocean,R,Arkhangelskaya oblast
Arctic Ocean,R,Murmanskaya oblast
Arctic Ocean,R,Tyumenskaya oblast
Arctic Ocean,R,Krasnoyarskiy kray
Arctic Ocean,R,Rep. of Sakha
Arctic Ocean,R,Magadanskaya oblast
Arctic Ocean,N,Finnmark
Arctic Ocean,CDN,Northwest Territories
Sea of Japan,R,Primorsky kray
Sea of Japan,R,Khabarovskiy kray
Sea of Japan,R,Kamchatskaya oblast
Sea of Japan,R,Magadanskaya oblast
Sea of Japan,R,Sakhalinskaya oblast
Sea of Japan,J,Fukuoka
Sea of Japan,J,Aomori
Sea of Japan,J,Akita
Sea of Japan,J,Yamagata
Sea of Japan,J,Niigata
Sea of Japan,J,Toyama
Sea of Japan,J,Fukui
Sea of Japan,J,Tottori
Sea of Japan,J,Yamaguchi
Sea of Japan,J,Saga
Sea of Japan,J,Hokkaido
Sea of Japan,J,Ishikawa
Sea of Japan,J,Kyoto
Sea of Japan,J,Hyogo
Sea of Japan,J,Shimane
Sea of Japan,ROK,South Korea
Sea of Japan,NOK,North Korea
Black Sea,UA,Khersonska
Black Sea,UA,Mykolayivska
Black Sea,UA,Odeska
Black Sea,UA,Krym
Black Sea,R,Krasnodarsky kray
Black Sea,BG,Bulgaria
Black Sea,RO,Tulcea
Black Sea,RO,Constanta
Black Sea,TR,Istanbul
Black Sea,TR,Artvin
Black Sea,TR,Bolu
Black Sea,TR,Giresun
Black Sea,TR,Kastamonu
Black Sea,TR,Kirklareli
Black Sea,TR,Rize
Black Sea,TR,Sakarya
Black Sea,TR,Sinop
Black Sea,TR,Kocaeli
Black Sea,TR,Ordu
Black Sea,TR,Samsun
Black Sea,TR,Trabzon
Black Sea,TR,Zonguldak
Black Sea,GE,Georgia
Sea of Azov,UA,Donetska
Sea of Azov,UA,Khersonska
Sea of Azov,UA,Zaporizka
Sea of Azov,UA,Krym
Sea of Azov,R,Rostovskaya oblast
Sea of Azov,R,Krasnodarsky kray
Caspian Sea,R,Rep. of Kalmykiya
Caspian Sea,R,Astrakhanskaya oblast
Caspian Sea,R,Rep. of Dagestan
Caspian Sea,TM,Balkan
Caspian Sea,AZ,Azerbaijan
Caspian Sea,KAZ,Atyrau
Caspian Sea,KAZ,Mangghystau
Caspian Sea,IR,Gilan
Caspian Sea,IR,Mazandaran
Yellow Sea,TJ,Hebei
Yellow Sea,TJ,Jiangsu
Yellow Sea,TJ,Liaoning
Yellow Sea,TJ,Shandong
Yellow Sea,ROK,South Korea
Yellow Sea,NOK,North Korea
East China Sea,TJ,Fujian
East China Sea,TJ,Jiangsu
East China Sea,TJ,Zhejiang
East China Sea,RC,Taiwan
South China Sea,TJ,Fujian
South China Sea,TJ,Guangdong
South China Sea,TJ,Guangxi Zhuangzu
South China Sea,MAL,Johor
South China Sea,MAL,Kelantan
South China Sea,MAL,Pahang
South China Sea,MAL,Sabah
South China Sea,MAL,Sarawak
South China Sea,MAL,Terengganu
South China Sea,BRU,Brunei
South China Sea,THA,Thailand
South China Sea,K,Cambodia
South China Sea,VN,Vietnam
South China Sea,RI,Indonesia
South China Sea,RP,Philippines
South China Sea,RC,Taiwan
Sunda Sea,RI,Indonesia
Sunda Sea,RP,Philippines
Arabian Sea,IR,Hormozgan
Arabian Sea,IR,Sistan e Baluchestan
Arabian Sea,PK,Pakistan
Arabian Sea,OM,Oman
Red Sea,IL,South
Red Sea,ET,El Bahr el Ahmar
Red Sea,ET,Sina al Janubiyah
Red Sea,JOR,Jordan
Red Sea,SA,Saudi Arabia
Red Sea,YE,Yemen
Red Sea,SUD,ash Sharqiyah
Red Sea,ER,Eritrea
Red Sea,DJI,Djibouti
\.

---Filling table island :

COPY island FROM STDIN csv;
\.

---Filling table is_member :

COPY is_member FROM STDIN csv;
AL,BSEC,member
AL,CE,member
AL,CCC,member
AL,ECE,member
AL,EBRD,member
AL,EU,membership applicant
AL,FAO,member
AL,IAEA,member
AL,IBRD,member
AL,ICAO,member
AL,Interpol,member
AL,IDA,Part II
AL,IFRCS,member
AL,IFC,member
AL,IFAD,Category III
AL,ILO,member
AL,IMO,member
AL,IMF,member
AL,IOC,National Olympic Committee
AL,IOM,member
AL,ISO,member
AL,ICRM,National Society
AL,ITU,member
AL,Intelsat,nonsignatory user
AL,IDB,member
AL,ANC,member
AL,OSCE,member
AL,OIC,member
AL,PFP,member
AL,UN,member
AL,UNESCO,member
AL,UNIDO,member
AL,UNOMIG,member
AL,UPU,member
AL,WFTU,member
AL,WHO,member
AL,WIPO,member
AL,WMO,member
AL,WToO,member
AL,WTrO,applicant
GR,NAM,guest
GR,BIS,member
GR,BSEC,member
GR,CE,member
GR,CCC,member
GR,ECE,member
GR,EBRD,member
GR,EIB,member
GR,CERN,member
GR,EU,member
GR,FAO,member
GR,G-6,member
GR,IAEA,member
GR,IBRD,member
GR,ICC,member
GR,ICAO,member
GR,ICFTU,member
GR,Interpol,member
GR,IDA,Part II
GR,IEA,member
GR,IFRCS,member
GR,IFC,member
GR,IFAD,Category I
GR,ILO,member
GR,IMO,member
GR,Inmarsat,member
GR,IMF,member
GR,IOC,National Olympic Committee
GR,IOM,member
GR,ISO,member
GR,ICRM,National Society
GR,ITU,member
GR,Intelsat,member
GR,MTCR,member
GR,ANC,member
GR,NATO,member
GR,EN,member
GR,NSG,member
GR,OECD,member
GR,OSCE,member
GR,OAS,observer
GR,PCA,member
GR,UN,member
GR,UNESCO,member
GR,UNIDO,member
GR,UNIKOM,member
GR,MINURSO,member
GR,UNOMIG,member
GR,UNHCR,member
GR,UPU,member
GR,WEU,member
GR,WFTU,member
GR,WHO,member
GR,WIPO,member
GR,WMO,member
GR,WToO,member
GR,WTrO,member
GR,ZC,member
MK,CEI,member
MK,CE,member
MK,CCC,member
MK,ECE,member
MK,EBRD,member
MK,FAO,member
MK,IAEA,member
MK,IBRD,member
MK,ICAO,member
MK,Interpol,member
MK,IDA,Part II
MK,IFRCS,member
MK,IFC,member
MK,IFAD,Category III
MK,ILO,member
MK,IMO,member
MK,IMF,member
MK,IOC,National Olympic Committee
MK,ITU,member
MK,Intelsat,nonsignatory user
MK,OSCE,member
MK,UN,member
MK,UNESCO,member
MK,UNIDO,member
MK,UPU,member
MK,WHO,member
MK,WIPO,member
MK,WMO,member
MK,WTrO,observer
AND,CE,member
AND,ECE,member
AND,Interpol,member
AND,IFRCS,member
AND,IOC,National Olympic Committee
AND,ITU,member
AND,UN,member
AND,UNESCO,member
AND,WIPO,member
F,AG,observer
F,AfDB,nonregional member
F,ACCT,member
F,AsDB,nonregional member
F,BIS,member
F,CDB,nonregional member
F,BDEAC,member
F,CE,member
F,CCC,member
F,ESCAP,member
F,ECA,associate member
F,ECE,member
F,ECLAC,member
F,EBRD,member
F,EIB,member
F,CERN,member
F,ESA,member
F,EU,member
F,FAO,member
F,FZ,member
F,G-5,member
F,G-10,member
F,IADB,member
F,IAEA,member
F,IBRD,member
F,ICC,member
F,ICAO,member
F,ICFTU,member
F,Interpol,member
F,IDA,Part I
F,IEA,member
F,IFRCS,member
F,IFC,member
F,IFAD,Category I
F,ILO,member
F,IMO,member
F,Inmarsat,member
F,IMF,member
F,IOC,National Olympic Committee
F,IOM,member
F,ISO,member
F,ICRM,National Society
F,ITU,member
F,Intelsat,member
F,MTCR,member
F,ANC,member
F,NATO,member
F,EN,member
F,NSG,member
F,OECD,member
F,OSCE,member
F,OAS,observer
F,PCA,member
F,SPC,member
F,UN,member
F,UNAVEM III,member
F,UNCRO,member
F,UNESCO,member
F,UNIDO,member
F,UNITAR,member
F,UNIFIL,member
F,UNIKOM,member
F,MINURSO,member
F,UNMIH,member
F,UNOMIG,member
F,UNHCR,member
F,UNPREDEP,member
F,UNPROFOR,member
F,UNRWA,member
F,UNTSO,member
F,UNU,member
F,UPU,member
F,WEU,member
F,WCL,member
F,WFTU,member
F,WHO,member
F,WIPO,member
F,WMO,member
F,WToO,member
F,WTrO,member
F,ZC,member
E,AG,observer
E,NAM,guest
E,AfDB,nonregional member
E,AsDB,nonregional member
E,BIS,member
E,CE,member
E,CCC,member
E,ECE,member
E,ECLAC,member
E,EBRD,member
E,EIB,member
E,CERN,member
E,ESA,member
E,EU,member
E,FAO,member
E,G-8,member
E,IADB,member
E,IAEA,member
E,IBRD,member
E,ICC,member
E,ICAO,member
E,ICFTU,member
E,Interpol,member
E,IDA,Part II
E,IEA,member
E,IFRCS,member
E,IFC,member
E,IFAD,Category I
E,ILO,member
E,IMO,member
E,Inmarsat,member
E,IMF,member
E,IOC,National Olympic Committee
E,IOM,observer
E,ISO,member
E,ICRM,National Society
E,ITU,member
E,Intelsat,member
E,LAIA,observer
E,MTCR,member
E,ANC,member
E,NATO,member
E,EN,member
E,NSG,member
E,OECD,member
E,OSCE,member
E,OAS,observer
E,PCA,member
E,UN,member
E,UNCRO,member
E,UNESCO,member
E,UNIDO,member
E,UNHCR,member
E,UNPREDEP,member
E,UNPROFOR,member
E,UNU,member
E,UPU,member
E,WEU,member
E,WCL,member
E,WFTU,member
E,WHO,member
E,WIPO,member
E,WMO,member
E,WToO,member
E,WTrO,member
E,ZC,member
A,AG,observer
A,NAM,guest
A,AfDB,nonregional member
A,AsDB,nonregional member
A,BIS,member
A,CEI,member
A,CE,member
A,CCC,member
A,ECE,member
A,EBRD,member
A,EIB,member
A,CERN,member
A,ESA,member
A,EU,member
A,FAO,member
A,G-9,member
A,IADB,member
A,IAEA,member
A,IBRD,member
A,ICC,member
A,ICAO,member
A,ICFTU,member
A,Interpol,member
A,IDA,Part I
A,IEA,member
A,IFRCS,member
A,IFC,member
A,IFAD,Category I
A,ILO,member
A,IMO,member
A,IMF,member
A,IOC,National Olympic Committee
A,IOM,member
A,ISO,member
A,ICRM,National Society
A,ITU,member
A,Intelsat,member
A,MTCR,member
A,ANC,member
A,EN,member
A,NSG,member
A,OECD,member
A,OSCE,member
A,OAS,observer
A,PFP,member
A,PCA,member
A,UN,member
A,UNAMIR,member
A,UNDOF,member
A,UNESCO,member
A,UNFICYP,member
A,UNIDO,member
A,UNIKOM,member
A,MINURSO,member
A,UNMIH,member
A,UNMOT,member
A,UNOMIG,member
A,UNHCR,member
A,UNTSO,member
A,UPU,member
A,WEU,observer
A,WCL,member
A,WFTU,member
A,WHO,member
A,WIPO,member
A,WMO,member
A,WToO,member
A,WTrO,member
A,ZC,member
CZ,BIS,member
CZ,CEI,member
CZ,CE,member
CZ,CCC,member
CZ,ECE,member
CZ,EBRD,member
CZ,CERN,member
CZ,EU,membership applicant
CZ,FAO,member
CZ,IAEA,member
CZ,IBRD,member
CZ,ICAO,member
CZ,ICFTU,member
CZ,Interpol,member
CZ,IDA,Part II
CZ,IFRCS,member
CZ,IFC,member
CZ,ILO,member
CZ,IMO,member
CZ,Inmarsat,member
CZ,IMF,member
CZ,IOC,National Olympic Committee
CZ,IOM,observer
CZ,ISO,member
CZ,ICRM,National Society
CZ,ITU,member
CZ,Intelsat,member
CZ,ANC,member
CZ,NSG,member
CZ,OECD,member
CZ,OSCE,member
CZ,PFP,member
CZ,PCA,member
CZ,UN,member
CZ,UNCRO,member
CZ,UNESCO,member
CZ,UNIDO,member
CZ,UNOMIG,member
CZ,UNOMIL,member
CZ,UNPROFOR,member
CZ,UPU,member
CZ,WEU,associate partner
CZ,WFTU,member
CZ,WHO,member
CZ,WIPO,member
CZ,WMO,member
CZ,WToO,member
CZ,WTrO,member
CZ,ZC,member
D,AG,observer
D,NAM,guest
D,AfDB,nonregional member
D,AsDB,nonregional member
D,BIS,member
D,CDB,nonregional member
D,BDEAC,member
D,CE,member
D,CBSS,member
D,CCC,member
D,ECE,member
D,EBRD,member
D,EIB,member
D,CERN,member
D,ESA,member
D,EU,member
D,FAO,member
D,G-5,member
D,G-10,member
D,IADB,member
D,IAEA,member
D,IBRD,member
D,ICC,member
D,ICAO,member
D,ICFTU,member
D,Interpol,member
D,IDA,Part I
D,IEA,member
D,IFRCS,member
D,IFC,member
D,IFAD,Category I
D,ILO,member
D,IMO,member
D,Inmarsat,member
D,IMF,member
D,IOC,National Olympic Committee
D,IOM,member
D,ISO,member
D,ICRM,National Society
D,ITU,member
D,Intelsat,member
D,MTCR,member
D,ANC,member
D,NATO,member
D,EN,member
D,NSG,member
D,OECD,member
D,OSCE,member
D,OAS,observer
D,PCA,member
D,UN,member
D,UNAMIR,member
D,UNCRO,member
D,UNESCO,member
D,UNIDO,member
D,UNITAR,member
D,MINURSO,member
D,UNOMIG,member
D,UNHCR,member
D,UNPROFOR,member
D,UPU,member
D,WEU,member
D,WHO,member
D,WIPO,member
D,WMO,member
D,WToO,member
D,WTrO,member
D,ZC,member
H,NAM,guest
H,BIS,member
H,CEI,member
H,CE,member
H,CCC,member
H,ECE,member
H,EBRD,member
H,CERN,member
H,EU,membership applicant
H,FAO,member
H,G-9,member
H,IAEA,member
H,IBRD,member
H,ICAO,member
H,Interpol,member
H,IDA,Part II
H,IFRCS,member
H,IFC,member
H,ILO,member
H,IMO,member
H,IMF,member
H,IOC,National Olympic Committee
H,IOM,member
H,ISO,member
H,ICRM,National Society
H,ITU,member
H,Intelsat,member
H,MTCR,member
H,ANC,member
H,NSG,member
H,OECD,member
H,OSCE,member
H,OAS,observer
H,PFP,member
H,PCA,member
H,UN,member
H,UNAVEM III,member
H,UNESCO,member
H,UNIDO,member
H,UNIKOM,member
H,MINURSO,member
H,UNMOT,member
H,UNOMIG,member
H,UNHCR,member
H,UNU,member
H,UPU,member
H,WEU,associate partner
H,WFTU,member
H,WHO,member
H,WIPO,member
H,WMO,member
H,WToO,member
H,WTrO,member
H,ZC,member
I,AG,observer
I,NAM,guest
I,AfDB,nonregional member
I,AsDB,nonregional member
I,BIS,member
I,CDB,nonregional member
I,CEI,member
I,CE,member
I,CCC,member
I,ECE,member
I,ECLAC,member
I,EBRD,member
I,EIB,member
I,CERN,member
I,ESA,member
I,EU,member
I,FAO,member
I,G-10,member
I,IADB,member
I,IAEA,member
I,IBRD,member
I,ICC,member
I,ICAO,member
I,ICFTU,member
I,Interpol,member
I,IDA,Part I
I,IEA,member
I,IFRCS,member
I,IFC,member
I,IFAD,Category I
I,ILO,member
I,IMO,member
I,Inmarsat,member
I,IMF,member
I,IOC,National Olympic Committee
I,IOM,member
I,ISO,member
I,ICRM,National Society
I,ITU,member
I,Intelsat,member
I,LAIA,observer
I,MTCR,member
I,ANC,member
I,NATO,member
I,EN,member
I,NSG,member
I,OECD,member
I,OSCE,member
I,OAS,observer
I,PCA,member
I,UN,member
I,UNESCO,member
I,UNIDO,member
I,UNITAR,member
I,UNIFIL,member
I,UNIKOM,member
I,UNMOGIP,member
I,MINURSO,member
I,UNHCR,member
I,UNTSO,member
I,UPU,member
I,WEU,member
I,WCL,member
I,WHO,member
I,WIPO,member
I,WMO,member
I,WToO,member
I,WTrO,member
I,ZC,member
FL,CE,member
FL,ECE,member
FL,EBRD,member
FL,EFTA,member
FL,IAEA,member
FL,Interpol,member
FL,IFRCS,member
FL,IOC,National Olympic Committee
FL,ICRM,National Society
FL,ITU,member
FL,Intelsat,member
FL,OSCE,member
FL,PCA,member
FL,UN,member
FL,UPU,member
FL,WCL,member
FL,WIPO,member
FL,WTrO,member
SK,BIS,member
SK,BSEC,observer
SK,CEI,member
SK,CE,member
SK,CCC,member
SK,ECE,member
SK,EBRD,member
SK,CERN,member
SK,EU,membership applicant
SK,FAO,member
SK,IAEA,member
SK,IBRD,member
SK,ICAO,member
SK,ICFTU,member
SK,Interpol,member
SK,IDA,Part II
SK,IFRCS,member
SK,IFC,member
SK,ILO,member
SK,IMO,member
SK,Inmarsat,member
SK,IMF,member
SK,IOC,National Olympic Committee
SK,IOM,observer
SK,ISO,member
SK,ICRM,National Society
SK,ITU,member
SK,Intelsat,nonsignatory user
SK,ANC,member
SK,NSG,member
SK,OSCE,member
SK,PFP,member
SK,PCA,member
SK,UN,member
SK,UNAVEM III,member
SK,UNCRO,member
SK,UNESCO,member
SK,UNIDO,member
SK,UPU,member
SK,WEU,associate partner
SK,WHO,member
SK,WIPO,member
SK,WMO,member
SK,WToO,member
SK,WTrO,member
SK,ZC,member
SLO,NAM,guest
SLO,CEI,member
SLO,CE,member
SLO,CCC,member
SLO,ECE,member
SLO,EBRD,member
SLO,FAO,member
SLO,IADB,member
SLO,IAEA,member
SLO,IBRD,member
SLO,ICAO,member
SLO,Interpol,member
SLO,IDA,Part II
SLO,IFRCS,member
SLO,IFC,member
SLO,ILO,member
SLO,IMO,member
SLO,IMF,member
SLO,IOC,National Olympic Committee
SLO,IOM,observer
SLO,ISO,member
SLO,ICRM,National Society
SLO,ITU,member
SLO,Intelsat,nonsignatory user
SLO,ANC,member
SLO,OSCE,member
SLO,PFP,member
SLO,UN,member
SLO,UNESCO,member
SLO,UNIDO,member
SLO,UPU,member
SLO,WHO,member
SLO,WIPO,member
SLO,WMO,member
SLO,WToO,member
SLO,WTrO,member
CH,AG,observer
CH,NAM,guest
CH,AfDB,nonregional member
CH,AsDB,nonregional member
CH,BIS,member
CH,CE,member
CH,CCC,member
CH,ECE,member
CH,EBRD,member
CH,EFTA,member
CH,CERN,member
CH,ESA,member
CH,FAO,member
CH,G-8,member
CH,G-10,member
CH,IADB,member
CH,IAEA,member
CH,IBRD,member
CH,ICC,member
CH,ICAO,member
CH,ICFTU,member
CH,Interpol,member
CH,IDA,Part I
CH,IEA,member
CH,IFRCS,member
CH,IFC,member
CH,IFAD,Category I
CH,ILO,member
CH,IMO,member
CH,Inmarsat,member
CH,IMF,member
CH,IOC,National Olympic Committee
CH,IOM,member
CH,ISO,member
CH,ICRM,National Society
CH,ITU,member
CH,Intelsat,member
CH,MTCR,member
CH,EN,member
CH,NSG,member
CH,OECD,member
CH,OSCE,member
CH,OAS,observer
CH,PCA,member
CH,UN,observer
CH,UNAMIR,member
CH,UNCTAD,member
CH,UNESCO,member
CH,UNIDO,member
CH,UNITAR,member
CH,UNMOT,member
CH,UNOMIG,member
CH,UNHCR,member
CH,UNPREDEP,member
CH,UNPROFOR,member
CH,UNTSO,member
CH,UNU,member
CH,UPU,member
CH,WCL,member
CH,WHO,member
CH,WIPO,member
CH,WMO,member
CH,WToO,member
CH,WTrO,member
CH,ZC,member
BY,CEI,associate member
BY,CIS,member
BY,CE,guest
BY,CCC,member
BY,ECE,member
BY,EBRD,member
BY,IAEA,member
BY,IBRD,member
BY,ICAO,member
BY,Interpol,member
BY,IFRCS,member
BY,IFC,member
BY,ILO,member
BY,Inmarsat,member
BY,IMF,member
BY,IOC,National Olympic Committee
BY,IOM,observer
BY,ISO,member
BY,ITU,member
BY,Intelsat,nonsignatory user
BY,ANC,member
BY,OSCE,member
BY,PFP,member
BY,PCA,member
BY,UN,member
BY,UNESCO,member
BY,UNIDO,member
BY,UPU,member
BY,WHO,member
BY,WIPO,member
BY,WMO,member
BY,WTrO,applicant
LV,BIS,member
LV,CE,member
LV,CBSS,member
LV,CCC,member
LV,ECE,member
LV,EBRD,member
LV,EU,membership applicant
LV,FAO,member
LV,IBRD,member
LV,ICAO,member
LV,Interpol,member
LV,IDA,Part II
LV,IFRCS,member
LV,IFC,member
LV,ILO,member
LV,IMO,member
LV,IMF,member
LV,IOC,National Olympic Committee
LV,IOM,observer
LV,ICRM,National Society
LV,ITU,member
LV,Intelsat,nonsignatory user
LV,ANC,member
LV,OSCE,member
LV,PFP,member
LV,UN,member
LV,UNESCO,member
LV,UNIDO,member
LV,UPU,member
LV,WEU,associate partner
LV,WHO,member
LV,WIPO,member
LV,WMO,member
LV,WTrO,applicant
LT,BIS,member
LT,CE,member
LT,CBSS,member
LT,CCC,member
LT,ECE,member
LT,EBRD,member
LT,EU,membership applicant
LT,FAO,member
LT,IAEA,member
LT,IBRD,member
LT,ICAO,member
LT,Interpol,member
LT,IFRCS,member
LT,IFC,member
LT,ILO,member
LT,IMF,member
LT,IOC,National Olympic Committee
LT,ISO,correspondent member
LT,ICRM,National Society
LT,ITU,member
LT,Intelsat,nonsignatory user
LT,ANC,member
LT,OSCE,member
LT,PFP,member
LT,UN,member
LT,UNCRO,member
LT,UNESCO,member
LT,UPU,member
LT,WEU,associate partner
LT,WHO,member
LT,WIPO,member
LT,WMO,member
LT,WTrO,applicant
PL,NAM,guest
PL,BIS,member
PL,BSEC,observer
PL,CEI,member
PL,CE,member
PL,CBSS,member
PL,CCC,member
PL,ECE,member
PL,EBRD,member
PL,CERN,member
PL,EU,membership applicant
PL,FAO,member
PL,IAEA,member
PL,IBRD,member
PL,ICAO,member
PL,ICFTU,member
PL,Interpol,member
PL,IDA,Part II
PL,IFRCS,member
PL,IFC,member
PL,ILO,member
PL,IMO,member
PL,Inmarsat,member
PL,IMF,member
PL,IOC,National Olympic Committee
PL,IOM,member
PL,ISO,member
PL,ICRM,National Society
PL,ITU,member
PL,Intelsat,member
PL,ANC,member
PL,NSG,member
PL,OSCE,member
PL,OAS,observer
PL,PFP,member
PL,PCA,member
PL,UN,member
PL,UNAVEM III,member
PL,UNCRO,member
PL,UNDOF,member
PL,UNESCO,member
PL,UNIDO,member
PL,UNIFIL,member
PL,UNIKOM,member
PL,MINURSO,member
PL,UNMOT,member
PL,UNOMIG,member
PL,UNPREDEP,member
PL,UNPROFOR,member
PL,UPU,member
PL,WEU,associate partner
PL,WCL,member
PL,WFTU,member
PL,WHO,member
PL,WIPO,member
PL,WMO,member
PL,WToO,member
PL,WTrO,member
PL,ZC,member
UA,BSEC,member
UA,CEI,associate member
UA,CIS,member
UA,CE,member
UA,CCC,member
UA,ECE,member
UA,EBRD,member
UA,IAEA,member
UA,IBRD,member
UA,ICAO,member
UA,Interpol,member
UA,IFRCS,member
UA,IFC,member
UA,ILO,member
UA,IMO,member
UA,Inmarsat,member
UA,IMF,member
UA,IOC,National Olympic Committee
UA,IOM,observer
UA,ISO,member
UA,ICRM,National Society
UA,ITU,member
UA,Intelsat,nonsignatory user
UA,ANC,member
UA,NSG,member
UA,OSCE,member
UA,PFP,member
UA,PCA,member
UA,UN,member
UA,UNCRO,member
UA,UNESCO,member
UA,UNIDO,member
UA,UNMOT,member
UA,UNPREDEP,member
UA,UNPROFOR,member
UA,UPU,member
UA,WHO,member
UA,WIPO,member
UA,WMO,member
UA,WTrO,applicant
R,BSEC,member
R,CIS,member
R,CE,member
R,CBSS,member
R,CCC,member
R,ESCAP,member
R,ECE,member
R,EBRD,member
R,CERN,observer
R,IAEA,member
R,IBRD,member
R,ICAO,member
R,Interpol,member
R,IDA,Part I
R,IFRCS,member
R,IFC,member
R,ILO,member
R,IMO,member
R,Inmarsat,member
R,IMF,member
R,IOC,National Olympic Committee
R,IOM,observer
R,ISO,member
R,ICRM,National Society
R,ITU,member
R,Intelsat,member
R,MTCR,member
R,ANC,member
R,NSG,member
R,OSCE,member
R,OAS,observer
R,PFP,member
R,PCA,member
R,UN,member
R,UNAVEM III,member
R,UNAMIR,member
R,UNCRO,member
R,UNESCO,member
R,UNIDO,member
R,UNITAR,member
R,UNIKOM,member
R,MINURSO,member
R,UNMIH,member
R,UNOMIG,member
R,UNHCR,member
R,UNPREDEP,member
R,UNPROFOR,member
R,UNTSO,member
R,UPU,member
R,WHO,member
R,WIPO,member
R,WMO,member
R,WToO,member
R,WTrO,applicant
R,ZC,member
B,AG,observer
B,AfDB,nonregional member
B,ACCT,member
B,AsDB,nonregional member
B,BIS,member
B,Benelux,member
B,CE,member
B,CCC,member
B,ECE,member
B,EBRD,member
B,EIB,member
B,CERN,member
B,ESA,member
B,EU,member
B,FAO,member
B,G-9,member
B,G-10,member
B,IADB,member
B,IAEA,member
B,IBRD,member
B,ICC,member
B,ICAO,member
B,ICFTU,member
B,Interpol,member
B,IDA,Part I
B,IEA,member
B,IFRCS,member
B,IFC,member
B,IFAD,Category I
B,ILO,member
B,IMO,member
B,Inmarsat,member
B,IMF,member
B,IOC,National Olympic Committee
B,IOM,member
B,ISO,member
B,ICRM,National Society
B,ITU,member
B,Intelsat,member
B,MTCR,member
B,ANC,member
B,NATO,member
B,EN,member
B,NSG,member
B,OECD,member
B,OSCE,member
B,OAS,observer
B,PCA,member
B,UN,member
B,UNCRO,member
B,UNESCO,member
B,UNIDO,member
B,UNITAR,member
B,UNMOGIP,member
B,MINURSO,member
B,UNHCR,member
B,UNPROFOR,member
B,UNRWA,member
B,UNTSO,member
B,UPU,member
B,WEU,member
B,WCL,member
B,WHO,member
B,WIPO,member
B,WMO,member
B,WToO,member
B,WTrO,member
B,ZC,member
L,ACCT,member
L,Benelux,member
L,CE,member
L,CCC,member
L,ECE,member
L,EBRD,member
L,EIB,member
L,EU,member
L,FAO,member
L,IAEA,member
L,IBRD,member
L,ICC,member
L,ICAO,member
L,ICFTU,member
L,Interpol,member
L,IDA,Part I
L,IEA,member
L,IFRCS,member
L,IFC,member
L,IFAD,Category I
L,ILO,member
L,IMO,member
L,IMF,member
L,IOC,National Olympic Committee
L,IOM,member
L,ICRM,National Society
L,ITU,member
L,Intelsat,member
L,MTCR,member
L,ANC,member
L,NATO,member
L,EN,member
L,NSG,member
L,OECD,member
L,OSCE,member
L,PCA,member
L,UN,member
L,UNESCO,member
L,UNIDO,member
L,UPU,member
L,WEU,member
L,WCL,member
L,WHO,member
L,WIPO,member
L,WMO,member
L,WTrO,member
L,ZC,member
NL,AG,observer
NL,NAM,guest
NL,AfDB,nonregional member
NL,AsDB,nonregional member
NL,BIS,member
NL,Benelux,member
NL,CE,member
NL,CCC,member
NL,ESCAP,member
NL,ECE,member
NL,ECLAC,member
NL,EBRD,member
NL,EIB,member
NL,CERN,member
NL,ESA,member
NL,EU,member
NL,FAO,member
NL,G-10,member
NL,IADB,member
NL,IAEA,member
NL,IBRD,member
NL,ICC,member
NL,ICAO,member
NL,ICFTU,member
NL,Interpol,member
NL,IDA,Part I
NL,IEA,member
NL,IFRCS,member
NL,IFC,member
NL,IFAD,Category I
NL,ILO,member
NL,IMO,member
NL,Inmarsat,member
NL,IMF,member
NL,IOC,National Olympic Committee
NL,IOM,member
NL,ISO,member
NL,ICRM,National Society
NL,ITU,member
NL,Intelsat,member
NL,MTCR,member
NL,ANC,member
NL,NATO,member
NL,EN,member
NL,NSG,member
NL,OECD,member
NL,OSCE,member
NL,OAS,observer
NL,PCA,member
NL,UN,member
NL,UNAVEM III,member
NL,UNCRO,member
NL,UNESCO,member
NL,UNIDO,member
NL,UNITAR,member
NL,UNMIH,member
NL,UNHCR,member
NL,UNPREDEP,member
NL,UNPROFOR,member
NL,UNTSO,member
NL,UNU,member
NL,UPU,member
NL,WEU,member
NL,WCL,member
NL,WHO,member
NL,WIPO,member
NL,WMO,member
NL,WToO,member
NL,WTrO,member
NL,ZC,member
BIH,NAM,guest
BIH,CEI,member
BIH,CE,guest
BIH,ECE,member
BIH,FAO,member
BIH,ICAO,member
BIH,Interpol,member
BIH,IFAD,Category III
BIH,ILO,member
BIH,IMO,member
BIH,IOC,National Olympic Committee
BIH,IOM,observer
BIH,ITU,member
BIH,Intelsat,nonsignatory user
BIH,OSCE,member
BIH,UN,member
BIH,UNESCO,member
BIH,UNIDO,member
BIH,UPU,member
BIH,WHO,member
BIH,WIPO,member
BIH,WMO,member
BIH,WToO,member
HR,NAM,observer
HR,CEI,member
HR,CE,guest
HR,CCC,member
HR,ECE,member
HR,EBRD,member
HR,FAO,member
HR,IADB,member
HR,IAEA,member
HR,IBRD,member
HR,ICAO,member
HR,Interpol,member
HR,IDA,Part II
HR,IFRCS,member
HR,IFC,member
HR,IFAD,Category III
HR,ILO,member
HR,IMO,member
HR,Inmarsat,member
HR,IMF,member
HR,IOC,National Olympic Committee
HR,IOM,member
HR,ISO,member
HR,ICRM,National Society
HR,ITU,member
HR,Intelsat,member
HR,OSCE,member
HR,UN,member
HR,UNESCO,member
HR,UNIDO,member
HR,UPU,member
HR,WHO,member
HR,WIPO,member
HR,WMO,member
HR,WToO,member
HR,WTrO,applicant
BG,NAM,guest
BG,ACCT,member
BG,BIS,member
BG,BSEC,member
BG,CEI,associate member
BG,CE,member
BG,CCC,member
BG,ECE,member
BG,EBRD,member
BG,EU,membership applicant
BG,FAO,member
BG,G-9,member
BG,IAEA,member
BG,IBRD,member
BG,ICAO,member
BG,ICFTU,member
BG,Interpol,member
BG,IFRCS,member
BG,IFC,member
BG,ILO,member
BG,IMO,member
BG,Inmarsat,member
BG,IMF,member
BG,IOC,National Olympic Committee
BG,IOM,member
BG,ISO,member
BG,ICRM,National Society
BG,ITU,member
BG,Intelsat,nonsignatory user
BG,ANC,member
BG,NSG,member
BG,OSCE,member
BG,PFP,member
BG,PCA,member
BG,UN,member
BG,UNAVEM III,member
BG,UNESCO,member
BG,UNIDO,member
BG,UNMOT,member
BG,UPU,member
BG,WEU,associate partner
BG,WFTU,member
BG,WHO,member
BG,WIPO,member
BG,WMO,member
BG,WToO,member
BG,WTrO,applicant
BG,ZC,member
RO,NAM,guest
RO,ACCT,member
RO,BIS,member
RO,BSEC,member
RO,CEI,associate member
RO,CE,member
RO,CCC,member
RO,ECE,member
RO,EBRD,member
RO,EU,membership applicant
RO,FAO,member
RO,G-9,member
RO,G-77,member
RO,IAEA,member
RO,IBRD,member
RO,ICAO,member
RO,ICFTU,member
RO,Interpol,member
RO,IFRCS,member
RO,IFC,member
RO,IFAD,Category III
RO,ILO,member
RO,IMO,member
RO,Inmarsat,member
RO,IMF,member
RO,IOC,National Olympic Committee
RO,IOM,observer
RO,ISO,member
RO,ICRM,National Society
RO,ITU,member
RO,Intelsat,member
RO,ANC,member
RO,NSG,member
RO,OSCE,member
RO,OAS,observer
RO,PFP,member
RO,PCA,member
RO,UN,member
RO,UNAVEM III,member
RO,UNESCO,member
RO,UNIDO,member
RO,UNIKOM,member
RO,UPU,member
RO,WEU,associate partner
RO,WCL,member
RO,WFTU,member
RO,WHO,member
RO,WIPO,member
RO,WMO,member
RO,WToO,member
RO,WTrO,member
RO,ZC,member
TR,AsDB,nonregional member
TR,BIS,member
TR,BSEC,member
TR,CE,member
TR,CCC,member
TR,ECE,member
TR,ECO,member
TR,EBRD,member
TR,CERN,observer
TR,FAO,member
TR,IAEA,member
TR,IBRD,member
TR,ICC,member
TR,ICAO,member
TR,ICFTU,member
TR,Interpol,member
TR,IDA,Part II
TR,IEA,member
TR,IFRCS,member
TR,IFC,member
TR,IFAD,Category III
TR,ILO,member
TR,IMO,member
TR,Inmarsat,member
TR,IMF,member
TR,IOC,National Olympic Committee
TR,IOM,observer
TR,ISO,member
TR,ICRM,National Society
TR,ITU,member
TR,Intelsat,member
TR,IDB,member
TR,ANC,member
TR,NATO,member
TR,EN,member
TR,OECD,member
TR,OSCE,member
TR,OIC,member
TR,PCA,member
TR,UN,member
TR,UNCRO,member
TR,UNESCO,member
TR,UNIDO,member
TR,UNIKOM,member
TR,UNOMIG,member
TR,UNHCR,member
TR,UNRWA,member
TR,UPU,member
TR,WEU,associate member
TR,WFTU,member
TR,WHO,member
TR,WIPO,member
TR,WMO,member
TR,WToO,member
TR,WTrO,member
DK,AG,observer
DK,AfDB,nonregional member
DK,AsDB,nonregional member
DK,BIS,member
DK,CE,member
DK,CBSS,member
DK,CCC,member
DK,ECE,member
DK,EBRD,member
DK,EIB,member
DK,CERN,member
DK,ESA,member
DK,EU,member
DK,FAO,member
DK,G-9,member
DK,IADB,member
DK,IAEA,member
DK,IBRD,member
DK,ICC,member
DK,ICAO,member
DK,ICFTU,member
DK,Interpol,member
DK,IDA,Part I
DK,IEA,member
DK,IFRCS,member
DK,IFC,member
DK,IFAD,Category I
DK,ILO,member
DK,IMO,member
DK,Inmarsat,member
DK,IMF,member
DK,IOC,National Olympic Committee
DK,IOM,member
DK,ISO,member
DK,ICRM,National Society
DK,ITU,member
DK,Intelsat,member
DK,MTCR,member
DK,NC,member
DK,NIB,member
DK,ANC,member
DK,NATO,member
DK,EN,member
DK,NSG,member
DK,OECD,member
DK,OSCE,member
DK,PCA,member
DK,UN,member
DK,UNCRO,member
DK,UNESCO,member
DK,UNIDO,member
DK,UNIKOM,member
DK,UNMOGIP,member
DK,UNMOT,member
DK,UNOMIG,member
DK,UNHCR,member
DK,UNPREDEP,member
DK,UNPROFOR,member
DK,UNTSO,member
DK,UPU,member
DK,WEU,observer
DK,WFTU,member
DK,WHO,member
DK,WIPO,member
DK,WMO,member
DK,WTrO,member
DK,ZC,member
EW,BIS,member
EW,CE,member
EW,CBSS,member
EW,CCC,member
EW,ECE,member
EW,EBRD,member
EW,EU,membership applicant
EW,FAO,member
EW,IAEA,member
EW,IBRD,member
EW,ICAO,member
EW,ICFTU,member
EW,Interpol,member
EW,IFRCS,member
EW,IFC,member
EW,ILO,member
EW,IMO,member
EW,IMF,member
EW,IOC,National Olympic Committee
EW,ISO,correspondent member
EW,ICRM,National Society
EW,ITU,member
EW,ANC,member
EW,OSCE,member
EW,PFP,member
EW,UN,member
EW,UNCRO,member
EW,UNESCO,member
EW,UPU,member
EW,WEU,associate partner
EW,WHO,member
EW,WIPO,member
EW,WMO,member
EW,WTrO,applicant
SF,AG,observer
SF,NAM,guest
SF,AfDB,nonregional member
SF,AsDB,nonregional member
SF,BIS,member
SF,CE,member
SF,CBSS,member
SF,CCC,member
SF,ECE,member
SF,EBRD,member
SF,EIB,member
SF,CERN,member
SF,ESA,member
SF,EU,member
SF,FAO,member
SF,G-9,member
SF,IADB,member
SF,IAEA,member
SF,IBRD,member
SF,ICC,member
SF,ICAO,member
SF,ICFTU,member
SF,Interpol,member
SF,IDA,Part I
SF,IEA,member
SF,IFRCS,member
SF,IFC,member
SF,IFAD,Category I
SF,ILO,member
SF,IMO,member
SF,Inmarsat,member
SF,IMF,member
SF,IOC,National Olympic Committee
SF,IOM,member
SF,ISO,member
SF,ICRM,National Society
SF,ITU,member
SF,Intelsat,member
SF,MTCR,member
SF,NC,member
SF,NIB,member
SF,ANC,member
SF,EN,member
SF,NSG,member
SF,OECD,member
SF,OSCE,member
SF,OAS,observer
SF,PFP,member
SF,PCA,member
SF,UN,member
SF,UNCRO,member
SF,UNESCO,member
SF,UNFICYP,member
SF,UNIDO,member
SF,UNIFIL,member
SF,UNIKOM,member
SF,UNMOGIP,member
SF,UNHCR,member
SF,UNPREDEP,member
SF,UNPROFOR,member
SF,UNTSO,member
SF,UPU,member
SF,WEU,observer
SF,WFTU,member
SF,WHO,member
SF,WIPO,member
SF,WMO,member
SF,WToO,member
SF,WTrO,member
SF,ZC,member
N,NAM,guest
N,AfDB,nonregional member
N,AsDB,nonregional member
N,BIS,member
N,CE,member
N,CBSS,member
N,CCC,member
N,ECE,member
N,EBRD,member
N,EFTA,member
N,CERN,member
N,ESA,member
N,FAO,member
N,IADB,member
N,IAEA,member
N,IBRD,member
N,ICC,member
N,ICAO,member
N,ICFTU,member
N,Interpol,member
N,IDA,Part I
N,IEA,member
N,IFRCS,member
N,IFC,member
N,IFAD,Category I
N,ILO,member
N,IMO,member
N,Inmarsat,member
N,IMF,member
N,IOC,National Olympic Committee
N,IOM,member
N,ISO,member
N,ICRM,National Society
N,ITU,member
N,Intelsat,member
N,MTCR,member
N,NC,member
N,NIB,member
N,ANC,member
N,NATO,member
N,EN,member
N,NSG,member
N,OECD,member
N,OSCE,member
N,PCA,member
N,UN,member
N,UNAVEM III,member
N,UNCRO,member
N,UNESCO,member
N,UNIDO,member
N,UNITAR,member
N,UNIFIL,member
N,MINURSO,member
N,UNHCR,member
N,UNPREDEP,member
N,UNPROFOR,member
N,UNTSO,member
N,UPU,member
N,WEU,associate member
N,WHO,member
N,WIPO,member
N,WMO,member
N,WTrO,member
N,ZC,member
S,AG,observer
S,NAM,guest
S,AfDB,nonregional member
S,AsDB,nonregional member
S,BIS,member
S,CE,member
S,CBSS,member
S,CCC,member
S,ECE,member
S,EBRD,member
S,EIB,member
S,CERN,member
S,ESA,member
S,EU,member
S,FAO,member
S,G-6,member
S,G-8,member
S,G-9,member
S,G-10,member
S,IADB,member
S,IAEA,member
S,IBRD,member
S,ICC,member
S,ICAO,member
S,ICFTU,member
S,Interpol,member
S,IDA,Part I
S,IEA,member
S,IFRCS,member
S,IFC,member
S,IFAD,Category I
S,ILO,member
S,IMO,member
S,Inmarsat,member
S,IMF,member
S,IOC,National Olympic Committee
S,IOM,member
S,ISO,member
S,ICRM,National Society
S,ITU,member
S,Intelsat,member
S,MTCR,member
S,NC,member
S,NIB,member
S,ANC,member
S,EN,member
S,NSG,member
S,OECD,member
S,OSCE,member
S,PFP,member
S,PCA,member
S,UN,member
S,UNAVEM III,member
S,UNCRO,member
S,UNESCO,member
S,UNIDO,member
S,UNITAR,member
S,UNIKOM,member
S,UNMOGIP,member
S,UNOMIG,member
S,UNHCR,member
S,UNPREDEP,member
S,UNPROFOR,member
S,UNTSO,member
S,UPU,member
S,WEU,observer
S,WFTU,member
S,WHO,member
S,WIPO,member
S,WMO,member
S,WTrO,member
S,ZC,member
MC,ACCT,member
MC,ECE,member
MC,IAEA,member
MC,ICAO,member
MC,Interpol,member
MC,IFRCS,member
MC,IMO,member
MC,Inmarsat,member
MC,IOC,National Olympic Committee
MC,ICRM,National Society
MC,ITU,member
MC,Intelsat,member
MC,OSCE,member
MC,UN,member
MC,UNESCO,member
MC,UPU,member
MC,WHO,member
MC,WIPO,member
V,IAEA,member
V,ICFTU,member
V,IOM,observer
V,ITU,member
V,Intelsat,member
V,OSCE,member
V,OAS,observer
V,UN,observer
V,UNHCR,member
V,UPU,member
V,WIPO,member
V,WToO,observer
IS,BIS,member
IS,CE,member
IS,CCC,member
IS,ECE,member
IS,EBRD,member
IS,EFTA,member
IS,FAO,member
IS,IAEA,member
IS,IBRD,member
IS,ICC,member
IS,ICAO,member
IS,ICFTU,member
IS,Interpol,member
IS,IDA,Part I
IS,IFRCS,member
IS,IFC,member
IS,ILO,member
IS,IMO,member
IS,Inmarsat,member
IS,IMF,member
IS,IOC,National Olympic Committee
IS,ISO,member
IS,ICRM,National Society
IS,ITU,member
IS,Intelsat,member
IS,MTCR,member
IS,NC,member
IS,NIB,member
IS,ANC,member
IS,NATO,member
IS,EN,member
IS,OECD,member
IS,OSCE,member
IS,PCA,member
IS,UN,member
IS,UNESCO,member
IS,UNU,member
IS,UPU,member
IS,WEU,associate member
IS,WHO,member
IS,WIPO,member
IS,WMO,member
IS,WTrO,member
IRL,BIS,member
IRL,CE,member
IRL,CCC,member
IRL,ECE,member
IRL,EBRD,member
IRL,EIB,member
IRL,ESA,member
IRL,EU,member
IRL,FAO,member
IRL,IAEA,member
IRL,IBRD,member
IRL,ICC,member
IRL,ICAO,member
IRL,Interpol,member
IRL,IDA,Part I
IRL,IEA,member
IRL,IFRCS,member
IRL,IFC,member
IRL,IFAD,Category I
IRL,ILO,member
IRL,IMO,member
IRL,IMF,member
IRL,IOC,National Olympic Committee
IRL,ISO,member
IRL,ICRM,National Society
IRL,ITU,member
IRL,Intelsat,member
IRL,MTCR,member
IRL,EN,member
IRL,NSG,member
IRL,OECD,member
IRL,OSCE,member
IRL,UN,member
IRL,UNCRO,member
IRL,UNESCO,member
IRL,UNFICYP,member
IRL,UNIDO,member
IRL,UNIFIL,member
IRL,UNIKOM,member
IRL,MINURSO,member
IRL,UNMIH,member
IRL,UNPREDEP,member
IRL,UNPROFOR,member
IRL,UNTSO,member
IRL,UPU,member
IRL,WEU,observer
IRL,WHO,member
IRL,WIPO,member
IRL,WMO,member
IRL,WTrO,member
IRL,ZC,member
RSM,NAM,guest
RSM,CE,member
RSM,ECE,member
RSM,ICAO,member
RSM,ICFTU,member
RSM,IFRCS,member
RSM,ILO,member
RSM,IMF,member
RSM,IOC,National Olympic Committee
RSM,IOM,observer
RSM,ICRM,National Society
RSM,ITU,member
RSM,OSCE,member
RSM,UN,member
RSM,UNESCO,member
RSM,UPU,member
RSM,WHO,member
RSM,WIPO,member
RSM,WToO,member
M,C,member
M,NAM,member
M,CE,member
M,CCC,member
M,ECE,member
M,EBRD,member
M,EU,membership applicant
M,FAO,member
M,G-77,member
M,IBRD,member
M,ICAO,member
M,ICFTU,member
M,Interpol,member
M,IFRCS,member
M,IFAD,Category III
M,ILO,member
M,IMO,member
M,Inmarsat,member
M,IMF,member
M,IOC,National Olympic Committee
M,IOM,observer
M,ISO,correspondent member
M,ICRM,National Society
M,ITU,member
M,Intelsat,member
M,ANC,member
M,OSCE,member
M,PFP,member
M,PCA,member
M,UN,member
M,UNESCO,member
M,UNIDO,member
M,UPU,member
M,WCL,member
M,WHO,member
M,WIPO,member
M,WMO,member
M,WToO,member
M,WTrO,member
MD,BSEC,member
MD,CIS,member
MD,CE,member
MD,CCC,member
MD,ECE,member
MD,EBRD,member
MD,FAO,member
MD,IBRD,member
MD,ICAO,member
MD,Interpol,member
MD,IDA,Part II
MD,IFC,member
MD,ILO,member
MD,IMF,member
MD,IOC,National Olympic Committee
MD,IOM,observer
MD,ITU,member
MD,Intelsat,nonsignatory user
MD,ANC,member
MD,OSCE,member
MD,PFP,member
MD,UN,member
MD,UNESCO,member
MD,UNIDO,member
MD,UPU,member
MD,WHO,member
MD,WIPO,member
MD,WMO,member
MD,WToO,member
MD,WTrO,applicant
P,NAM,guest
P,AfDB,nonregional member
P,BIS,member
P,CE,member
P,CCC,member
P,ECE,member
P,ECLAC,member
P,EBRD,member
P,EIB,member
P,CERN,member
P,EU,member
P,FAO,member
P,IADB,member
P,IAEA,member
P,IBRD,member
P,ICC,member
P,ICAO,member
P,ICFTU,member
P,Interpol,member
P,IDA,Part II
P,IEA,member
P,IFRCS,member
P,IFC,member
P,IFAD,Category III
P,ILO,member
P,IMO,member
P,Inmarsat,member
P,IMF,member
P,IOC,National Olympic Committee
P,IOM,member
P,ISO,member
P,ICRM,National Society
P,ITU,member
P,Intelsat,member
P,LAIA,observer
P,MTCR,member
P,ANC,member
P,NATO,member
P,EN,member
P,NSG,member
P,OECD,member
P,OSCE,member
P,OAS,observer
P,PCA,member
P,UN,member
P,UNAVEM III,member
P,UNCRO,member
P,UNESCO,member
P,UNIDO,member
P,UNPREDEP,member
P,UNPROFOR,member
P,UPU,member
P,WEU,member
P,WCL,member
P,WFTU,member
P,WHO,member
P,WIPO,member
P,WMO,member
P,WToO,member
P,WTrO,member
P,ZC,member
GB,AG,observer
GB,C,member
GB,AfDB,nonregional member
GB,AsDB,nonregional member
GB,BIS,member
GB,CDB,nonregional member
GB,CE,member
GB,CCC,member
GB,ESCAP,member
GB,ECA,associate member
GB,ECE,member
GB,ECLAC,member
GB,EBRD,member
GB,EIB,member
GB,CERN,member
GB,ESA,member
GB,EU,member
GB,FAO,member
GB,G-5,member
GB,G-10,member
GB,IADB,member
GB,IAEA,member
GB,IBRD,member
GB,ICC,member
GB,ICAO,member
GB,ICFTU,member
GB,Interpol,member
GB,IDA,Part I
GB,IEA,member
GB,IFRCS,member
GB,IFC,member
GB,IFAD,Category I
GB,ILO,member
GB,IMO,member
GB,Inmarsat,member
GB,IMF,member
GB,IOC,National Olympic Committee
GB,IOM,observer
GB,ISO,member
GB,ICRM,National Society
GB,ITU,member
GB,Intelsat,member
GB,MTCR,member
GB,ANC,member
GB,NATO,member
GB,EN,member
GB,NSG,member
GB,OECD,member
GB,OSCE,member
GB,PCA,member
GB,SPC,member
GB,UN,member
GB,UNAVEM III,member
GB,UNCRO,member
GB,UNFICYP,member
GB,UNIDO,member
GB,UNITAR,member
GB,UNIKOM,member
GB,UNOMIG,member
GB,UNHCR,member
GB,UNPREDEP,member
GB,UNPROFOR,member
GB,UNRWA,member
GB,UNU,member
GB,UPU,member
GB,WEU,member
GB,WCL,member
GB,WHO,member
GB,WIPO,member
GB,WMO,member
GB,WTrO,member
GB,ZC,member
AFG,NAM,member
AFG,AsDB,regional member
AFG,CP,member
AFG,ESCAP,member
AFG,ECO,member
AFG,FAO,member
AFG,G-77,member
AFG,IAEA,member
AFG,IBRD,member
AFG,ICAO,member
AFG,IDA,Part II
AFG,IFRCS,member
AFG,IFC,member
AFG,IFAD,Category III
AFG,ILO,member
AFG,IMF,member
AFG,IOC,National Olympic Committee
AFG,IOM,observer
AFG,ICRM,National Society
AFG,ITU,member
AFG,Intelsat,member
AFG,IDB,member
AFG,OIC,member
AFG,UN,member
AFG,UNESCO,member
AFG,UNIDO,member
AFG,UPU,member
AFG,WFTU,member
AFG,WHO,member
AFG,WMO,member
AFG,WToO,member
TJ,NAM,observer
TJ,AfDB,nonregional member
TJ,APEC,member
TJ,AsDB,regional member
TJ,Mekong Group,member
TJ,CCC,member
TJ,ESCAP,member
TJ,FAO,member
TJ,IAEA,member
TJ,IBRD,member
TJ,ICAO,member
TJ,ICFTU,member
TJ,Interpol,member
TJ,IDA,Part II
TJ,IFRCS,member
TJ,IFC,member
TJ,IFAD,Category III
TJ,ILO,member
TJ,IMO,member
TJ,Inmarsat,member
TJ,IMF,member
TJ,IOC,National Olympic Committee
TJ,ISO,member
TJ,ICRM,National Society
TJ,ITU,member
TJ,Intelsat,member
TJ,LAIA,observer
TJ,PCA,member
TJ,UN,member
TJ,UNESCO,member
TJ,UNIDO,member
TJ,UNITAR,member
TJ,UNIKOM,member
TJ,MINURSO,member
TJ,UNOMIL,member
TJ,UNHCR,member
TJ,UNTSO,member
TJ,UNU,member
TJ,UPU,member
TJ,WHO,member
TJ,WIPO,member
TJ,WMO,member
TJ,WToO,member
TJ,WTrO,applicant
IR,NAM,member
IR,CP,member
IR,CCC,member
IR,ESCAP,member
IR,ECO,member
IR,FAO,member
IR,G-19,member
IR,G-24,member
IR,G-77,member
IR,IAEA,member
IR,IBRD,member
IR,ICC,member
IR,ICAO,member
IR,Interpol,member
IR,IDA,Part II
IR,IFRCS,member
IR,IFC,member
IR,IFAD,Category II
IR,ILO,member
IR,IMO,member
IR,Inmarsat,member
IR,IMF,member
IR,IOC,National Olympic Committee
IR,IOM,observer
IR,ISO,member
IR,ICRM,National Society
IR,ITU,member
IR,Intelsat,member
IR,IDB,member
IR,OPEC,member
IR,OIC,member
IR,PCA,member
IR,UN,member
IR,UNESCO,member
IR,UNIDO,member
IR,UNHCR,member
IR,UPU,member
IR,WCL,member
IR,WFTU,member
IR,WHO,member
IR,WIPO,member
IR,WMO,member
IR,WToO,member
PK,C,member
PK,NAM,member
PK,AsDB,regional member
PK,CP,member
PK,CCC,member
PK,ESCAP,member
PK,ECO,member
PK,FAO,member
PK,G-19,member
PK,G-24,member
PK,G-77,member
PK,IAEA,member
PK,IBRD,member
PK,ICC,member
PK,ICAO,member
PK,ICFTU,member
PK,Interpol,member
PK,IDA,Part II
PK,IFRCS,member
PK,IFC,member
PK,IFAD,Category III
PK,ILO,member
PK,IMO,member
PK,Inmarsat,member
PK,IMF,member
PK,IOC,National Olympic Committee
PK,IOM,member
PK,ISO,member
PK,ICRM,National Society
PK,ITU,member
PK,Intelsat,member
PK,IDB,member
PK,OAS,observer
PK,OIC,member
PK,PCA,member
PK,SAARC,member
PK,UN,member
PK,UNAVEM III,member
PK,UNAMIR,member
PK,UNCRO,member
PK,UNESCO,member
PK,UNIDO,member
PK,UNITAR,member
PK,UNIKOM,member
PK,MINURSO,member
PK,UNMIH,member
PK,UNOMIG,member
PK,UNOMIL,member
PK,UNHCR,member
PK,UNPREDEP,member
PK,UNPROFOR,member
PK,UPU,member
PK,WCL,member
PK,WFTU,member
PK,WHO,member
PK,WIPO,member
PK,WMO,member
PK,WToO,member
PK,WTrO,member
TAD,CIS,member
TAD,ESCAP,member
TAD,ECE,member
TAD,ECO,member
TAD,EBRD,member
TAD,FAO,member
TAD,IBRD,member
TAD,ICAO,member
TAD,IDA,Part II
TAD,IFC,member
TAD,IFAD,Category III
TAD,ILO,member
TAD,IMF,member
TAD,IOC,National Olympic Committee
TAD,IOM,member
TAD,ITU,member
TAD,Intelsat,nonsignatory user
TAD,IDB,member
TAD,ANC,member
TAD,OSCE,member
TAD,OIC,member
TAD,UN,member
TAD,UNESCO,member
TAD,UNIDO,member
TAD,UPU,member
TAD,WHO,member
TAD,WIPO,member
TAD,WMO,member
TAD,WTrO,observer
TM,CIS,member
TM,CCC,member
TM,ESCAP,member
TM,ECE,member
TM,ECO,member
TM,EBRD,member
TM,FAO,member
TM,IBRD,member
TM,ICAO,member
TM,IFRCS,member
TM,ILO,member
TM,IMO,member
TM,IMF,member
TM,IOC,National Olympic Committee
TM,ISO,correspondent member
TM,ITU,member
TM,Intelsat,nonsignatory user
TM,IDB,member
TM,ANC,member
TM,OSCE,member
TM,OIC,member
TM,PFP,member
TM,UN,member
TM,UNESCO,member
TM,UPU,member
TM,WHO,member
TM,WMO,member
TM,WToO,member
TM,WTrO,observer
UZB,NAM,member
UZB,AsDB,regional member
UZB,CIS,member
UZB,CCC,member
UZB,ESCAP,member
UZB,ECE,member
UZB,ECO,member
UZB,EBRD,member
UZB,IAEA,member
UZB,IBRD,member
UZB,ICAO,member
UZB,Interpol,member
UZB,IDA,Part II
UZB,IFRCS,member
UZB,IFC,member
UZB,ILO,member
UZB,IMF,member
UZB,IOC,National Olympic Committee
UZB,ISO,member
UZB,ITU,member
UZB,ANC,member
UZB,OSCE,member
UZB,OIC,observer
UZB,PFP,member
UZB,UN,member
UZB,UNESCO,member
UZB,UNIDO,member
UZB,UPU,member
UZB,WHO,member
UZB,WIPO,member
UZB,WMO,member
UZB,WToO,member
UZB,WTrO,applicant
ARM,NAM,observer
ARM,BSEC,member
ARM,CIS,member
ARM,CCC,member
ARM,ESCAP,member
ARM,ECE,member
ARM,EBRD,member
ARM,FAO,member
ARM,IAEA,member
ARM,IBRD,member
ARM,ICAO,member
ARM,Interpol,member
ARM,IDA,Part II
ARM,IFRCS,member
ARM,IFC,member
ARM,IFAD,Category III
ARM,ILO,member
ARM,IMF,member
ARM,IOC,National Olympic Committee
ARM,IOM,member
ARM,ITU,member
ARM,Intelsat,member
ARM,ANC,member
ARM,OSCE,member
ARM,PFP,member
ARM,UN,member
ARM,UNESCO,member
ARM,UNIDO,member
ARM,UPU,member
ARM,WHO,member
ARM,WIPO,member
ARM,WMO,member
ARM,WTrO,applicant
GE,BSEC,member
GE,CIS,member
GE,CCC,member
GE,ECE,member
GE,EBRD,member
GE,FAO,member
GE,IBRD,member
GE,ICAO,member
GE,Interpol,member
GE,IDA,Part II
GE,IFC,member
GE,IFAD,Category III
GE,ILO,member
GE,IMO,member
GE,Inmarsat,member
GE,IMF,member
GE,IOC,National Olympic Committee
GE,IOM,observer
GE,ITU,member
GE,ANC,member
GE,OSCE,member
GE,PFP,member
GE,UN,member
GE,UNESCO,member
GE,UNIDO,member
GE,UPU,member
GE,WHO,member
GE,WIPO,member
GE,WMO,member
GE,WToO,member
AZ,NAM,observer
AZ,BSEC,member
AZ,CIS,member
AZ,CCC,member
AZ,ESCAP,member
AZ,ECE,member
AZ,ECO,member
AZ,EBRD,member
AZ,FAO,member
AZ,IBRD,member
AZ,ICAO,member
AZ,Interpol,member
AZ,IDA,Part II
AZ,IFRCS,member
AZ,IFAD,Category III
AZ,ILO,member
AZ,IMO,member
AZ,IMF,member
AZ,IOC,National Olympic Committee
AZ,ITU,member
AZ,Intelsat,member
AZ,IDB,member
AZ,ANC,member
AZ,OSCE,member
AZ,OIC,member
AZ,PFP,member
AZ,UN,member
AZ,UNESCO,member
AZ,UNIDO,member
AZ,UPU,member
AZ,WHO,member
AZ,WIPO,member
AZ,WMO,member
AZ,WTrO,observer
BRN,AL,member
BRN,NAM,member
BRN,ABEDA,member
BRN,AFESD,member
BRN,AMF,member
BRN,ESCWA,member
BRN,FAO,member
BRN,G-77,member
BRN,GCC,member
BRN,IBRD,member
BRN,ICAO,member
BRN,Interpol,member
BRN,IFRCS,member
BRN,ILO,member
BRN,IMO,member
BRN,Inmarsat,member
BRN,IMF,member
BRN,IOC,National Olympic Committee
BRN,ISO,correspondent member
BRN,ICRM,National Society
BRN,ITU,member
BRN,Intelsat,member
BRN,IDB,member
BRN,OAPEC,member
BRN,OIC,member
BRN,UN,member
BRN,UNESCO,member
BRN,UNIDO,member
BRN,UPU,member
BRN,WFTU,member
BRN,WHO,member
BRN,WIPO,member
BRN,WMO,member
BRN,WTrO,member
BD,C,member
BD,NAM,member
BD,AsDB,regional member
BD,CP,member
BD,CCC,member
BD,ESCAP,member
BD,FAO,member
BD,G-77,member
BD,IAEA,member
BD,IBRD,member
BD,ICAO,member
BD,ICFTU,member
BD,Interpol,member
BD,IDA,Part II
BD,IFRCS,member
BD,IFC,member
BD,IFAD,Category III
BD,ILO,member
BD,IMO,member
BD,Inmarsat,member
BD,IMF,member
BD,IOC,National Olympic Committee
BD,IOM,member
BD,ISO,member
BD,ICRM,National Society
BD,ITU,member
BD,Intelsat,member
BD,IDB,member
BD,OIC,member
BD,SAARC,member
BD,UN,member
BD,UNAVEM III,member
BD,UNAMIR,member
BD,UNCRO,member
BD,UNESCO,member
BD,UNIDO,member
BD,UNIKOM,member
BD,MINURSO,member
BD,UNMIH,member
BD,UNMOT,member
BD,UNOMIG,member
BD,UNHCR,member
BD,UNPREDEP,member
BD,UNPROFOR,member
BD,UNU,member
BD,UPU,member
BD,WCL,member
BD,WFTU,member
BD,WHO,member
BD,WIPO,member
BD,WMO,member
BD,WToO,member
BD,WTrO,member
MYA,NAM,member
MYA,AsDB,regional member
MYA,Mekong Group,member
MYA,CP,member
MYA,CCC,member
MYA,ESCAP,member
MYA,FAO,member
MYA,G-77,member
MYA,IAEA,member
MYA,IBRD,member
MYA,ICAO,member
MYA,Interpol,member
MYA,IDA,Part II
MYA,IFRCS,member
MYA,IFC,member
MYA,IFAD,Category III
MYA,ILO,member
MYA,IMO,member
MYA,IMF,member
MYA,IOC,National Olympic Committee
MYA,ICRM,National Society
MYA,ITU,member
MYA,Intelsat,nonsignatory user
MYA,UN,member
MYA,UNESCO,member
MYA,UNIDO,member
MYA,UPU,member
MYA,WHO,member
MYA,WMO,member
MYA,WTrO,member
IND,AG,observer
IND,C,member
IND,NAM,member
IND,AfDB,nonregional member
IND,AsDB,regional member
IND,CP,member
IND,CCC,member
IND,ESCAP,member
IND,FAO,member
IND,G-6,member
IND,G-15,member
IND,G-19,member
IND,G-24,member
IND,G-77,member
IND,IAEA,member
IND,IBRD,member
IND,ICC,member
IND,ICAO,member
IND,ICFTU,member
IND,Interpol,member
IND,IDA,Part II
IND,IFRCS,member
IND,IFC,member
IND,IFAD,Category III
IND,ILO,member
IND,IMO,member
IND,Inmarsat,member
IND,IMF,member
IND,IOC,National Olympic Committee
IND,IOM,observer
IND,ISO,member
IND,ICRM,National Society
IND,ITU,member
IND,Intelsat,member
IND,OAS,observer
IND,PCA,member
IND,SAARC,member
IND,UN,member
IND,UNAVEM III,member
IND,UNAMIR,member
IND,UNESCO,member
IND,UNIDO,member
IND,UNITAR,member
IND,UNIKOM,member
IND,UNMIH,member
IND,UNOMIL,member
IND,UNHCR,member
IND,UNU,member
IND,UPU,member
IND,WFTU,member
IND,WHO,member
IND,WIPO,member
IND,WMO,member
IND,WToO,member
IND,WTrO,member
BHT,NAM,member
BHT,AsDB,regional member
BHT,CP,member
BHT,ESCAP,member
BHT,FAO,member
BHT,G-77,member
BHT,IBRD,member
BHT,ICAO,member
BHT,IDA,Part II
BHT,IFAD,Category III
BHT,IMF,member
BHT,IOC,National Olympic Committee
BHT,ITU,member
BHT,Intelsat,member
BHT,SAARC,member
BHT,UN,member
BHT,UNESCO,member
BHT,UNIDO,member
BHT,UPU,member
BHT,WHO,member
BHT,WIPO,member
BRU,C,member
BRU,NAM,member
BRU,ASEAN,member
BRU,Mekong Group,member
BRU,ESCAP,member
BRU,FAO,member
BRU,G-77,member
BRU,IBRD,member
BRU,ICAO,member
BRU,Interpol,member
BRU,IMO,member
BRU,Inmarsat,member
BRU,IMF,member
BRU,IOC,National Olympic Committee
BRU,ISO,correspondent member
BRU,ITU,member
BRU,Intelsat,member
BRU,IDB,member
BRU,OIC,member
BRU,UN,member
BRU,UPU,member
BRU,WHO,member
BRU,WIPO,member
BRU,WMO,member
BRU,WTrO,member
MAL,C,member
MAL,NAM,member
MAL,AsDB,regional member
MAL,ASEAN,member
MAL,Mekong Group,member
MAL,CP,member
MAL,CCC,member
MAL,ESCAP,member
MAL,FAO,member
MAL,G-15,member
MAL,G-77,member
MAL,IAEA,member
MAL,IBRD,member
MAL,ICAO,member
MAL,ICFTU,member
MAL,Interpol,member
MAL,IDA,Part II
MAL,IFRCS,member
MAL,IFC,member
MAL,IFAD,Category III
MAL,ILO,member
MAL,IMO,member
MAL,Inmarsat,member
MAL,IMF,member
MAL,IOC,National Olympic Committee
MAL,ISO,member
MAL,ICRM,National Society
MAL,ITU,member
MAL,Intelsat,member
MAL,IDB,member
MAL,OIC,member
MAL,UN,member
MAL,UNAVEM III,member
MAL,UNCRO,member
MAL,UNESCO,member
MAL,UNIDO,member
MAL,UNIKOM,member
MAL,MINURSO,member
MAL,UNOMIL,member
MAL,UNPREDEP,member
MAL,UNPROFOR,member
MAL,UPU,member
MAL,WCL,member
MAL,WFTU,member
MAL,WHO,member
MAL,WIPO,member
MAL,WMO,member
MAL,WToO,member
MAL,WTrO,member
LAO,NAM,member
LAO,ACCT,member
LAO,AsDB,regional member
LAO,ASEAN,observer
LAO,Mekong Group,member
LAO,CP,member
LAO,ESCAP,member
LAO,FAO,member
LAO,G-77,member
LAO,IBRD,member
LAO,ICAO,member
LAO,Interpol,member
LAO,IDA,Part II
LAO,IFRCS,member
LAO,IFC,member
LAO,IFAD,Category III
LAO,ILO,member
LAO,IMF,member
LAO,IOC,National Olympic Committee
LAO,ICRM,National Society
LAO,ITU,member
LAO,Intelsat,nonsignatory user
LAO,PCA,member
LAO,UN,member
LAO,UNESCO,member
LAO,UNIDO,member
LAO,UPU,member
LAO,WFTU,member
LAO,WHO,member
LAO,WIPO,member
LAO,WMO,member
LAO,WToO,member
LAO,WTrO,observer
THA,NAM,member
THA,AsDB,regional member
THA,ASEAN,member
THA,Mekong Group,member
THA,CP,member
THA,CCC,member
THA,ESCAP,member
THA,FAO,member
THA,G-77,member
THA,IAEA,member
THA,IBRD,member
THA,ICAO,member
THA,ICFTU,member
THA,Interpol,member
THA,IDA,Part II
THA,IFRCS,member
THA,IFC,member
THA,IFAD,Category III
THA,ILO,member
THA,IMO,member
THA,IMF,member
THA,IOC,National Olympic Committee
THA,IOM,member
THA,ISO,member
THA,ICRM,National Society
THA,ITU,member
THA,Intelsat,member
THA,PCA,member
THA,UN,member
THA,UNESCO,member
THA,UNIDO,member
THA,UNIKOM,member
THA,UNHCR,member
THA,UNU,member
THA,UPU,member
THA,WCL,member
THA,WFTU,member
THA,WHO,member
THA,WIPO,member
THA,WMO,member
THA,WTrO,member
K,NAM,member
K,ACCT,member
K,AsDB,regional member
K,Mekong Group,member
K,CP,member
K,ESCAP,member
K,FAO,member
K,G-77,member
K,IAEA,member
K,IBRD,member
K,ICAO,member
K,Interpol,member
K,IDA,Part II
K,IFRCS,member
K,IFAD,Category III
K,ILO,member
K,IMO,member
K,IMF,member
K,ICRM,National Society
K,ITU,member
K,Intelsat,nonsignatory user
K,PCA,member
K,UN,member
K,UNESCO,member
K,UNIDO,member
K,UPU,member
K,WFTU,member
K,WHO,member
K,WIPO,member
K,WMO,member
K,WToO,member
K,WTrO,applicant
VN,NAM,member
VN,ACCT,member
VN,AsDB,regional member
VN,ASEAN,member
VN,Mekong Group,member
VN,CCC,member
VN,ESCAP,member
VN,FAO,member
VN,G-77,member
VN,IAEA,member
VN,IBRD,member
VN,ICAO,member
VN,Interpol,member
VN,IDA,Part II
VN,IFRCS,member
VN,IFC,member
VN,IFAD,Category III
VN,ILO,member
VN,IMO,member
VN,IMF,member
VN,IOC,National Olympic Committee
VN,IOM,observer
VN,ISO,member
VN,ICRM,National Society
VN,ITU,member
VN,Intelsat,member
VN,UN,member
VN,UNESCO,member
VN,UNIDO,member
VN,UPU,member
VN,WCL,member
VN,WFTU,member
VN,WHO,member
VN,WIPO,member
VN,WMO,member
VN,WToO,member
VN,WTrO,applicant
KAZ,AsDB,regional member
KAZ,CIS,member
KAZ,CCC,member
KAZ,ESCAP,member
KAZ,ECE,member
KAZ,ECO,member
KAZ,EBRD,member
KAZ,IAEA,member
KAZ,IBRD,member
KAZ,ICAO,member
KAZ,Interpol,member
KAZ,IDA,Part II
KAZ,IFC,member
KAZ,ILO,member
KAZ,IMO,member
KAZ,IMF,member
KAZ,IOC,National Olympic Committee
KAZ,ITU,member
KAZ,Intelsat,member
KAZ,IDB,member
KAZ,ANC,member
KAZ,OSCE,member
KAZ,OIC,member
KAZ,PFP,member
KAZ,UN,member
KAZ,UNESCO,member
KAZ,UPU,member
KAZ,WHO,member
KAZ,WIPO,member
KAZ,WMO,member
KAZ,WToO,member
KAZ,WTrO,observer
NOK,NAM,member
NOK,ESCAP,member
NOK,FAO,member
NOK,G-77,member
NOK,ICAO,member
NOK,IFRCS,member
NOK,IFAD,Category III
NOK,IMO,member
NOK,IOC,National Olympic Committee
NOK,ISO,member
NOK,ICRM,National Society
NOK,ITU,member
NOK,Intelsat,nonsignatory user
NOK,UN,member
NOK,UNESCO,member
NOK,UNIDO,member
NOK,UPU,member
NOK,WFTU,member
NOK,WHO,member
NOK,WIPO,member
NOK,WMO,member
NOK,WToO,member
KGZ,AsDB,regional member
KGZ,CIS,member
KGZ,ESCAP,member
KGZ,ECE,member
KGZ,ECO,member
KGZ,EBRD,member
KGZ,FAO,member
KGZ,IBRD,member
KGZ,ICAO,member
KGZ,IDA,Part II
KGZ,IFC,member
KGZ,IFAD,Category III
KGZ,ILO,member
KGZ,IMF,member
KGZ,IOC,National Olympic Committee
KGZ,IOM,observer
KGZ,ITU,member
KGZ,Intelsat,member
KGZ,IDB,member
KGZ,ANC,member
KGZ,OSCE,member
KGZ,OIC,member
KGZ,PFP,member
KGZ,PCA,member
KGZ,UN,member
KGZ,UNESCO,member
KGZ,UNIDO,member
KGZ,UPU,member
KGZ,WHO,member
KGZ,WIPO,member
KGZ,WMO,member
KGZ,WToO,member
KGZ,WTrO,observer
MNG,NAM,member
MNG,AsDB,regional member
MNG,CCC,member
MNG,ESCAP,member
MNG,FAO,member
MNG,G-77,member
MNG,IAEA,member
MNG,IBRD,member
MNG,ICAO,member
MNG,Interpol,member
MNG,IDA,Part II
MNG,IFRCS,member
MNG,IFC,member
MNG,IFAD,Category III
MNG,ILO,member
MNG,IMF,member
MNG,IOC,National Olympic Committee
MNG,ISO,member
MNG,ICRM,National Society
MNG,ITU,member
MNG,Intelsat,nonsignatory user
MNG,UN,member
MNG,UNESCO,member
MNG,UNIDO,member
MNG,UPU,member
MNG,WFTU,member
MNG,WHO,member
MNG,WIPO,member
MNG,WMO,member
MNG,WToO,member
MNG,WTrO,applicant
NEP,NAM,member
NEP,AsDB,regional member
NEP,CP,member
NEP,CCC,member
NEP,ESCAP,member
NEP,FAO,member
NEP,G-77,member
NEP,IBRD,member
NEP,ICAO,member
NEP,Interpol,member
NEP,IDA,Part II
NEP,IFRCS,member
NEP,IFC,member
NEP,IFAD,Category III
NEP,ILO,member
NEP,IMO,member
NEP,IMF,member
NEP,IOC,National Olympic Committee
NEP,ISO,correspondent member
NEP,ICRM,National Society
NEP,ITU,member
NEP,Intelsat,member
NEP,SAARC,member
NEP,UN,member
NEP,UNCRO,member
NEP,UNESCO,member
NEP,UNIDO,member
NEP,UNIFIL,member
NEP,UNMIH,member
NEP,UNPROFOR,member
NEP,UPU,member
NEP,WFTU,member
NEP,WHO,member
NEP,WMO,member
NEP,WToO,member
NEP,WTrO,applicant
CY,C,member
CY,NAM,member
CY,CE,member
CY,CCC,member
CY,ECE,member
CY,EBRD,member
CY,EU,membership applicant
CY,FAO,member
CY,G-77,member
CY,IAEA,member
CY,IBRD,member
CY,ICC,member
CY,ICAO,member
CY,ICFTU,member
CY,Interpol,member
CY,IDA,Part II
CY,IFRCS,associate member
CY,IFC,member
CY,IFAD,Category III
CY,ILO,member
CY,IMO,member
CY,Inmarsat,member
CY,IMF,member
CY,IOC,National Olympic Committee
CY,IOM,member
CY,ISO,member
CY,ITU,member
CY,Intelsat,member
CY,OSCE,member
CY,OAS,observer
CY,PCA,member
CY,UN,member
CY,UNESCO,member
CY,UNIDO,member
CY,UPU,member
CY,WCL,member
CY,WFTU,member
CY,WHO,member
CY,WIPO,member
CY,WMO,member
CY,WToO,member
CY,WTrO,member
IL,AG,observer
IL,BSEC,observer
IL,CE,observer
IL,CCC,member
IL,ECE,member
IL,EBRD,member
IL,CERN,observer
IL,FAO,member
IL,IADB,member
IL,IAEA,member
IL,IBRD,member
IL,ICC,member
IL,ICAO,member
IL,ICFTU,member
IL,Interpol,member
IL,IDA,Part II
IL,IFC,member
IL,IFAD,Category III
IL,ILO,member
IL,IMO,member
IL,Inmarsat,member
IL,IMF,member
IL,IOC,National Olympic Committee
IL,IOM,member
IL,ISO,member
IL,ITU,member
IL,Intelsat,member
IL,OAS,observer
IL,PCA,member
IL,UN,member
IL,UNESCO,member
IL,UNIDO,member
IL,UNHCR,member
IL,UPU,member
IL,WHO,member
IL,WIPO,member
IL,WMO,member
IL,WToO,member
IL,WTrO,member
ET,AL,member
ET,AG,observer
ET,NAM,member
ET,AfDB,regional member
ET,ACCT,associate member
ET,ABEDA,member
ET,ACC,member
ET,AFESD,member
ET,AMF,member
ET,BSEC,observer
ET,CAEU,member
ET,CCC,member
ET,ESCWA,member
ET,ECA,member
ET,EBRD,member
ET,FAO,member
ET,G-15,member
ET,G-19,member
ET,G-24,member
ET,G-77,member
ET,IAEA,member
ET,IBRD,member
ET,ICC,member
ET,ICAO,member
ET,Interpol,member
ET,IDA,Part II
ET,IFRCS,member
ET,IFC,member
ET,IFAD,Category III
ET,ILO,member
ET,IMO,member
ET,Inmarsat,member
ET,IMF,member
ET,IOC,National Olympic Committee
ET,IOM,member
ET,ISO,member
ET,ICRM,National Society
ET,ITU,member
ET,Intelsat,member
ET,IDB,member
ET,OAU,member
ET,OAS,observer
ET,OAPEC,member
ET,OIC,member
ET,PCA,member
ET,UN,member
ET,UNAVEM III,member
ET,UNCRO,member
ET,UNESCO,member
ET,UNIDO,member
ET,MINURSO,member
ET,UNOMIG,member
ET,UNOMIL,member
ET,UNPREDEP,member
ET,UNPROFOR,member
ET,UNRWA,member
ET,UPU,member
ET,WFTU,member
ET,WHO,member
ET,WIPO,member
ET,WMO,member
ET,WToO,member
ET,WTrO,member
RI,NAM,member
RI,AsDB,regional member
RI,ASEAN,member
RI,Mekong Group,member
RI,CP,member
RI,CCC,member
RI,ESCAP,member
RI,FAO,member
RI,G-15,member
RI,G-19,member
RI,G-77,member
RI,IAEA,member
RI,IBRD,member
RI,ICC,member
RI,ICAO,member
RI,ICFTU,member
RI,Interpol,member
RI,IDA,Part II
RI,IFRCS,member
RI,IFC,member
RI,IFAD,Category II
RI,ILO,member
RI,IMO,member
RI,Inmarsat,member
RI,IMF,member
RI,IOC,National Olympic Committee
RI,IOM,observer
RI,ISO,member
RI,ICRM,National Society
RI,ITU,member
RI,Intelsat,member
RI,IDB,member
RI,OPEC,member
RI,OIC,member
RI,UN,member
RI,UNCRO,member
RI,UNESCO,member
RI,UNIDO,member
RI,UNIKOM,member
RI,UNOMIG,member
RI,UNPREDEP,member
RI,UNPROFOR,member
RI,UPU,member
RI,WCL,member
RI,WFTU,member
RI,WHO,member
RI,WIPO,member
RI,WMO,member
RI,WToO,member
RI,WTrO,member
PNG,C,member
PNG,NAM,member
PNG,ACP,member
PNG,APEC,member
PNG,AsDB,regional member
PNG,CP,member
PNG,ESCAP,member
PNG,FAO,member
PNG,G-77,member
PNG,IBRD,member
PNG,ICAO,member
PNG,ICFTU,member
PNG,Interpol,member
PNG,IDA,Part II
PNG,IFRCS,member
PNG,IFC,member
PNG,IFAD,Category III
PNG,ILO,member
PNG,IMO,member
PNG,IMF,member
PNG,IOC,National Olympic Committee
PNG,ISO,correspondent member
PNG,ICRM,National Society
PNG,ITU,member
PNG,Intelsat,member
PNG,SPC,member
PNG,SPF,member
PNG,Sparteca,member
PNG,UN,member
PNG,UNESCO,member
PNG,UNIDO,member
PNG,UPU,member
PNG,WFTU,member
PNG,WHO,member
PNG,WMO,member
IRQ,AL,member
IRQ,NAM,member
IRQ,ABEDA,member
IRQ,ACC,member
IRQ,AFESD,member
IRQ,AMF,member
IRQ,CAEU,member
IRQ,CCC,member
IRQ,ESCWA,member
IRQ,FAO,member
IRQ,G-19,member
IRQ,G-77,member
IRQ,IAEA,member
IRQ,IBRD,member
IRQ,ICAO,member
IRQ,Interpol,member
IRQ,IDA,Part II
IRQ,IFRCS,member
IRQ,IFC,member
IRQ,IFAD,Category II
IRQ,ILO,member
IRQ,IMO,member
IRQ,Inmarsat,member
IRQ,IMF,member
IRQ,IOC,National Olympic Committee
IRQ,ICRM,National Society
IRQ,ITU,member
IRQ,Intelsat,member
IRQ,IDB,member
IRQ,OAPEC,member
IRQ,OPEC,member
IRQ,OIC,member
IRQ,PCA,member
IRQ,UN,member
IRQ,UNESCO,member
IRQ,UNIDO,member
IRQ,UPU,member
IRQ,WFTU,member
IRQ,WHO,member
IRQ,WIPO,member
IRQ,WMO,member
IRQ,WToO,member
JOR,AL,member
JOR,NAM,member
JOR,ABEDA,member
JOR,ACC,member
JOR,AFESD,member
JOR,AMF,member
JOR,CAEU,member
JOR,CCC,member
JOR,ESCWA,member
JOR,FAO,member
JOR,G-77,member
JOR,IAEA,member
JOR,IBRD,member
JOR,ICC,member
JOR,ICAO,member
JOR,Interpol,member
JOR,IDA,Part II
JOR,IFRCS,member
JOR,IFC,member
JOR,IFAD,Category III
JOR,ILO,member
JOR,IMO,member
JOR,IMF,member
JOR,IOC,National Olympic Committee
JOR,IOM,observer
JOR,ISO,correspondent member
JOR,ICRM,National Society
JOR,ITU,member
JOR,Intelsat,member
JOR,IDB,member
JOR,OIC,member
JOR,PCA,member
JOR,UN,member
JOR,UNAVEM III,member
JOR,UNAMIR,member
JOR,UNCRO,member
JOR,UNESCO,member
JOR,UNIDO,member
JOR,UNMIH,member
JOR,UNMOT,member
JOR,UNOMIG,member
JOR,UNOMIL,member
JOR,UNPREDEP,member
JOR,UNPROFOR,member
JOR,UNRWA,member
JOR,UPU,member
JOR,WFTU,member
JOR,WHO,member
JOR,WIPO,member
JOR,WMO,member
JOR,WToO,member
JOR,WTrO,applicant
KWT,AL,member
KWT,NAM,member
KWT,AfDB,nonregional member
KWT,ABEDA,member
KWT,AFESD,member
KWT,AMF,member
KWT,BDEAC,member
KWT,CAEU,member
KWT,CCC,member
KWT,ESCWA,member
KWT,FAO,member
KWT,G-77,member
KWT,GCC,member
KWT,IAEA,member
KWT,IBRD,member
KWT,ICC,member
KWT,ICAO,member
KWT,Interpol,member
KWT,IDA,Part I
KWT,IFRCS,member
KWT,IFC,member
KWT,IFAD,Category II
KWT,ILO,member
KWT,IMO,member
KWT,Inmarsat,member
KWT,IMF,member
KWT,IOC,National Olympic Committee
KWT,ISO,correspondent member
KWT,ICRM,National Society
KWT,ITU,member
KWT,Intelsat,member
KWT,IDB,member
KWT,OAPEC,member
KWT,OPEC,member
KWT,OIC,member
KWT,UN,member
KWT,UNESCO,member
KWT,UNIDO,member
KWT,UPU,member
KWT,WFTU,member
KWT,WHO,member
KWT,WMO,member
KWT,WToO,member
KWT,WTrO,member
SA,AL,member
SA,NAM,member
SA,AfDB,nonregional member
SA,ABEDA,member
SA,AFESD,member
SA,AMF,member
SA,CCC,member
SA,ESCWA,member
SA,FAO,member
SA,G-19,member
SA,G-77,member
SA,GCC,member
SA,IAEA,member
SA,IBRD,member
SA,ICC,member
SA,ICAO,member
SA,Interpol,member
SA,IDA,Part II
SA,IFRCS,member
SA,IFC,member
SA,IFAD,Category II
SA,ILO,member
SA,IMO,member
SA,Inmarsat,member
SA,IMF,member
SA,IOC,National Olympic Committee
SA,ISO,member
SA,ICRM,National Society
SA,ITU,member
SA,Intelsat,member
SA,IDB,member
SA,OAS,observer
SA,OAPEC,member
SA,OPEC,member
SA,OIC,member
SA,UN,member
SA,UNESCO,member
SA,UNIDO,member
SA,UPU,member
SA,WFTU,member
SA,WHO,member
SA,WIPO,member
SA,WMO,member
SA,WTrO,applicant
SYR,AL,member
SYR,NAM,member
SYR,ABEDA,member
SYR,AFESD,member
SYR,AMF,member
SYR,CAEU,member
SYR,CCC,member
SYR,ESCWA,member
SYR,FAO,member
SYR,G-24,member
SYR,G-77,member
SYR,IAEA,member
SYR,IBRD,member
SYR,ICC,member
SYR,ICAO,member
SYR,Interpol,member
SYR,IDA,Part II
SYR,IFRCS,member
SYR,IFC,member
SYR,IFAD,Category III
SYR,ILO,member
SYR,IMO,member
SYR,IMF,member
SYR,IOC,National Olympic Committee
SYR,ISO,member
SYR,ICRM,National Society
SYR,ITU,member
SYR,Intelsat,member
SYR,IDB,member
SYR,OAPEC,member
SYR,OIC,member
SYR,UN,member
SYR,UNESCO,member
SYR,UNIDO,member
SYR,UNRWA,member
SYR,UPU,member
SYR,WFTU,member
SYR,WHO,member
SYR,WMO,member
SYR,WToO,member
RL,AL,member
RL,NAM,member
RL,ACCT,member
RL,ABEDA,member
RL,AFESD,member
RL,AMF,member
RL,CCC,member
RL,ESCWA,member
RL,FAO,member
RL,G-24,member
RL,G-77,member
RL,IAEA,member
RL,IBRD,member
RL,ICC,member
RL,ICAO,member
RL,ICFTU,member
RL,Interpol,member
RL,IDA,Part II
RL,IFRCS,member
RL,IFC,member
RL,IFAD,Category III
RL,ILO,member
RL,IMO,member
RL,IMF,member
RL,IOC,National Olympic Committee
RL,ICRM,National Society
RL,ITU,member
RL,Intelsat,member
RL,IDB,member
RL,OIC,member
RL,PCA,member
RL,UN,member
RL,UNESCO,member
RL,UNIDO,member
RL,UNHCR,member
RL,UNRWA,member
RL,UPU,member
RL,WFTU,member
RL,WHO,member
RL,WIPO,member
RL,WMO,member
RL,WToO,member
J,AG,observer
J,AfDB,nonregional member
J,APEC,member
J,AsDB,regional member
J,BIS,member
J,CP,member
J,CCC,member
J,ESCAP,member
J,EBRD,member
J,FAO,member
J,G-2,member
J,G-5,member
J,G-8,member
J,G-10,member
J,IADB,member
J,IAEA,member
J,IBRD,member
J,ICC,member
J,ICAO,member
J,ICFTU,member
J,Interpol,member
J,IDA,Part I
J,IEA,member
J,IFRCS,member
J,IFC,member
J,IFAD,Category I
J,ILO,member
J,IMO,member
J,Inmarsat,member
J,IMF,member
J,IOC,National Olympic Committee
J,IOM,member
J,ISO,member
J,ICRM,National Society
J,ITU,member
J,Intelsat,member
J,MTCR,member
J,EN,member
J,NSG,member
J,OECD,member
J,OAS,observer
J,PCA,member
J,UN,member
J,UNESCO,member
J,UNIDO,member
J,UNITAR,member
J,UNHCR,member
J,UNRWA,member
J,UNU,member
J,UPU,member
J,WFTU,member
J,WHO,member
J,WIPO,member
J,WMO,member
J,WToO,member
J,WTrO,member
J,ZC,member
ROK,AfDB,nonregional member
ROK,APEC,member
ROK,AsDB,regional member
ROK,CP,member
ROK,CCC,member
ROK,ESCAP,member
ROK,EBRD,member
ROK,FAO,member
ROK,G-77,member
ROK,IAEA,member
ROK,IBRD,member
ROK,ICC,member
ROK,ICAO,member
ROK,ICFTU,member
ROK,Interpol,member
ROK,IDA,Part II
ROK,IFRCS,member
ROK,IFC,member
ROK,IFAD,Category III
ROK,ILO,member
ROK,IMO,member
ROK,Inmarsat,member
ROK,IMF,member
ROK,IOC,National Olympic Committee
ROK,IOM,member
ROK,ISO,member
ROK,ICRM,National Society
ROK,ITU,member
ROK,Intelsat,member
ROK,NSG,member
ROK,OAS,observer
ROK,UN,member
ROK,UNESCO,member
ROK,UNIDO,member
ROK,UNMOGIP,member
ROK,MINURSO,member
ROK,UNOMIG,member
ROK,UNU,member
ROK,UPU,member
ROK,WHO,member
ROK,WIPO,member
ROK,WMO,member
ROK,WToO,member
ROK,WTrO,member
MV,C,member
MV,NAM,member
MV,AsDB,regional member
MV,CP,member
MV,ESCAP,member
MV,FAO,member
MV,G-77,member
MV,IBRD,member
MV,ICAO,member
MV,Interpol,member
MV,IDA,Part II
MV,IFC,member
MV,IFAD,Category III
MV,IMO,member
MV,IMF,member
MV,IOC,National Olympic Committee
MV,ITU,member
MV,Intelsat,nonsignatory user
MV,IDB,member
MV,OIC,member
MV,SAARC,member
MV,UN,member
MV,UNESCO,member
MV,UNIDO,member
MV,UPU,member
MV,WHO,member
MV,WMO,member
MV,WToO,member
MV,WTrO,member
OM,AL,member
OM,NAM,member
OM,ABEDA,member
OM,AFESD,member
OM,AMF,member
OM,ESCWA,member
OM,FAO,member
OM,G-77,member
OM,GCC,member
OM,IBRD,member
OM,ICAO,member
OM,Interpol,member
OM,IDA,Part II
OM,IFC,member
OM,IFAD,Category III
OM,ILO,member
OM,IMO,member
OM,Inmarsat,member
OM,IMF,member
OM,IOC,National Olympic Committee
OM,ISO,correspondent member
OM,ITU,member
OM,Intelsat,member
OM,IDB,member
OM,OIC,member
OM,UN,member
OM,UNESCO,member
OM,UNIDO,member
OM,UPU,member
OM,WFTU,member
OM,WHO,member
OM,WMO,member
UAE,AL,member
UAE,NAM,member
UAE,AfDB,nonregional member
UAE,ABEDA,member
UAE,AFESD,member
UAE,AMF,member
UAE,CAEU,member
UAE,CCC,member
UAE,ESCWA,member
UAE,FAO,member
UAE,G-77,member
UAE,GCC,member
UAE,IAEA,member
UAE,IBRD,member
UAE,ICAO,member
UAE,Interpol,member
UAE,IDA,Part I
UAE,IFRCS,member
UAE,IFC,member
UAE,IFAD,Category II
UAE,ILO,member
UAE,IMO,member
UAE,Inmarsat,member
UAE,IMF,member
UAE,IOC,National Olympic Committee
UAE,ISO,correspondent member
UAE,ICRM,National Society
UAE,ITU,member
UAE,Intelsat,member
UAE,IDB,member
UAE,OAPEC,member
UAE,OPEC,member
UAE,OIC,member
UAE,UN,member
UAE,UNESCO,member
UAE,UNIDO,member
UAE,UPU,member
UAE,WHO,member
UAE,WIPO,member
UAE,WMO,member
UAE,WToO,member
YE,AL,member
YE,NAM,member
YE,ACC,member
YE,AFESD,member
YE,AMF,member
YE,CAEU,member
YE,CCC,member
YE,ESCWA,member
YE,FAO,member
YE,G-77,member
YE,IAEA,member
YE,IBRD,member
YE,ICAO,member
YE,Interpol,member
YE,IDA,Part II
YE,IFRCS,member
YE,IFC,member
YE,IFAD,Category III
YE,ILO,member
YE,IMO,member
YE,IMF,member
YE,IOC,National Olympic Committee
YE,ICRM,National Society
YE,ITU,member
YE,Intelsat,member
YE,IDB,member
YE,OIC,member
YE,UN,member
YE,UNESCO,member
YE,UNIDO,member
YE,UPU,member
YE,WFTU,member
YE,WHO,member
YE,WIPO,member
YE,WMO,member
YE,WToO,member
YE,WTrO,applicant
RP,NAM,member
RP,AsDB,regional member
RP,ASEAN,member
RP,Mekong Group,member
RP,CP,member
RP,CCC,member
RP,ESCAP,member
RP,FAO,member
RP,G-24,member
RP,G-77,member
RP,IAEA,member
RP,IBRD,member
RP,ICAO,member
RP,ICFTU,member
RP,Interpol,member
RP,IDA,Part II
RP,IFRCS,member
RP,IFC,member
RP,IFAD,Category III
RP,ILO,member
RP,IMO,member
RP,Inmarsat,member
RP,IMF,member
RP,IOC,National Olympic Committee
RP,IOM,member
RP,ISO,member
RP,ICRM,National Society
RP,ITU,member
RP,Intelsat,member
RP,UN,member
RP,UNESCO,member
RP,UNIDO,member
RP,UNMIH,member
RP,UNHCR,member
RP,UNU,member
RP,UPU,member
RP,WCL,member
RP,WFTU,member
RP,WHO,member
RP,WIPO,member
RP,WMO,member
RP,WTrO,member
Q,AL,member
Q,NAM,member
Q,ABEDA,member
Q,AFESD,member
Q,AMF,member
Q,CCC,member
Q,ESCWA,member
Q,FAO,member
Q,G-77,member
Q,GCC,member
Q,IAEA,member
Q,IBRD,member
Q,ICAO,member
Q,Interpol,member
Q,IFRCS,member
Q,IFAD,Category II
Q,ILO,member
Q,IMO,member
Q,Inmarsat,member
Q,IMF,member
Q,IOC,National Olympic Committee
Q,ISO,correspondent member
Q,ICRM,National Society
Q,ITU,member
Q,Intelsat,member
Q,IDB,member
Q,OAPEC,member
Q,OPEC,member
Q,OIC,member
Q,UN,member
Q,UNESCO,member
Q,UNIDO,member
Q,UPU,member
Q,WHO,member
Q,WIPO,member
Q,WMO,member
Q,WTrO,member
SGP,C,member
SGP,NAM,member
SGP,AsDB,regional member
SGP,ASEAN,member
SGP,Mekong Group,member
SGP,CP,member
SGP,CCC,member
SGP,ESCAP,member
SGP,G-77,member
SGP,IAEA,member
SGP,IBRD,member
SGP,ICC,member
SGP,ICAO,member
SGP,ICFTU,member
SGP,Interpol,member
SGP,IFRCS,member
SGP,IFC,member
SGP,ILO,member
SGP,IMO,member
SGP,Inmarsat,member
SGP,IMF,member
SGP,IOC,National Olympic Committee
SGP,ISO,member
SGP,ICRM,National Society
SGP,ITU,member
SGP,Intelsat,member
SGP,PCA,member
SGP,UN,member
SGP,UNIKOM,member
SGP,UPU,member
SGP,WHO,member
SGP,WIPO,member
SGP,WMO,member
SGP,WTrO,member
CL,C,member
CL,NAM,member
CL,AsDB,regional member
CL,CP,member
CL,CCC,member
CL,ESCAP,member
CL,FAO,member
CL,G-24,member
CL,G-77,member
CL,IAEA,member
CL,IBRD,member
CL,ICC,member
CL,ICAO,member
CL,ICFTU,member
CL,Interpol,member
CL,IDA,Part II
CL,IFRCS,member
CL,IFC,member
CL,IFAD,Category III
CL,ILO,member
CL,IMO,member
CL,Inmarsat,member
CL,IMF,member
CL,IOC,National Olympic Committee
CL,IOM,member
CL,ISO,member
CL,ICRM,National Society
CL,ITU,member
CL,Intelsat,member
CL,PCA,member
CL,SAARC,member
CL,UN,member
CL,UNESCO,member
CL,UNIDO,member
CL,UNU,member
CL,UPU,member
CL,WCL,member
CL,WFTU,member
CL,WHO,member
CL,WIPO,member
CL,WMO,member
CL,WToO,member
CL,WTrO,member
RC,APEC,member
RC,AsDB,regional member
RC,BCIE,nonregional member
RC,ICC,member
RC,IOC,National Olympic Committee
RC,WCL,member
RC,WTrO,applicant
AG,C,member
AG,NAM,observer
AG,ACP,member
AG,OPANAL,member
AG,Caricom,member
AG,CDB,regional member
AG,ECLAC,member
AG,FAO,member
AG,G-77,member
AG,IBRD,member
AG,ICAO,member
AG,ICFTU,member
AG,Interpol,member
AG,IFRCS,member
AG,IFC,member
AG,IFAD,Category III
AG,ILO,member
AG,IMO,member
AG,IMF,member
AG,IOC,National Olympic Committee
AG,ISO,subscriber member
AG,ICRM,National Society
AG,ITU,member
AG,Intelsat,nonsignatory user
AG,OAS,member
AG,OECS,member
AG,UN,member
AG,UNESCO,member
AG,UPU,member
AG,WCL,member
AG,WFTU,member
AG,WHO,member
AG,WMO,member
AG,WTrO,member
BS,C,member
BS,NAM,member
BS,ACP,member
BS,OPANAL,member
BS,Caricom,member
BS,CDB,regional member
BS,CCC,member
BS,ECLAC,member
BS,FAO,member
BS,G-77,member
BS,IADB,member
BS,IBRD,member
BS,ICAO,member
BS,ICFTU,member
BS,Interpol,member
BS,IFRCS,member
BS,IFC,member
BS,ILO,member
BS,IMO,member
BS,Inmarsat,member
BS,IMF,member
BS,IOC,National Olympic Committee
BS,ICRM,National Society
BS,ITU,member
BS,Intelsat,member
BS,OAS,member
BS,UN,member
BS,UNESCO,member
BS,UNIDO,member
BS,UNMIH,member
BS,UPU,member
BS,WHO,member
BS,WIPO,member
BS,WMO,member
BDS,C,member
BDS,NAM,member
BDS,ACP,member
BDS,OPANAL,member
BDS,Caricom,member
BDS,CDB,regional member
BDS,ECLAC,member
BDS,FAO,member
BDS,G-77,member
BDS,IADB,member
BDS,IBRD,member
BDS,ICAO,member
BDS,ICFTU,member
BDS,Interpol,member
BDS,IFRCS,member
BDS,IFC,member
BDS,IFAD,Category III
BDS,ILO,member
BDS,IMO,member
BDS,IMF,member
BDS,IOC,National Olympic Committee
BDS,ISO,correspondent member
BDS,ICRM,National Society
BDS,ITU,member
BDS,Intelsat,member
BDS,LAES,member
BDS,OAS,member
BDS,UN,member
BDS,UNESCO,member
BDS,UNIDO,member
BDS,UNMIH,member
BDS,UPU,member
BDS,WHO,member
BDS,WIPO,member
BDS,WMO,member
BDS,WTrO,member
BZ,C,member
BZ,NAM,member
BZ,ACP,member
BZ,OPANAL,member
BZ,Caricom,member
BZ,CDB,regional member
BZ,ECLAC,member
BZ,FAO,member
BZ,G-77,member
BZ,IADB,member
BZ,IBRD,member
BZ,ICAO,member
BZ,ICFTU,member
BZ,Interpol,member
BZ,IDA,Part II
BZ,IFRCS,member
BZ,IFC,member
BZ,IFAD,Category III
BZ,ILO,member
BZ,IMO,member
BZ,IMF,member
BZ,IOC,National Olympic Committee
BZ,IOM,observer
BZ,ICRM,National Society
BZ,ITU,member
BZ,Intelsat,nonsignatory user
BZ,LAES,member
BZ,OAS,member
BZ,UN,member
BZ,UNESCO,member
BZ,UNIDO,member
BZ,UNMIH,member
BZ,UPU,member
BZ,WCL,member
BZ,WHO,member
BZ,WMO,member
BZ,WTrO,member
GCA,NAM,member
GCA,OPANAL,member
GCA,BCIE,member
GCA,CACM,member
GCA,CCC,member
GCA,ECLAC,member
GCA,FAO,member
GCA,G-24,member
GCA,G-77,member
GCA,IADB,member
GCA,IAEA,member
GCA,IBRD,member
GCA,ICAO,member
GCA,ICFTU,member
GCA,Interpol,member
GCA,IDA,Part II
GCA,IFRCS,member
GCA,IFC,member
GCA,IFAD,Category III
GCA,ILO,member
GCA,IMO,member
GCA,IMF,member
GCA,IOC,National Olympic Committee
GCA,IOM,member
GCA,ICRM,National Society
GCA,ITU,member
GCA,Intelsat,member
GCA,LAES,member
GCA,LAIA,observer
GCA,OAS,member
GCA,PCA,member
GCA,UN,member
GCA,UNESCO,member
GCA,UNIDO,member
GCA,UNMIH,member
GCA,UNU,member
GCA,UPU,member
GCA,WCL,member
GCA,WFTU,member
GCA,WHO,member
GCA,WIPO,member
GCA,WMO,member
GCA,WToO,member
GCA,WTrO,member
MEX,AG,observer
MEX,NAM,observer
MEX,RG,member
MEX,OPANAL,member
MEX,APEC,member
MEX,Caricom,observer
MEX,CDB,regional member
MEX,BCIE,nonregional member
MEX,CCC,member
MEX,ECLAC,member
MEX,EBRD,member
MEX,FAO,member
MEX,G-3,member
MEX,G-6,member
MEX,G-11,member
MEX,G-15,member
MEX,G-19,member
MEX,G-24,member
MEX,G-77,member
MEX,IADB,member
MEX,IAEA,member
MEX,IBRD,member
MEX,ICC,member
MEX,ICAO,member
MEX,ICFTU,member
MEX,Interpol,member
MEX,IDA,Part II
MEX,IFRCS,member
MEX,IFC,member
MEX,IFAD,Category III
MEX,ILO,member
MEX,IMO,member
MEX,Inmarsat,member
MEX,IMF,member
MEX,IOC,National Olympic Committee
MEX,IOM,observer
MEX,ISO,member
MEX,ICRM,National Society
MEX,ITU,member
MEX,Intelsat,member
MEX,LAES,member
MEX,LAIA,member
MEX,OECD,member
MEX,OAS,member
MEX,PCA,member
MEX,UN,member
MEX,UNESCO,member
MEX,UNIDO,member
MEX,UNITAR,member
MEX,UNU,member
MEX,UPU,member
MEX,WCL,member
MEX,WFTU,member
MEX,WHO,member
MEX,WIPO,member
MEX,WMO,member
MEX,WToO,member
MEX,WTrO,member
CDN,AG,observer
CDN,C,member
CDN,NAM,guest
CDN,AfDB,nonregional member
CDN,ACCT,member
CDN,APEC,member
CDN,AsDB,nonregional member
CDN,BIS,member
CDN,CDB,nonregional member
CDN,CCC,member
CDN,ECE,member
CDN,ECLAC,member
CDN,EBRD,member
CDN,ESA,cooperating state
CDN,FAO,member
CDN,G-8,member
CDN,G-10,member
CDN,IADB,member
CDN,IAEA,member
CDN,IBRD,member
CDN,ICC,member
CDN,ICAO,member
CDN,ICFTU,member
CDN,Interpol,member
CDN,IDA,Part I
CDN,IEA,member
CDN,IFRCS,member
CDN,IFC,member
CDN,IFAD,Category I
CDN,ILO,member
CDN,IMO,member
CDN,Inmarsat,member
CDN,IMF,member
CDN,IOC,National Olympic Committee
CDN,IOM,member
CDN,ISO,member
CDN,ICRM,National Society
CDN,ITU,member
CDN,Intelsat,member
CDN,MTCR,member
CDN,ANC,member
CDN,NATO,member
CDN,EN,member
CDN,NSG,member
CDN,OECD,member
CDN,OSCE,member
CDN,OAS,member
CDN,PCA,member
CDN,UN,member
CDN,UNAMIR,member
CDN,UNCRO,member
CDN,UNDOF,member
CDN,UNESCO,member
CDN,UNFICYP,member
CDN,UNIDO,member
CDN,UNITAR,member
CDN,UNIKOM,member
CDN,UNMIH,member
CDN,UNHCR,member
CDN,UNPREDEP,member
CDN,UNPROFOR,member
CDN,UNTSO,member
CDN,UNU,member
CDN,UPU,member
CDN,WCL,member
CDN,WFTU,member
CDN,WHO,member
CDN,WIPO,member
CDN,WMO,member
CDN,WToO,member
CDN,WTrO,member
CDN,ZC,member
USA,AG,observer
USA,AfDB,nonregional member
USA,APEC,member
USA,AsDB,nonregional member
USA,ANZUS,member
USA,BIS,member
USA,CP,member
USA,CCC,member
USA,ESCAP,member
USA,ECE,member
USA,ECLAC,member
USA,EBRD,member
USA,FAO,member
USA,G-2,member
USA,G-5,member
USA,G-8,member
USA,G-10,member
USA,IADB,member
USA,IAEA,member
USA,IBRD,member
USA,ICC,member
USA,ICAO,member
USA,ICFTU,member
USA,Interpol,member
USA,IDA,Part I
USA,IEA,member
USA,IFRCS,member
USA,IFC,member
USA,IFAD,Category I
USA,ILO,member
USA,IMO,member
USA,Inmarsat,member
USA,IMF,member
USA,IOC,National Olympic Committee
USA,IOM,member
USA,ISO,member
USA,ICRM,National Society
USA,ITU,member
USA,Intelsat,member
USA,MTCR,member
USA,ANC,member
USA,NATO,member
USA,EN,member
USA,NSG,member
USA,OECD,member
USA,OSCE,member
USA,OAS,member
USA,PCA,member
USA,SPC,member
USA,UN,member
USA,UNCRO,member
USA,UNIDO,member
USA,UNITAR,member
USA,UNIKOM,member
USA,MINURSO,member
USA,UNMIH,member
USA,UNOMIG,member
USA,UNHCR,member
USA,UNPREDEP,member
USA,UNPROFOR,member
USA,UNRWA,member
USA,UNTSO,member
USA,UNU,member
USA,UPU,member
USA,WCL,member
USA,WHO,member
USA,WIPO,member
USA,WMO,member
USA,WToO,member
USA,WTrO,member
USA,ZC,member
CR,AG,observer
CR,NAM,observer
CR,OPANAL,member
CR,BCIE,member
CR,CACM,member
CR,ECLAC,member
CR,FAO,member
CR,G-77,member
CR,IADB,member
CR,IAEA,member
CR,IBRD,member
CR,ICAO,member
CR,ICFTU,member
CR,Interpol,member
CR,IDA,Part II
CR,IFRCS,member
CR,IFC,member
CR,IFAD,Category III
CR,ILO,member
CR,IMO,member
CR,IMF,member
CR,IOC,National Olympic Committee
CR,IOM,member
CR,ICRM,National Society
CR,ITU,member
CR,Intelsat,member
CR,LAES,member
CR,LAIA,observer
CR,OAS,member
CR,UN,member
CR,UNESCO,member
CR,UNIDO,member
CR,UNU,member
CR,UPU,member
CR,WCL,member
CR,WFTU,member
CR,WHO,member
CR,WIPO,member
CR,WMO,member
CR,WTrO,member
NIC,NAM,member
NIC,OPANAL,member
NIC,BCIE,member
NIC,CACM,member
NIC,ECLAC,member
NIC,FAO,member
NIC,G-77,member
NIC,IADB,member
NIC,IAEA,member
NIC,IBRD,member
NIC,ICAO,member
NIC,ICFTU,member
NIC,Interpol,member
NIC,IDA,Part II
NIC,IFRCS,member
NIC,IFC,member
NIC,IFAD,Category III
NIC,ILO,member
NIC,IMO,member
NIC,IMF,member
NIC,IOC,National Olympic Committee
NIC,IOM,member
NIC,ICRM,National Society
NIC,ITU,member
NIC,Intelsat,member
NIC,LAES,member
NIC,LAIA,observer
NIC,OAS,member
NIC,PCA,member
NIC,UN,member
NIC,UNESCO,member
NIC,UNIDO,member
NIC,UNHCR,member
NIC,UPU,member
NIC,WCL,member
NIC,WFTU,member
NIC,WHO,member
NIC,WIPO,member
NIC,WMO,member
NIC,WToO,member
NIC,WTrO,member
PA,AG,associate member
PA,NAM,member
PA,OPANAL,member
PA,ECLAC,member
PA,FAO,member
PA,G-77,member
PA,IADB,member
PA,IAEA,member
PA,IBRD,member
PA,ICAO,member
PA,ICFTU,member
PA,Interpol,member
PA,IDA,Part II
PA,IFRCS,member
PA,IFC,member
PA,IFAD,Category III
PA,ILO,member
PA,IMO,member
PA,Inmarsat,member
PA,IMF,member
PA,IOC,National Olympic Committee
PA,IOM,member
PA,ICRM,National Society
PA,ITU,member
PA,Intelsat,member
PA,LAES,member
PA,LAIA,observer
PA,OAS,member
PA,PCA,member
PA,UN,member
PA,UNESCO,member
PA,UNIDO,member
PA,UPU,member
PA,WCL,member
PA,WFTU,member
PA,WHO,member
PA,WIPO,member
PA,WMO,member
PA,WToO,member
PA,WTrO,applicant
C,NAM,member
C,CCC,member
C,ECLAC,member
C,FAO,member
C,G-77,member
C,IAEA,member
C,ICAO,member
C,Interpol,member
C,IFRCS,member
C,IFAD,Category III
C,ILO,member
C,IMO,member
C,Inmarsat,member
C,IOC,National Olympic Committee
C,ISO,member
C,ICRM,National Society
C,ITU,member
C,Intelsat,nonsignatory user
C,LAES,member
C,LAIA,observer
C,OAS,member
C,PCA,member
C,UN,member
C,UNESCO,member
C,UNIDO,member
C,UNOMIG,member
C,UPU,member
C,WCL,member
C,WFTU,member
C,WHO,member
C,WIPO,member
C,WMO,member
C,WToO,member
C,WTrO,member
WD,C,member
WD,NAM,observer
WD,ACP,member
WD,ACCT,member
WD,OPANAL,member
WD,Caricom,member
WD,CDB,regional member
WD,ECLAC,member
WD,FAO,member
WD,G-77,member
WD,IBRD,member
WD,ICFTU,member
WD,Interpol,member
WD,IDA,Part II
WD,IFRCS,member
WD,IFC,member
WD,IFAD,Category III
WD,ILO,member
WD,IMO,member
WD,IMF,member
WD,IOC,National Olympic Committee
WD,ICRM,National Society
WD,OAS,member
WD,OECS,member
WD,UN,member
WD,UNESCO,member
WD,UNIDO,member
WD,UPU,member
WD,WCL,member
WD,WHO,member
WD,WMO,member
WD,WTrO,member
DOM,NAM,guest
DOM,ACP,member
DOM,OPANAL,member
DOM,Caricom,observer
DOM,ECLAC,member
DOM,FAO,member
DOM,G-11,member
DOM,G-77,member
DOM,IADB,member
DOM,IAEA,member
DOM,IBRD,member
DOM,ICAO,member
DOM,ICFTU,member
DOM,Interpol,member
DOM,IDA,Part II
DOM,IFRCS,member
DOM,IFC,member
DOM,IFAD,Category III
DOM,ILO,member
DOM,IMO,member
DOM,IMF,member
DOM,IOC,National Olympic Committee
DOM,IOM,member
DOM,ICRM,National Society
DOM,ITU,member
DOM,Intelsat,member
DOM,LAES,member
DOM,LAIA,observer
DOM,OAS,member
DOM,PCA,member
DOM,UN,member
DOM,UNESCO,member
DOM,UNIDO,member
DOM,UPU,member
DOM,WCL,member
DOM,WFTU,member
DOM,WHO,member
DOM,WIPO,member
DOM,WMO,member
DOM,WToO,member
DOM,WTrO,member
RH,ACP,member
RH,ACCT,member
RH,OPANAL,member
RH,Caricom,observer
RH,CCC,member
RH,ECLAC,member
RH,FAO,member
RH,G-77,member
RH,IADB,member
RH,IAEA,member
RH,IBRD,member
RH,ICAO,member
RH,Interpol,member
RH,IDA,Part II
RH,IFRCS,member
RH,IFC,member
RH,IFAD,Category III
RH,ILO,member
RH,IMO,member
RH,IMF,member
RH,IOC,National Olympic Committee
RH,IOM,member
RH,ICRM,National Society
RH,ITU,member
RH,Intelsat,member
RH,LAES,member
RH,OAS,member
RH,PCA,member
RH,UN,member
RH,UNESCO,member
RH,UNIDO,member
RH,UPU,member
RH,WCL,member
RH,WFTU,member
RH,WHO,member
RH,WIPO,member
RH,WMO,member
RH,WToO,member
ES,NAM,observer
ES,OPANAL,member
ES,BCIE,member
ES,CACM,member
ES,ECLAC,member
ES,FAO,member
ES,G-77,member
ES,IADB,member
ES,IAEA,member
ES,IBRD,member
ES,ICAO,member
ES,ICFTU,member
ES,Interpol,member
ES,IDA,Part II
ES,IFRCS,member
ES,IFC,member
ES,IFAD,Category III
ES,ILO,member
ES,IMO,member
ES,IMF,member
ES,IOC,National Olympic Committee
ES,IOM,member
ES,ICRM,National Society
ES,ITU,member
ES,Intelsat,member
ES,LAES,member
ES,LAIA,observer
ES,OAS,member
ES,PCA,member
ES,UN,member
ES,UNESCO,member
ES,UNIDO,member
ES,MINURSO,member
ES,UPU,member
ES,WCL,member
ES,WFTU,member
ES,WHO,member
ES,WIPO,member
ES,WMO,member
ES,WToO,member
ES,WTrO,member
HCA,NAM,member
HCA,OPANAL,member
HCA,BCIE,member
HCA,CACM,member
HCA,ECLAC,member
HCA,FAO,member
HCA,G-77,member
HCA,IADB,member
HCA,IBRD,member
HCA,ICAO,member
HCA,ICFTU,member
HCA,Interpol,member
HCA,IDA,Part II
HCA,IFRCS,member
HCA,IFC,member
HCA,IFAD,Category III
HCA,ILO,member
HCA,IMO,member
HCA,IMF,member
HCA,IOC,National Olympic Committee
HCA,IOM,member
HCA,ICRM,National Society
HCA,ITU,member
HCA,Intelsat,member
HCA,LAES,member
HCA,LAIA,observer
HCA,OAS,member
HCA,PCA,member
HCA,UN,member
HCA,UNESCO,member
HCA,UNIDO,member
HCA,MINURSO,member
HCA,UNMIH,member
HCA,UPU,member
HCA,WCL,member
HCA,WFTU,member
HCA,WHO,member
HCA,WIPO,member
HCA,WMO,member
HCA,WTrO,member
WG,C,member
WG,NAM,member
WG,ACP,member
WG,OPANAL,member
WG,Caricom,member
WG,CDB,regional member
WG,ECLAC,member
WG,FAO,member
WG,G-77,member
WG,IBRD,member
WG,ICAO,member
WG,ICFTU,member
WG,Interpol,member
WG,IDA,Part II
WG,IFRCS,member
WG,IFC,member
WG,IFAD,Category III
WG,ILO,member
WG,IMF,member
WG,IOC,National Olympic Committee
WG,ISO,subscriber member
WG,ICRM,National Society
WG,ITU,member
WG,LAES,member
WG,OAS,member
WG,OECS,member
WG,UN,member
WG,UNESCO,member
WG,UNIDO,member
WG,UPU,member
WG,WCL,member
WG,WHO,member
WG,WToO,member
JA,C,member
JA,NAM,member
JA,ACP,member
JA,OPANAL,member
JA,Caricom,member
JA,CDB,regional member
JA,CCC,member
JA,ECLAC,member
JA,FAO,member
JA,G-15,member
JA,G-19,member
JA,G-77,member
JA,IADB,member
JA,IAEA,member
JA,IBRD,member
JA,ICAO,member
JA,ICFTU,member
JA,Interpol,member
JA,IFRCS,member
JA,IFC,member
JA,IFAD,Category III
JA,ILO,member
JA,IMO,member
JA,IMF,member
JA,IOC,National Olympic Committee
JA,ISO,member
JA,ICRM,National Society
JA,ITU,member
JA,Intelsat,member
JA,LAES,member
JA,OAS,member
JA,UN,member
JA,UNESCO,member
JA,UNIDO,member
JA,UNITAR,member
JA,UNMIH,member
JA,UPU,member
JA,WCL,member
JA,WFTU,member
JA,WHO,member
JA,WIPO,member
JA,WMO,member
JA,WToO,member
JA,WTrO,member
CO,AG,member
CO,NAM,member
CO,RG,member
CO,OPANAL,member
CO,CDB,regional member
CO,CCC,member
CO,ECLAC,member
CO,FAO,member
CO,G-3,member
CO,G-11,member
CO,G-24,member
CO,G-77,member
CO,IADB,member
CO,IAEA,member
CO,IBRD,member
CO,ICC,member
CO,ICAO,member
CO,ICFTU,member
CO,Interpol,member
CO,IDA,Part II
CO,IFRCS,member
CO,IFC,member
CO,IFAD,Category III
CO,ILO,member
CO,IMO,member
CO,Inmarsat,member
CO,IMF,member
CO,IOC,National Olympic Committee
CO,IOM,member
CO,ISO,member
CO,ICRM,National Society
CO,ITU,member
CO,Intelsat,member
CO,LAES,member
CO,LAIA,member
CO,OAS,member
CO,PCA,member
CO,UN,member
CO,UNESCO,member
CO,UNIDO,member
CO,UNHCR,member
CO,UNU,member
CO,UPU,member
CO,WCL,member
CO,WFTU,member
CO,WHO,member
CO,WIPO,member
CO,WMO,member
CO,WToO,member
CO,WTrO,member
KN,C,member
KN,ACP,member
KN,Caricom,member
KN,CDB,regional member
KN,ECLAC,member
KN,FAO,member
KN,G-77,member
KN,IBRD,member
KN,ICFTU,member
KN,Interpol,member
KN,IDA,Part II
KN,IFRCS,member
KN,IFAD,Category III
KN,IMF,member
KN,IOC,National Olympic Committee
KN,ICRM,National Society
KN,OAS,member
KN,OECS,member
KN,UN,member
KN,UNESCO,member
KN,UNIDO,member
KN,UNMIH,member
KN,UPU,member
KN,WCL,member
KN,WHO,member
KN,WIPO,member
WL,C,member
WL,NAM,member
WL,ACP,member
WL,ACCT,associate member
WL,Caricom,member
WL,CDB,regional member
WL,ECLAC,member
WL,FAO,member
WL,G-77,member
WL,IBRD,member
WL,ICAO,member
WL,ICFTU,member
WL,Interpol,member
WL,IDA,Part II
WL,IFRCS,member
WL,IFC,member
WL,IFAD,Category III
WL,ILO,member
WL,IMO,member
WL,IMF,member
WL,IOC,National Olympic Committee
WL,ISO,subscriber member
WL,ICRM,National Society
WL,Intelsat,nonsignatory user
WL,OAS,member
WL,OECS,member
WL,UN,member
WL,UNESCO,member
WL,UNIDO,member
WL,UNMIH,member
WL,UPU,member
WL,WCL,member
WL,WFTU,member
WL,WHO,member
WL,WIPO,member
WL,WMO,member
WL,WTrO,member
WV,C,member
WV,ACP,member
WV,OPANAL,member
WV,Caricom,member
WV,CDB,regional member
WV,ECLAC,member
WV,FAO,member
WV,G-77,member
WV,IBRD,member
WV,ICAO,member
WV,ICFTU,member
WV,Interpol,member
WV,IDA,Part II
WV,IFRCS,member
WV,IFAD,Category III
WV,ILO,member
WV,IMO,member
WV,IMF,member
WV,IOC,National Olympic Committee
WV,ICRM,National Society
WV,ITU,member
WV,Intelsat,nonsignatory user
WV,OAS,member
WV,OECS,member
WV,UN,member
WV,UNESCO,member
WV,UNIDO,member
WV,UPU,member
WV,WCL,member
WV,WFTU,member
WV,WHO,member
WV,WTrO,member
TT,C,member
TT,NAM,member
TT,ACP,member
TT,OPANAL,member
TT,Caricom,member
TT,CDB,regional member
TT,CCC,member
TT,ECLAC,member
TT,FAO,member
TT,G-24,member
TT,G-77,member
TT,IADB,member
TT,IBRD,member
TT,ICAO,member
TT,ICFTU,member
TT,Interpol,member
TT,IDA,Part II
TT,IFRCS,member
TT,IFC,member
TT,IFAD,Category III
TT,ILO,member
TT,IMO,member
TT,IMF,member
TT,IOC,National Olympic Committee
TT,ISO,member
TT,ICRM,National Society
TT,ITU,member
TT,Intelsat,member
TT,LAES,member
TT,OAS,member
TT,UN,member
TT,UNESCO,member
TT,UNIDO,member
TT,UNMIH,member
TT,UNU,member
TT,UPU,member
TT,WFTU,member
TT,WHO,member
TT,WIPO,member
TT,WMO,member
TT,WTrO,member
AUS,AG,observer
AUS,C,member
AUS,NAM,guest
AUS,AsDB,regional member
AUS,ANZUS,member
AUS,BIS,member
AUS,CP,member
AUS,CCC,member
AUS,ESCAP,member
AUS,EBRD,member
AUS,FAO,member
AUS,G-8,member
AUS,IAEA,member
AUS,IBRD,member
AUS,ICC,member
AUS,ICAO,member
AUS,ICFTU,member
AUS,Interpol,member
AUS,IDA,Part I
AUS,IEA,member
AUS,IFRCS,member
AUS,IFC,member
AUS,IFAD,Category I
AUS,ILO,member
AUS,IMO,member
AUS,Inmarsat,member
AUS,IMF,member
AUS,IOC,National Olympic Committee
AUS,IOM,member
AUS,ISO,member
AUS,ICRM,National Society
AUS,ITU,member
AUS,Intelsat,member
AUS,MTCR,member
AUS,EN,member
AUS,NSG,member
AUS,OECD,member
AUS,PCA,member
AUS,SPC,member
AUS,SPF,member
AUS,Sparteca,member
AUS,UN,member
AUS,UNAMIR,member
AUS,UNESCO,member
AUS,UNFICYP,member
AUS,UNIDO,member
AUS,UNHCR,member
AUS,UNTSO,member
AUS,UNU,member
AUS,UPU,member
AUS,WFTU,member
AUS,WHO,member
AUS,WIPO,member
AUS,WMO,member
AUS,WTrO,member
AUS,ZC,member
FJI,ACP,member
FJI,AsDB,regional member
FJI,CP,member
FJI,ESCAP,member
FJI,FAO,member
FJI,G-77,member
FJI,IBRD,member
FJI,ICAO,member
FJI,ICFTU,member
FJI,Interpol,member
FJI,IDA,Part II
FJI,IFRCS,member
FJI,IFC,member
FJI,IFAD,Category III
FJI,ILO,member
FJI,IMO,member
FJI,IMF,member
FJI,IOC,National Olympic Committee
FJI,ICRM,National Society
FJI,ITU,member
FJI,Intelsat,member
FJI,PCA,member
FJI,SPC,member
FJI,SPF,member
FJI,Sparteca,member
FJI,UN,member
FJI,UNAVEM III,member
FJI,UNAMIR,member
FJI,UNESCO,member
FJI,UNIDO,member
FJI,UNIFIL,member
FJI,UNIKOM,member
FJI,UPU,member
FJI,WFTU,member
FJI,WHO,member
FJI,WIPO,member
FJI,WMO,member
FJI,WTrO,member
KIR,C,member
KIR,ACP,member
KIR,AsDB,regional member
KIR,ESCAP,member
KIR,IBRD,member
KIR,ICAO,member
KIR,ICFTU,member
KIR,Interpol,member
KIR,IDA,Part II
KIR,IFRCS,associate member
KIR,IFC,member
KIR,IMF,member
KIR,ITU,member
KIR,Intelsat,nonsignatory user
KIR,SPC,member
KIR,SPF,member
KIR,Sparteca,member
KIR,UNESCO,member
KIR,UPU,member
KIR,WHO,member
MH,AsDB,regional member
MH,ESCAP,member
MH,IAEA,member
MH,IBRD,member
MH,ICAO,member
MH,Interpol,member
MH,IDA,Part II
MH,IFC,member
MH,IMF,member
MH,Intelsat,nonsignatory user
MH,SPC,member
MH,SPF,member
MH,Sparteca,member
MH,UN,member
MH,UNESCO,member
MH,WHO,member
NAU,C,special member
NAU,AsDB,regional member
NAU,ESCAP,member
NAU,ICAO,member
NAU,Interpol,member
NAU,ITU,member
NAU,Intelsat,nonsignatory user
NAU,SPC,member
NAU,SPF,member
NAU,Sparteca,member
NAU,UPU,member
NAU,WHO,member
NCA,ESCAP,associate member
NCA,ICFTU,member
NCA,SPC,member
NCA,WFTU,member
NCA,WMO,member
NZ,C,member
NZ,NAM,guest
NZ,APEC,member
NZ,AsDB,regional member
NZ,ANZUS,member
NZ,CP,member
NZ,CCC,member
NZ,ESCAP,member
NZ,EBRD,member
NZ,FAO,member
NZ,IAEA,member
NZ,IBRD,member
NZ,ICAO,member
NZ,ICFTU,member
NZ,Interpol,member
NZ,IDA,Part I
NZ,IEA,member
NZ,IFRCS,member
NZ,IFC,member
NZ,IFAD,Category I
NZ,ILO,member
NZ,IMO,member
NZ,Inmarsat,member
NZ,IMF,member
NZ,IOC,National Olympic Committee
NZ,IOM,observer
NZ,ISO,member
NZ,ICRM,National Society
NZ,ITU,member
NZ,Intelsat,member
NZ,MTCR,member
NZ,NSG,member
NZ,OECD,member
NZ,PCA,member
NZ,SPC,member
NZ,SPF,member
NZ,Sparteca,member
NZ,UN,member
NZ,UNAVEM III,member
NZ,UNESCO,member
NZ,UNIDO,member
NZ,UNPREDEP,member
NZ,UNPROFOR,member
NZ,UNTSO,member
NZ,UPU,member
NZ,WFTU,member
NZ,WHO,member
NZ,WIPO,member
NZ,WMO,member
NZ,WTrO,member
PAL,ESCAP,associate member
PAL,SPC,member
PAL,SPF,member
PAL,UN,member
PAL,WHO,member
SLB,C,member
SLB,ACP,member
SLB,AsDB,regional member
SLB,ESCAP,member
SLB,FAO,member
SLB,G-77,member
SLB,IBRD,member
SLB,ICAO,member
SLB,IDA,Part II
SLB,IFRCS,member
SLB,IFC,member
SLB,IFAD,Category III
SLB,ILO,member
SLB,IMO,member
SLB,IMF,member
SLB,IOC,National Olympic Committee
SLB,ICRM,National Society
SLB,ITU,member
SLB,Intelsat,nonsignatory user
SLB,SPC,member
SLB,SPF,member
SLB,Sparteca,member
SLB,UN,member
SLB,UNESCO,member
SLB,UPU,member
SLB,WFTU,member
SLB,WHO,member
SLB,WMO,member
TO,C,member
TO,ACP,member
TO,AsDB,regional member
TO,ESCAP,member
TO,FAO,member
TO,G-77,member
TO,IBRD,member
TO,ICAO,member
TO,ICFTU,member
TO,Interpol,member
TO,IDA,Part II
TO,IFRCS,member
TO,IFC,member
TO,IFAD,Category III
TO,IMF,member
TO,IOC,National Olympic Committee
TO,ICRM,National Society
TO,ITU,member
TO,Intelsat,nonsignatory user
TO,SPC,member
TO,SPF,member
TO,Sparteca,member
TO,UNCTAD,member
TO,UNESCO,member
TO,UNIDO,member
TO,UPU,member
TO,WHO,member
TUV,C,special member
TUV,ACP,member
TUV,AsDB,regional member
TUV,ESCAP,member
TUV,IFRCS,associate member
TUV,Intelsat,nonsignatory user
TUV,SPC,member
TUV,SPF,member
TUV,Sparteca,member
TUV,UNESCO,member
TUV,UPU,member
TUV,WHO,member
VU,C,member
VU,NAM,member
VU,ACP,member
VU,ACCT,member
VU,AsDB,regional member
VU,ESCAP,member
VU,FAO,member
VU,G-77,member
VU,IBRD,member
VU,ICAO,member
VU,IDA,Part II
VU,IFRCS,member
VU,IFC,member
VU,IMO,member
VU,IMF,member
VU,IOC,National Olympic Committee
VU,ICRM,National Society
VU,ITU,member
VU,Intelsat,nonsignatory user
VU,SPC,member
VU,SPF,member
VU,Sparteca,member
VU,UN,member
VU,UNESCO,member
VU,UNIDO,member
VU,UPU,member
VU,WFTU,member
VU,WHO,member
VU,WMO,member
WS,C,member
WS,ACP,member
WS,AsDB,regional member
WS,ESCAP,member
WS,FAO,member
WS,G-77,member
WS,IBRD,member
WS,ICFTU,member
WS,IDA,Part II
WS,IFRCS,member
WS,IFC,member
WS,IFAD,Category III
WS,IMF,member
WS,IOC,National Olympic Committee
WS,ICRM,National Society
WS,ITU,member
WS,Intelsat,nonsignatory user
WS,SPC,member
WS,SPF,member
WS,Sparteca,member
WS,UN,member
WS,UNESCO,member
WS,UPU,member
WS,WHO,member
WS,WMO,member
RA,AG,observer
RA,RG,member
RA,AfDB,nonregional member
RA,OPANAL,member
RA,BCIE,nonregional member
RA,CCC,member
RA,ECLAC,member
RA,FAO,member
RA,G-6,member
RA,G-11,member
RA,G-15,member
RA,G-19,member
RA,G-24,member
RA,G-77,member
RA,IADB,member
RA,IAEA,member
RA,IBRD,member
RA,ICC,member
RA,ICAO,member
RA,ICFTU,member
RA,Interpol,member
RA,IDA,Part II
RA,IFRCS,member
RA,IFC,member
RA,IFAD,Category III
RA,ILO,member
RA,IMO,member
RA,Inmarsat,member
RA,IMF,member
RA,IOC,National Olympic Committee
RA,IOM,member
RA,ISO,member
RA,ICRM,National Society
RA,ITU,member
RA,Intelsat,member
RA,LAES,member
RA,LAIA,member
RA,MTCR,member
RA,NSG,member
RA,OAS,member
RA,PCA,member
RA,Mercosur,member
RA,UN,member
RA,UNAVEM III,member
RA,UNAMIR,member
RA,UNCRO,member
RA,UNESCO,member
RA,UNFICYP,member
RA,UNIDO,member
RA,UNITAR,member
RA,UNIKOM,member
RA,MINURSO,member
RA,UNMIH,member
RA,UNHCR,member
RA,UNTSO,member
RA,UNU,member
RA,UPU,member
RA,WCL,member
RA,WFTU,member
RA,WHO,member
RA,WIPO,member
RA,WMO,member
RA,WToO,member
RA,WTrO,member
BOL,AG,member
BOL,NAM,member
BOL,RG,member
BOL,OPANAL,member
BOL,ECLAC,member
BOL,FAO,member
BOL,G-11,member
BOL,G-77,member
BOL,IADB,member
BOL,IAEA,member
BOL,IBRD,member
BOL,ICAO,member
BOL,Interpol,member
BOL,IDA,Part II
BOL,IFRCS,member
BOL,IFC,member
BOL,IFAD,Category III
BOL,ILO,member
BOL,IMO,member
BOL,IMF,member
BOL,IOC,National Olympic Committee
BOL,IOM,member
BOL,ICRM,National Society
BOL,ITU,member
BOL,Intelsat,member
BOL,LAES,member
BOL,LAIA,member
BOL,OAS,member
BOL,PCA,member
BOL,UN,member
BOL,UNESCO,member
BOL,UNIDO,member
BOL,UPU,member
BOL,WCL,member
BOL,WFTU,member
BOL,WHO,member
BOL,WIPO,member
BOL,WMO,member
BOL,WToO,member
BOL,WTrO,member
BR,AG,observer
BR,NAM,observer
BR,RG,member
BR,AfDB,nonregional member
BR,OPANAL,member
BR,CCC,member
BR,ECLAC,member
BR,FAO,member
BR,G-11,member
BR,G-15,member
BR,G-19,member
BR,G-24,member
BR,G-77,member
BR,IADB,member
BR,IAEA,member
BR,IBRD,member
BR,ICC,member
BR,ICAO,member
BR,ICFTU,member
BR,Interpol,member
BR,IDA,Part II
BR,IFRCS,member
BR,IFC,member
BR,IFAD,Category III
BR,ILO,member
BR,IMO,member
BR,Inmarsat,member
BR,IMF,member
BR,IOC,National Olympic Committee
BR,IOM,observer
BR,ISO,member
BR,ICRM,National Society
BR,ITU,member
BR,Intelsat,member
BR,LAES,member
BR,LAIA,member
BR,MTCR,member
BR,NSG,member
BR,OAS,member
BR,PCA,member
BR,Mercosur,member
BR,UN,member
BR,UNAVEM III,member
BR,UNCRO,member
BR,UNESCO,member
BR,UNIDO,member
BR,UNHCR,member
BR,UNPREDEP,member
BR,UNPROFOR,member
BR,UNU,member
BR,UPU,member
BR,WCL,member
BR,WFTU,member
BR,WHO,member
BR,WIPO,member
BR,WMO,member
BR,WToO,member
BR,WTrO,member
RCH,NAM,member
RCH,RG,member
RCH,OPANAL,member
RCH,APEC,member
RCH,CCC,member
RCH,ECLAC,member
RCH,FAO,member
RCH,G-11,member
RCH,G-77,member
RCH,IADB,member
RCH,IAEA,member
RCH,IBRD,member
RCH,ICAO,member
RCH,ICFTU,member
RCH,Interpol,member
RCH,IDA,Part II
RCH,IFRCS,member
RCH,IFC,member
RCH,IFAD,Category III
RCH,ILO,member
RCH,IMO,member
RCH,Inmarsat,member
RCH,IMF,member
RCH,IOC,National Olympic Committee
RCH,IOM,member
RCH,ISO,member
RCH,ICRM,National Society
RCH,ITU,member
RCH,Intelsat,member
RCH,LAES,member
RCH,LAIA,member
RCH,OAS,member
RCH,PCA,member
RCH,Mercosur,associate member
RCH,UN,member
RCH,UNESCO,member
RCH,UNIDO,member
RCH,UNMOGIP,member
RCH,UNTSO,member
RCH,UNU,member
RCH,UPU,member
RCH,WCL,member
RCH,WFTU,member
RCH,WHO,member
RCH,WIPO,member
RCH,WMO,member
RCH,WToO,member
RCH,WTrO,member
PY,AG,observer
PY,RG,member
PY,OPANAL,member
PY,CCC,member
PY,ECLAC,member
PY,FAO,member
PY,G-77,member
PY,IADB,member
PY,IAEA,member
PY,IBRD,member
PY,ICAO,member
PY,ICFTU,member
PY,Interpol,member
PY,IDA,Part II
PY,IFRCS,member
PY,IFC,member
PY,IFAD,Category III
PY,ILO,member
PY,IMO,member
PY,IMF,member
PY,IOC,National Olympic Committee
PY,IOM,member
PY,ICRM,National Society
PY,ITU,member
PY,Intelsat,member
PY,LAES,member
PY,LAIA,member
PY,OAS,member
PY,PCA,member
PY,Mercosur,member
PY,UN,member
PY,UNESCO,member
PY,UNIDO,member
PY,UPU,member
PY,WCL,member
PY,WHO,member
PY,WIPO,member
PY,WMO,member
PY,WToO,member
PY,WTrO,member
ROU,AG,observer
ROU,NAM,observer
ROU,RG,member
ROU,OPANAL,member
ROU,CCC,member
ROU,ECLAC,member
ROU,FAO,member
ROU,G-11,member
ROU,G-77,member
ROU,IADB,member
ROU,IAEA,member
ROU,IBRD,member
ROU,ICC,member
ROU,ICAO,member
ROU,Interpol,member
ROU,IFRCS,member
ROU,IFC,member
ROU,IFAD,Category III
ROU,ILO,member
ROU,IMO,member
ROU,IMF,member
ROU,IOC,National Olympic Committee
ROU,IOM,member
ROU,ISO,member
ROU,ICRM,National Society
ROU,ITU,member
ROU,Intelsat,member
ROU,LAES,member
ROU,LAIA,member
ROU,OAS,member
ROU,PCA,member
ROU,Mercosur,member
ROU,UN,member
ROU,UNAVEM III,member
ROU,UNAMIR,member
ROU,UNESCO,member
ROU,UNIDO,member
ROU,UNIKOM,member
ROU,UNMOGIP,member
ROU,MINURSO,member
ROU,UNMOT,member
ROU,UNOMIG,member
ROU,UNOMIL,member
ROU,UPU,member
ROU,WCL,member
ROU,WFTU,member
ROU,WHO,member
ROU,WIPO,member
ROU,WMO,member
ROU,WToO,member
ROU,WTrO,member
PE,AG,member
PE,NAM,member
PE,RG,member
PE,OPANAL,member
PE,CCC,member
PE,ECLAC,member
PE,FAO,member
PE,G-11,member
PE,G-15,member
PE,G-19,member
PE,G-24,member
PE,G-77,member
PE,IADB,member
PE,IAEA,member
PE,IBRD,member
PE,ICAO,member
PE,ICFTU,member
PE,Interpol,member
PE,IDA,Part II
PE,IFRCS,member
PE,IFC,member
PE,IFAD,Category III
PE,ILO,member
PE,IMO,member
PE,Inmarsat,member
PE,IMF,member
PE,IOC,National Olympic Committee
PE,IOM,member
PE,ISO,correspondent member
PE,ICRM,National Society
PE,ITU,member
PE,Intelsat,member
PE,LAES,member
PE,LAIA,member
PE,OAS,member
PE,PCA,member
PE,UN,member
PE,UNESCO,member
PE,UNIDO,member
PE,UPU,member
PE,WCL,member
PE,WFTU,member
PE,WHO,member
PE,WIPO,member
PE,WMO,member
PE,WToO,member
PE,WTrO,member
FGU,WCL,member
FGU,WFTU,member
GUY,C,member
GUY,NAM,member
GUY,ACP,member
GUY,Caricom,member
GUY,CDB,regional member
GUY,CCC,member
GUY,ECLAC,member
GUY,FAO,member
GUY,G-77,member
GUY,IADB,member
GUY,IBRD,member
GUY,ICAO,member
GUY,ICFTU,member
GUY,Interpol,member
GUY,IDA,Part II
GUY,IFRCS,member
GUY,IFC,member
GUY,IFAD,Category III
GUY,ILO,member
GUY,IMO,member
GUY,IMF,member
GUY,IOC,National Olympic Committee
GUY,ICRM,National Society
GUY,ITU,member
GUY,Intelsat,nonsignatory user
GUY,LAES,member
GUY,OAS,member
GUY,UN,member
GUY,UNESCO,member
GUY,UNIDO,member
GUY,UNMIH,member
GUY,UPU,member
GUY,WCL,member
GUY,WFTU,member
GUY,WHO,member
GUY,WIPO,member
GUY,WMO,member
GUY,WTrO,member
SME,NAM,member
SME,ACP,member
SME,OPANAL,member
SME,Caricom,member
SME,ECLAC,member
SME,FAO,member
SME,G-77,member
SME,IADB,member
SME,IBRD,member
SME,ICAO,member
SME,ICFTU,member
SME,Interpol,member
SME,IFRCS,member
SME,IFAD,Category III
SME,ILO,member
SME,IMO,member
SME,IMF,member
SME,IOC,National Olympic Committee
SME,ICRM,National Society
SME,ITU,member
SME,Intelsat,nonsignatory user
SME,LAES,member
SME,OAS,member
SME,PCA,member
SME,UN,member
SME,UNESCO,member
SME,UNIDO,member
SME,UNMIH,member
SME,UPU,member
SME,WCL,member
SME,WHO,member
SME,WIPO,member
SME,WMO,member
SME,WTrO,member
YV,AG,member
YV,NAM,member
YV,RG,member
YV,OPANAL,member
YV,Caricom,observer
YV,CDB,regional member
YV,BCIE,nonregional member
YV,ECLAC,member
YV,FAO,member
YV,G-3,member
YV,G-11,member
YV,G-15,member
YV,G-19,member
YV,G-24,member
YV,G-77,member
YV,IADB,member
YV,IAEA,member
YV,IBRD,member
YV,ICC,member
YV,ICAO,member
YV,ICFTU,member
YV,Interpol,member
YV,IFRCS,member
YV,IFC,member
YV,IFAD,Category II
YV,ILO,member
YV,IMO,member
YV,IMF,member
YV,IOC,National Olympic Committee
YV,IOM,member
YV,ISO,member
YV,ICRM,National Society
YV,ITU,member
YV,Intelsat,member
YV,LAES,member
YV,LAIA,member
YV,OAS,member
YV,OPEC,member
YV,PCA,member
YV,UN,member
YV,UNESCO,member
YV,UNIDO,member
YV,UNIKOM,member
YV,MINURSO,member
YV,UNHCR,member
YV,UNU,member
YV,UPU,member
YV,WCL,member
YV,WFTU,member
YV,WHO,member
YV,WIPO,member
YV,WMO,member
YV,WToO,member
YV,WTrO,member
EC,AG,member
EC,NAM,member
EC,RG,member
EC,OPANAL,member
EC,ECLAC,member
EC,FAO,member
EC,G-11,member
EC,G-77,member
EC,IADB,member
EC,IAEA,member
EC,IBRD,member
EC,ICC,member
EC,ICAO,member
EC,ICFTU,member
EC,Interpol,member
EC,IDA,Part II
EC,IFRCS,member
EC,IFC,member
EC,IFAD,Category III
EC,ILO,member
EC,IMO,member
EC,IMF,member
EC,IOC,National Olympic Committee
EC,IOM,member
EC,ICRM,National Society
EC,ITU,member
EC,Intelsat,member
EC,LAES,member
EC,LAIA,member
EC,OAS,member
EC,PCA,member
EC,UN,member
EC,UNESCO,member
EC,UNIDO,member
EC,UPU,member
EC,WCL,member
EC,WFTU,member
EC,WHO,member
EC,WIPO,member
EC,WMO,member
EC,WToO,member
EC,WTrO,applicant
DZ,AL,member
DZ,NAM,member
DZ,AfDB,regional member
DZ,ABEDA,member
DZ,AFESD,member
DZ,AMU,member
DZ,AMF,member
DZ,CCC,member
DZ,ECA,member
DZ,FAO,member
DZ,G-15,member
DZ,G-19,member
DZ,G-24,member
DZ,G-77,member
DZ,IAEA,member
DZ,IBRD,member
DZ,ICAO,member
DZ,Interpol,member
DZ,IDA,Part II
DZ,IFRCS,member
DZ,IFC,member
DZ,IFAD,Category II
DZ,ILO,member
DZ,IMO,member
DZ,Inmarsat,member
DZ,IMF,member
DZ,IOC,National Olympic Committee
DZ,ISO,member
DZ,ICRM,National Society
DZ,ITU,member
DZ,Intelsat,member
DZ,IDB,member
DZ,OAU,member
DZ,OAS,observer
DZ,OAPEC,member
DZ,OPEC,member
DZ,OIC,member
DZ,UN,member
DZ,UNAVEM III,member
DZ,UNESCO,member
DZ,UNIDO,member
DZ,UNMIH,member
DZ,UNHCR,member
DZ,UPU,member
DZ,WCL,member
DZ,WHO,member
DZ,WIPO,member
DZ,WMO,member
DZ,WToO,member
DZ,WTrO,applicant
LAR,AL,member
LAR,NAM,member
LAR,AfDB,regional member
LAR,ABEDA,member
LAR,AFESD,member
LAR,AMU,member
LAR,AMF,member
LAR,CAEU,member
LAR,CCC,member
LAR,ECA,member
LAR,FAO,member
LAR,G-77,member
LAR,IAEA,member
LAR,IBRD,member
LAR,ICAO,member
LAR,Interpol,member
LAR,IDA,Part II
LAR,IFRCS,member
LAR,IFC,member
LAR,IFAD,Category II
LAR,ILO,member
LAR,IMO,member
LAR,IMF,member
LAR,IOC,National Olympic Committee
LAR,ISO,member
LAR,ICRM,National Society
LAR,ITU,member
LAR,Intelsat,member
LAR,IDB,member
LAR,OAU,member
LAR,OAPEC,member
LAR,OPEC,member
LAR,OIC,member
LAR,UN,member
LAR,UNESCO,member
LAR,UNIDO,member
LAR,UNITAR,member
LAR,UPU,member
LAR,WFTU,member
LAR,WHO,member
LAR,WIPO,member
LAR,WMO,member
LAR,WToO,member
LAR,WTrO,observer
RMM,NAM,member
RMM,ACP,member
RMM,AfDB,regional member
RMM,ACCT,member
RMM,CCC,member
RMM,ECA,member
RMM,ECOWAS,member
RMM,FAO,member
RMM,FZ,member
RMM,G-77,member
RMM,IAEA,member
RMM,IBRD,member
RMM,ICAO,member
RMM,ICFTU,member
RMM,Interpol,member
RMM,IDA,Part II
RMM,IFRCS,member
RMM,IFC,member
RMM,IFAD,Category III
RMM,ILO,member
RMM,IMF,member
RMM,IOC,National Olympic Committee
RMM,ICRM,National Society
RMM,ITU,member
RMM,Intelsat,member
RMM,IDB,member
RMM,OAU,member
RMM,OIC,member
RMM,UN,member
RMM,UNAVEM III,member
RMM,UNAMIR,member
RMM,UNESCO,member
RMM,UNIDO,member
RMM,UNMIH,member
RMM,UPU,member
RMM,WADB,member
RMM,WCL,member
RMM,WFTU,member
RMM,WHO,member
RMM,WIPO,member
RMM,WMO,member
RMM,WToO,member
RMM,WTrO,member
RIM,AL,member
RIM,NAM,member
RIM,ACP,member
RIM,AfDB,regional member
RIM,ACCT,associate member
RIM,ABEDA,member
RIM,AFESD,member
RIM,AMU,member
RIM,AMF,member
RIM,CAEU,member
RIM,CCC,member
RIM,ECA,member
RIM,ECOWAS,member
RIM,FAO,member
RIM,G-77,member
RIM,IBRD,member
RIM,ICAO,member
RIM,Interpol,member
RIM,IDA,Part II
RIM,IFRCS,member
RIM,IFC,member
RIM,IFAD,Category III
RIM,ILO,member
RIM,IMO,member
RIM,IMF,member
RIM,IOC,National Olympic Committee
RIM,ICRM,National Society
RIM,ITU,member
RIM,Intelsat,member
RIM,IDB,member
RIM,OAU,member
RIM,OIC,member
RIM,UN,member
RIM,UNESCO,member
RIM,UNIDO,member
RIM,UPU,member
RIM,WHO,member
RIM,WIPO,member
RIM,WMO,member
RIM,WToO,member
RIM,WTrO,member
MA,AL,member
MA,NAM,member
MA,AfDB,regional member
MA,ACCT,associate member
MA,ABEDA,member
MA,AFESD,member
MA,AMU,member
MA,AMF,member
MA,CCC,member
MA,ECA,member
MA,EBRD,member
MA,FAO,member
MA,G-77,member
MA,IAEA,member
MA,IBRD,member
MA,ICC,member
MA,ICAO,member
MA,ICFTU,member
MA,Interpol,member
MA,IDA,Part II
MA,IFRCS,member
MA,IFC,member
MA,IFAD,Category III
MA,ILO,member
MA,IMO,member
MA,IMF,member
MA,IOC,National Olympic Committee
MA,IOM,observer
MA,ISO,member
MA,ICRM,National Society
MA,ITU,member
MA,Intelsat,member
MA,IDB,member
MA,OAS,observer
MA,OIC,member
MA,UN,member
MA,UNAVEM III,member
MA,UNESCO,member
MA,UNIDO,member
MA,UNHCR,member
MA,UPU,member
MA,WHO,member
MA,WIPO,member
MA,WMO,member
MA,WToO,member
MA,WTrO,member
RN,NAM,member
RN,ACP,member
RN,AfDB,regional member
RN,ACCT,member
RN,Entente,member
RN,CCC,member
RN,ECA,member
RN,ECOWAS,member
RN,FAO,member
RN,FZ,member
RN,G-77,member
RN,IAEA,member
RN,IBRD,member
RN,ICAO,member
RN,Interpol,member
RN,IDA,Part II
RN,IFRCS,member
RN,IFC,member
RN,IFAD,Category III
RN,ILO,member
RN,IMF,member
RN,IOC,National Olympic Committee
RN,ICRM,National Society
RN,ITU,member
RN,Intelsat,member
RN,IDB,member
RN,OAU,member
RN,OIC,member
RN,UN,member
RN,UNAMIR,member
RN,UNESCO,member
RN,UNIDO,member
RN,UPU,member
RN,WADB,member
RN,WCL,member
RN,WFTU,member
RN,WHO,member
RN,WIPO,member
RN,WMO,member
RN,WToO,member
TN,AL,member
TN,NAM,member
TN,AfDB,regional member
TN,ACCT,member
TN,ABEDA,member
TN,AFESD,member
TN,AMU,member
TN,AMF,member
TN,BSEC,observer
TN,CCC,member
TN,ECA,member
TN,FAO,member
TN,G-77,member
TN,IAEA,member
TN,IBRD,member
TN,ICC,member
TN,ICAO,member
TN,ICFTU,member
TN,Interpol,member
TN,IDA,Part II
TN,IFRCS,member
TN,IFC,member
TN,IFAD,Category III
TN,ILO,member
TN,IMO,member
TN,Inmarsat,member
TN,IMF,member
TN,IOC,National Olympic Committee
TN,ISO,member
TN,ICRM,National Society
TN,ITU,member
TN,Intelsat,member
TN,IDB,member
TN,OAU,member
TN,OAS,observer
TN,OIC,member
TN,UN,member
TN,UNAMIR,member
TN,UNCRO,member
TN,UNESCO,member
TN,UNIDO,member
TN,UNITAR,member
TN,MINURSO,member
TN,UNHCR,member
TN,UPU,member
TN,WFTU,member
TN,WHO,member
TN,WIPO,member
TN,WMO,member
TN,WToO,member
TN,WTrO,member
ANG,NAM,member
ANG,ACP,member
ANG,AfDB,regional member
ANG,CCC,member
ANG,ECA,member
ANG,CEEAC,observer
ANG,FAO,member
ANG,G-77,member
ANG,IBRD,member
ANG,ICAO,member
ANG,Interpol,member
ANG,IDA,Part II
ANG,IFRCS,member
ANG,IFC,member
ANG,IFAD,Category III
ANG,ILO,member
ANG,IMO,member
ANG,IMF,member
ANG,IOC,National Olympic Committee
ANG,IOM,member
ANG,ICRM,National Society
ANG,ITU,member
ANG,Intelsat,member
ANG,OAU,member
ANG,OAS,observer
ANG,SADC,member
ANG,UN,member
ANG,UNESCO,member
ANG,UNIDO,member
ANG,UPU,member
ANG,WCL,member
ANG,WFTU,member
ANG,WHO,member
ANG,WIPO,member
ANG,WMO,member
ANG,WToO,member
RCB,NAM,member
RCB,ACP,member
RCB,AfDB,regional member
RCB,ACCT,member
RCB,UDEAC,member
RCB,BDEAC,member
RCB,CCC,member
RCB,ECA,member
RCB,CEEAC,member
RCB,FAO,member
RCB,FZ,member
RCB,G-77,member
RCB,IBRD,member
RCB,ICAO,member
RCB,Interpol,member
RCB,IDA,Part II
RCB,IFRCS,member
RCB,IFC,member
RCB,IFAD,Category III
RCB,ILO,member
RCB,IMO,member
RCB,IMF,member
RCB,IOC,National Olympic Committee
RCB,ICRM,National Society
RCB,ITU,member
RCB,Intelsat,member
RCB,OAU,member
RCB,UN,member
RCB,UNAVEM III,member
RCB,UNAMIR,member
RCB,UNESCO,member
RCB,UNIDO,member
RCB,UPU,member
RCB,WFTU,member
RCB,WHO,member
RCB,WIPO,member
RCB,WMO,member
RCB,WToO,member
NAM,C,member
NAM,NAM,member
NAM,ACP,member
NAM,AfDB,regional member
NAM,CCC,member
NAM,ECA,member
NAM,FAO,member
NAM,G-77,member
NAM,IAEA,member
NAM,IBRD,member
NAM,ICAO,member
NAM,Interpol,member
NAM,IFRCS,member
NAM,IFC,member
NAM,IFAD,Category III
NAM,ILO,member
NAM,IMO,member
NAM,IMF,member
NAM,IOC,National Olympic Committee
NAM,IOM,observer
NAM,ICRM,National Society
NAM,ITU,member
NAM,Intelsat,member
NAM,OAU,member
NAM,SACU,member
NAM,SADC,member
NAM,UN,member
NAM,UNESCO,member
NAM,UNIDO,member
NAM,UNHCR,member
NAM,UPU,member
NAM,WCL,member
NAM,WHO,member
NAM,WIPO,member
NAM,WMO,member
NAM,WTrO,member
ZRE,NAM,member
ZRE,ACP,member
ZRE,AfDB,regional member
ZRE,ACCT,member
ZRE,CCC,member
ZRE,ECA,member
ZRE,CEEAC,member
ZRE,CEPGL,member
ZRE,FAO,member
ZRE,G-19,member
ZRE,G-24,member
ZRE,G-77,member
ZRE,IAEA,member
ZRE,IBRD,member
ZRE,ICC,member
ZRE,ICAO,member
ZRE,Interpol,member
ZRE,IDA,Part II
ZRE,IFRCS,member
ZRE,IFC,member
ZRE,IFAD,Category III
ZRE,ILO,member
ZRE,IMO,member
ZRE,IMF,member
ZRE,IOC,National Olympic Committee
ZRE,ICRM,National Society
ZRE,ITU,member
ZRE,Intelsat,member
ZRE,OAU,member
ZRE,PCA,member
ZRE,UN,member
ZRE,UNESCO,member
ZRE,UNIDO,member
ZRE,UNHCR,member
ZRE,UPU,member
ZRE,WCL,member
ZRE,WFTU,member
ZRE,WHO,member
ZRE,WIPO,member
ZRE,WMO,member
ZRE,WToO,member
Z,C,member
Z,NAM,member
Z,ACP,member
Z,AfDB,regional member
Z,CCC,member
Z,ECA,member
Z,FAO,member
Z,G-19,member
Z,G-77,member
Z,IAEA,member
Z,IBRD,member
Z,ICAO,member
Z,ICFTU,member
Z,Interpol,member
Z,IDA,Part II
Z,IFRCS,member
Z,IFC,member
Z,IFAD,Category III
Z,ILO,member
Z,IMF,member
Z,IOC,National Olympic Committee
Z,IOM,member
Z,ICRM,National Society
Z,ITU,member
Z,Intelsat,member
Z,OAU,member
Z,SADC,member
Z,UN,member
Z,UNAVEM III,member
Z,UNAMIR,member
Z,UNESCO,member
Z,UNIDO,member
Z,UPU,member
Z,WCL,member
Z,WHO,member
Z,WIPO,member
Z,WMO,member
Z,WToO,member
Z,WTrO,member
BEN,NAM,member
BEN,ACP,member
BEN,AfDB,regional member
BEN,ACCT,member
BEN,Entente,member
BEN,ECA,member
BEN,ECOWAS,member
BEN,FAO,member
BEN,FZ,member
BEN,G-77,member
BEN,IBRD,member
BEN,ICAO,member
BEN,ICFTU,member
BEN,Interpol,member
BEN,IDA,Part II
BEN,IFRCS,member
BEN,IFC,member
BEN,IFAD,Category III
BEN,ILO,member
BEN,IMO,member
BEN,IMF,member
BEN,IOC,National Olympic Committee
BEN,ICRM,National Society
BEN,ITU,member
BEN,Intelsat,member
BEN,IDB,member
BEN,OAU,member
BEN,OIC,member
BEN,UN,member
BEN,UNESCO,member
BEN,UNIDO,member
BEN,UNMIH,member
BEN,UPU,member
BEN,WADB,member
BEN,WCL,member
BEN,WFTU,member
BEN,WHO,member
BEN,WIPO,member
BEN,WMO,member
BEN,WToO,member
BF,NAM,member
BF,ACP,member
BF,AfDB,regional member
BF,ACCT,member
BF,Entente,member
BF,CCC,member
BF,ECA,member
BF,ECOWAS,member
BF,FAO,member
BF,FZ,member
BF,G-77,member
BF,IBRD,member
BF,ICC,member
BF,ICAO,member
BF,ICFTU,member
BF,Interpol,member
BF,IDA,Part II
BF,IFRCS,member
BF,IFC,member
BF,IFAD,Category III
BF,ILO,member
BF,IMF,member
BF,IOC,National Olympic Committee
BF,ICRM,National Society
BF,ITU,member
BF,Intelsat,member
BF,IDB,member
BF,OAU,member
BF,OIC,member
BF,PCA,member
BF,UN,member
BF,UNESCO,member
BF,UNIDO,member
BF,UPU,member
BF,WADB,member
BF,WCL,member
BF,WFTU,member
BF,WHO,member
BF,WIPO,member
BF,WMO,member
BF,WToO,member
BF,WTrO,member
WAN,C,member
WAN,NAM,member
WAN,ACP,member
WAN,AfDB,regional member
WAN,CCC,member
WAN,ECA,member
WAN,ECOWAS,member
WAN,FAO,member
WAN,G-15,member
WAN,G-19,member
WAN,G-24,member
WAN,G-77,member
WAN,IAEA,member
WAN,IBRD,member
WAN,ICC,member
WAN,ICAO,member
WAN,Interpol,member
WAN,IDA,Part II
WAN,IFRCS,member
WAN,IFC,member
WAN,IFAD,Category II
WAN,ILO,member
WAN,IMO,member
WAN,Inmarsat,member
WAN,IMF,member
WAN,IOC,National Olympic Committee
WAN,ICRM,National Society
WAN,ITU,member
WAN,Intelsat,member
WAN,OAU,member
WAN,OPEC,member
WAN,PCA,member
WAN,UN,member
WAN,UNAVEM III,member
WAN,UNAMIR,member
WAN,UNCRO,member
WAN,UNESCO,member
WAN,UNIDO,member
WAN,UNIKOM,member
WAN,MINURSO,member
WAN,UNHCR,member
WAN,UNPREDEP,member
WAN,UNPROFOR,member
WAN,UNU,member
WAN,UPU,member
WAN,WCL,member
WAN,WFTU,member
WAN,WHO,member
WAN,WIPO,member
WAN,WMO,member
WAN,WToO,member
WAN,WTrO,member
RT,NAM,member
RT,ACP,member
RT,AfDB,regional member
RT,ACCT,member
RT,Entente,member
RT,CCC,member
RT,ECA,member
RT,ECOWAS,member
RT,FAO,member
RT,FZ,member
RT,G-77,member
RT,IBRD,member
RT,ICC,member
RT,ICAO,member
RT,ICFTU,member
RT,Interpol,member
RT,IDA,Part II
RT,IFRCS,member
RT,IFC,member
RT,IFAD,Category III
RT,ILO,member
RT,IMO,member
RT,IMF,member
RT,IOC,National Olympic Committee
RT,ICRM,National Society
RT,ITU,member
RT,Intelsat,member
RT,OAU,member
RT,UN,member
RT,UNESCO,member
RT,UNIDO,member
RT,MINURSO,member
RT,UNMIH,member
RT,UPU,member
RT,WADB,member
RT,WCL,member
RT,WFTU,member
RT,WHO,member
RT,WIPO,member
RT,WMO,member
RT,WToO,member
RT,WTrO,member
RB,C,member
RB,NAM,member
RB,ACP,member
RB,AfDB,regional member
RB,CCC,member
RB,ECA,member
RB,FAO,member
RB,G-77,member
RB,IBRD,member
RB,ICAO,member
RB,ICFTU,member
RB,Interpol,member
RB,IDA,Part II
RB,IFRCS,member
RB,IFC,member
RB,IFAD,Category III
RB,ILO,member
RB,IMF,member
RB,IOC,National Olympic Committee
RB,ICRM,National Society
RB,ITU,member
RB,Intelsat,member
RB,OAU,member
RB,SACU,member
RB,SADC,member
RB,UN,member
RB,UNESCO,member
RB,UNIDO,member
RB,UPU,member
RB,WCL,member
RB,WFTU,member
RB,WHO,member
RB,WMO,member
RB,WTrO,member
RSA,C,member
RSA,NAM,member
RSA,BIS,member
RSA,CCC,member
RSA,ECA,member
RSA,FAO,member
RSA,G-77,member
RSA,IAEA,member
RSA,IBRD,member
RSA,ICC,member
RSA,ICAO,member
RSA,Interpol,member
RSA,IDA,Part I
RSA,IFRCS,member
RSA,IFC,member
RSA,ILO,member
RSA,IMO,member
RSA,Inmarsat,member
RSA,IMF,member
RSA,IOC,National Olympic Committee
RSA,ISO,member
RSA,ICRM,National Society
RSA,ITU,member
RSA,Intelsat,member
RSA,MTCR,member
RSA,NSG,member
RSA,OAU,member
RSA,SACU,member
RSA,SADC,member
RSA,UN,member
RSA,UNESCO,member
RSA,UPU,member
RSA,WFTU,member
RSA,WHO,member
RSA,WIPO,member
RSA,WMO,member
RSA,WTrO,member
RSA,ZC,member
ZW,C,member
ZW,NAM,member
ZW,ACP,member
ZW,AfDB,regional member
ZW,CCC,member
ZW,ECA,member
ZW,FAO,member
ZW,G-15,member
ZW,G-77,member
ZW,IAEA,member
ZW,IBRD,member
ZW,ICAO,member
ZW,ICFTU,member
ZW,Interpol,member
ZW,IDA,Part II
ZW,IFRCS,member
ZW,IFC,member
ZW,IFAD,Category III
ZW,ILO,member
ZW,IMF,member
ZW,IOC,National Olympic Committee
ZW,IOM,observer
ZW,ISO,member
ZW,ICRM,National Society
ZW,ITU,member
ZW,Intelsat,member
ZW,OAU,member
ZW,PCA,member
ZW,SADC,member
ZW,UN,member
ZW,UNAVEM III,member
ZW,UNAMIR,member
ZW,UNESCO,member
ZW,UNIDO,member
ZW,UPU,member
ZW,WCL,member
ZW,WFTU,member
ZW,WHO,member
ZW,WIPO,member
ZW,WMO,member
ZW,WToO,member
ZW,WTrO,member
CI,NAM,member
CI,ACP,member
CI,AfDB,regional member
CI,ACCT,member
CI,Entente,member
CI,CCC,member
CI,ECA,member
CI,ECOWAS,member
CI,FAO,member
CI,FZ,member
CI,G-24,member
CI,G-77,member
CI,IAEA,member
CI,IBRD,member
CI,ICC,member
CI,ICAO,member
CI,Interpol,member
CI,IDA,Part II
CI,IFRCS,member
CI,IFC,member
CI,IFAD,Category III
CI,ILO,member
CI,IMO,member
CI,IMF,member
CI,IOC,National Olympic Committee
CI,ICRM,National Society
CI,ITU,member
CI,Intelsat,member
CI,OAU,member
CI,UN,member
CI,UNESCO,member
CI,UNIDO,member
CI,UNITAR,member
CI,UPU,member
CI,WADB,member
CI,WCL,member
CI,WFTU,member
CI,WHO,member
CI,WIPO,member
CI,WMO,member
CI,WToO,member
CI,WTrO,member
GH,C,member
GH,NAM,member
GH,ACP,member
GH,AfDB,regional member
GH,CCC,member
GH,ECA,member
GH,ECOWAS,member
GH,FAO,member
GH,G-24,member
GH,G-77,member
GH,IAEA,member
GH,IBRD,member
GH,ICAO,member
GH,ICFTU,member
GH,Interpol,member
GH,IDA,Part II
GH,IFRCS,member
GH,IFC,member
GH,IFAD,Category III
GH,ILO,member
GH,IMO,member
GH,IMF,member
GH,IOC,National Olympic Committee
GH,IOM,observer
GH,ICRM,National Society
GH,ITU,member
GH,Intelsat,member
GH,OAU,member
GH,UN,member
GH,UNAMIR,member
GH,UNCRO,member
GH,UNESCO,member
GH,UNIDO,member
GH,UNIFIL,member
GH,UNIKOM,member
GH,MINURSO,member
GH,UNPREDEP,member
GH,UNPROFOR,member
GH,UNU,member
GH,UPU,member
GH,WCL,member
GH,WFTU,member
GH,WHO,member
GH,WIPO,member
GH,WMO,member
GH,WToO,member
GH,WTrO,member
BI,NAM,member
BI,ACP,member
BI,AfDB,regional member
BI,ACCT,member
BI,CCC,member
BI,ECA,member
BI,CEEAC,member
BI,CEPGL,member
BI,FAO,member
BI,G-77,member
BI,IBRD,member
BI,ICAO,member
BI,Interpol,member
BI,IDA,Part II
BI,IFRCS,member
BI,IFC,member
BI,IFAD,Category III
BI,ILO,member
BI,IMF,member
BI,IOC,National Olympic Committee
BI,ISO,subscriber member
BI,ICRM,National Society
BI,ITU,member
BI,Intelsat,nonsignatory user
BI,OAU,member
BI,UN,member
BI,UNESCO,member
BI,UNIDO,member
BI,UPU,member
BI,WHO,member
BI,WIPO,member
BI,WMO,member
BI,WToO,member
BI,WTrO,member
RWA,NAM,member
RWA,ACP,member
RWA,AfDB,regional member
RWA,ACCT,member
RWA,CCC,member
RWA,ECA,member
RWA,CEEAC,member
RWA,CEPGL,member
RWA,FAO,member
RWA,G-77,member
RWA,IBRD,member
RWA,ICAO,member
RWA,ICFTU,member
RWA,Interpol,member
RWA,IDA,Part II
RWA,IFRCS,member
RWA,IFC,member
RWA,IFAD,Category III
RWA,ILO,member
RWA,IMF,member
RWA,IOC,National Olympic Committee
RWA,IOM,observer
RWA,ICRM,National Society
RWA,ITU,member
RWA,Intelsat,member
RWA,OAU,member
RWA,UN,member
RWA,UNESCO,member
RWA,UNIDO,member
RWA,UPU,member
RWA,WCL,member
RWA,WHO,member
RWA,WIPO,member
RWA,WMO,member
RWA,WToO,member
EAT,C,member
EAT,NAM,member
EAT,ACP,member
EAT,AfDB,regional member
EAT,CCC,member
EAT,EADB,member
EAT,ECA,member
EAT,FAO,member
EAT,G-6,member
EAT,G-77,member
EAT,IAEA,member
EAT,IBRD,member
EAT,ICAO,member
EAT,Interpol,member
EAT,IDA,Part II
EAT,IFRCS,member
EAT,IFC,member
EAT,IFAD,Category III
EAT,ILO,member
EAT,IMO,member
EAT,IMF,member
EAT,IOC,National Olympic Committee
EAT,ISO,member
EAT,ICRM,National Society
EAT,ITU,member
EAT,Intelsat,member
EAT,OAU,member
EAT,SADC,member
EAT,UN,member
EAT,UNAVEM III,member
EAT,UNESCO,member
EAT,UNIDO,member
EAT,UNHCR,member
EAT,UPU,member
EAT,WCL,member
EAT,WFTU,member
EAT,WHO,member
EAT,WIPO,member
EAT,WMO,member
EAT,WToO,member
EAT,WTrO,member
CAM,NAM,member
CAM,ACP,member
CAM,AfDB,regional member
CAM,ACCT,member
CAM,UDEAC,member
CAM,BDEAC,member
CAM,CCC,member
CAM,ECA,member
CAM,CEEAC,member
CAM,FAO,member
CAM,FZ,member
CAM,G-19,member
CAM,G-77,member
CAM,IAEA,member
CAM,IBRD,member
CAM,ICC,member
CAM,ICAO,member
CAM,ICFTU,member
CAM,Interpol,member
CAM,IDA,Part II
CAM,IFRCS,member
CAM,IFC,member
CAM,IFAD,Category III
CAM,ILO,member
CAM,IMO,member
CAM,Inmarsat,member
CAM,IMF,member
CAM,IOC,National Olympic Committee
CAM,ICRM,National Society
CAM,ITU,member
CAM,Intelsat,member
CAM,IDB,member
CAM,OAU,member
CAM,OIC,member
CAM,PCA,member
CAM,UN,member
CAM,UNESCO,member
CAM,UNIDO,member
CAM,UPU,member
CAM,WCL,member
CAM,WFTU,member
CAM,WHO,member
CAM,WIPO,member
CAM,WMO,member
CAM,WToO,member
CAM,WTrO,member
RCA,NAM,member
RCA,ACP,member
RCA,AfDB,regional member
RCA,ACCT,member
RCA,UDEAC,member
RCA,BDEAC,member
RCA,CCC,member
RCA,ECA,member
RCA,CEEAC,member
RCA,FAO,member
RCA,FZ,member
RCA,G-77,member
RCA,IBRD,member
RCA,ICAO,member
RCA,Interpol,member
RCA,IDA,Part II
RCA,IFRCS,member
RCA,IFC,member
RCA,IFAD,Category III
RCA,ILO,member
RCA,IMF,member
RCA,IOC,National Olympic Committee
RCA,ICRM,National Society
RCA,ITU,member
RCA,Intelsat,member
RCA,OAU,member
RCA,UN,member
RCA,UNESCO,member
RCA,UNIDO,member
RCA,UPU,member
RCA,WCL,member
RCA,WHO,member
RCA,WIPO,member
RCA,WMO,member
RCA,WTrO,member
TCH,NAM,member
TCH,ACP,member
TCH,AfDB,regional member
TCH,ACCT,member
TCH,UDEAC,member
TCH,BDEAC,member
TCH,ECA,member
TCH,CEEAC,member
TCH,FAO,member
TCH,FZ,member
TCH,G-77,member
TCH,IBRD,member
TCH,ICAO,member
TCH,ICFTU,member
TCH,Interpol,member
TCH,IDA,Part II
TCH,IFRCS,member
TCH,IFAD,Category III
TCH,ILO,member
TCH,IMF,member
TCH,IOC,National Olympic Committee
TCH,ICRM,National Society
TCH,ITU,member
TCH,Intelsat,member
TCH,IDB,member
TCH,OAU,member
TCH,OIC,member
TCH,UN,member
TCH,UNAMIR,member
TCH,UNESCO,member
TCH,UNIDO,member
TCH,UPU,member
TCH,WCL,member
TCH,WHO,member
TCH,WIPO,member
TCH,WMO,member
TCH,WToO,member
GQ,NAM,member
GQ,ACP,member
GQ,AfDB,regional member
GQ,ACCT,member
GQ,UDEAC,member
GQ,BDEAC,member
GQ,ECA,member
GQ,CEEAC,member
GQ,FAO,member
GQ,FZ,member
GQ,G-77,member
GQ,IBRD,member
GQ,ICAO,member
GQ,Interpol,member
GQ,IDA,Part II
GQ,IFRCS,member
GQ,IFC,member
GQ,IFAD,Category III
GQ,ILO,member
GQ,IMO,member
GQ,IMF,member
GQ,IOC,National Olympic Committee
GQ,ITU,member
GQ,Intelsat,nonsignatory user
GQ,OAU,member
GQ,OAS,observer
GQ,UN,member
GQ,UNESCO,member
GQ,UNIDO,member
GQ,UPU,member
GQ,WHO,member
GQ,WTrO,applicant
G,NAM,member
G,ACP,member
G,AfDB,regional member
G,ACCT,member
G,UDEAC,member
G,BDEAC,member
G,CCC,member
G,ECA,member
G,CEEAC,member
G,FAO,member
G,FZ,member
G,G-24,member
G,G-77,member
G,IAEA,member
G,IBRD,member
G,ICC,member
G,ICAO,member
G,ICFTU,member
G,Interpol,member
G,IDA,Part II
G,IFRCS,associate member
G,IFC,member
G,IFAD,Category II
G,ILO,member
G,IMO,member
G,Inmarsat,member
G,IMF,member
G,IOC,National Olympic Committee
G,ITU,member
G,Intelsat,member
G,IDB,member
G,OAU,member
G,OPEC,member
G,OIC,member
G,UN,member
G,UNESCO,member
G,UNIDO,member
G,UPU,member
G,WCL,member
G,WHO,member
G,WIPO,member
G,WMO,member
G,WToO,member
G,WTrO,member
CV,NAM,member
CV,ACP,member
CV,AfDB,regional member
CV,CCC,member
CV,ECA,member
CV,ECOWAS,member
CV,FAO,member
CV,G-77,member
CV,IBRD,member
CV,ICAO,member
CV,ICFTU,member
CV,Interpol,member
CV,IDA,Part II
CV,IFRCS,member
CV,IFC,member
CV,IFAD,Category III
CV,ILO,member
CV,IMO,member
CV,IMF,member
CV,IOC,National Olympic Committee
CV,IOM,observer
CV,ICRM,National Society
CV,ITU,member
CV,Intelsat,member
CV,OAU,member
CV,UN,member
CV,UNESCO,member
CV,UNIDO,member
CV,UPU,member
CV,WCL,member
CV,WHO,member
CV,WMO,member
CV,WTrO,applicant
SUD,AL,member
SUD,NAM,member
SUD,ACP,member
SUD,AfDB,regional member
SUD,ABEDA,member
SUD,AFESD,member
SUD,AMF,member
SUD,CAEU,member
SUD,CCC,member
SUD,ECA,member
SUD,FAO,member
SUD,G-77,member
SUD,IGADD,member
SUD,IAEA,member
SUD,IBRD,member
SUD,ICAO,member
SUD,Interpol,member
SUD,IDA,Part II
SUD,IFRCS,member
SUD,IFC,member
SUD,IFAD,Category III
SUD,ILO,member
SUD,IMO,member
SUD,IMF,member
SUD,IOC,National Olympic Committee
SUD,IOM,observer
SUD,ICRM,National Society
SUD,ITU,member
SUD,Intelsat,member
SUD,IDB,member
SUD,OAU,member
SUD,OIC,member
SUD,PCA,member
SUD,UN,member
SUD,UNESCO,member
SUD,UNIDO,member
SUD,UNHCR,member
SUD,UNU,member
SUD,UPU,member
SUD,WFTU,member
SUD,WHO,member
SUD,WIPO,member
SUD,WMO,member
SUD,WToO,member
SUD,WTrO,observer
COM,AL,member
COM,NAM,member
COM,ACP,member
COM,AfDB,regional member
COM,ACCT,member
COM,CCC,member
COM,ECA,member
COM,FAO,member
COM,FZ,member
COM,G-77,member
COM,IBRD,member
COM,ICAO,member
COM,IDA,Part II
COM,IFRCS,associate member
COM,IFC,member
COM,IFAD,Category III
COM,ILO,member
COM,IMF,member
COM,IOC,National Olympic Committee
COM,ITU,member
COM,Intelsat,nonsignatory user
COM,IDB,member
COM,OAU,member
COM,OIC,member
COM,UN,member
COM,UNESCO,member
COM,UNIDO,member
COM,UPU,member
COM,WHO,member
COM,WMO,member
RG,NAM,member
RG,ACP,member
RG,AfDB,regional member
RG,ACCT,member
RG,CCC,member
RG,ECA,member
RG,ECOWAS,member
RG,FAO,member
RG,G-77,member
RG,IBRD,member
RG,ICAO,member
RG,Interpol,member
RG,IDA,Part II
RG,IFRCS,member
RG,IFC,member
RG,IFAD,Category III
RG,ILO,member
RG,IMO,member
RG,IMF,member
RG,IOC,National Olympic Committee
RG,ICRM,National Society
RG,ITU,member
RG,Intelsat,member
RG,IDB,member
RG,OAU,member
RG,OIC,member
RG,UN,member
RG,UNAMIR,member
RG,UNESCO,member
RG,UNIDO,member
RG,MINURSO,member
RG,UPU,member
RG,WCL,member
RG,WFTU,member
RG,WHO,member
RG,WIPO,member
RG,WMO,member
RG,WToO,member
RG,WTrO,member
LB,NAM,member
LB,ACP,member
LB,AfDB,regional member
LB,CCC,member
LB,ECA,member
LB,ECOWAS,member
LB,FAO,member
LB,G-77,member
LB,IAEA,member
LB,IBRD,member
LB,ICAO,member
LB,ICFTU,member
LB,Interpol,member
LB,IDA,Part II
LB,IFRCS,member
LB,IFC,member
LB,IFAD,Category III
LB,ILO,member
LB,IMO,member
LB,Inmarsat,member
LB,IMF,member
LB,IOC,National Olympic Committee
LB,IOM,observer
LB,ICRM,National Society
LB,ITU,member
LB,Intelsat,nonsignatory user
LB,OAU,member
LB,UN,member
LB,UNESCO,member
LB,UNIDO,member
LB,UPU,member
LB,WCL,member
LB,WFTU,member
LB,WHO,member
LB,WIPO,member
LB,WMO,member
DJI,AL,member
DJI,NAM,member
DJI,ACP,member
DJI,AfDB,regional member
DJI,ACCT,member
DJI,AFESD,member
DJI,ECA,member
DJI,FAO,member
DJI,G-77,member
DJI,IGADD,member
DJI,IBRD,member
DJI,ICAO,member
DJI,Interpol,member
DJI,IDA,Part II
DJI,IFRCS,member
DJI,IFC,member
DJI,IFAD,Category III
DJI,ILO,member
DJI,IMO,member
DJI,IMF,member
DJI,IOC,National Olympic Committee
DJI,ICRM,National Society
DJI,ITU,member
DJI,Intelsat,nonsignatory user
DJI,IDB,member
DJI,OAU,member
DJI,OIC,member
DJI,UN,member
DJI,UNAMIR,member
DJI,UNESCO,member
DJI,UNIDO,member
DJI,UNMIH,member
DJI,UPU,member
DJI,WFTU,member
DJI,WHO,member
DJI,WMO,member
DJI,WTrO,member
ER,NAM,member
ER,ACP,member
ER,AfDB,regional member
ER,ECA,member
ER,FAO,member
ER,IGADD,member
ER,IBRD,member
ER,ICAO,member
ER,IDA,Part II
ER,IFAD,Category III
ER,ILO,member
ER,IMO,member
ER,IMF,member
ER,ITU,member
ER,Intelsat,nonsignatory user
ER,OAU,member
ER,UN,member
ER,UNESCO,member
ER,UNIDO,member
ER,UPU,member
ER,WFTU,member
ER,WHO,member
ER,WMO,member
ETH,NAM,member
ETH,ACP,member
ETH,AfDB,regional member
ETH,CCC,member
ETH,ECA,member
ETH,FAO,member
ETH,G-24,member
ETH,G-77,member
ETH,IGADD,member
ETH,IAEA,member
ETH,IBRD,member
ETH,ICAO,member
ETH,Interpol,member
ETH,IDA,Part II
ETH,IFRCS,member
ETH,IFC,member
ETH,IFAD,Category III
ETH,ILO,member
ETH,IMO,member
ETH,IMF,member
ETH,IOC,National Olympic Committee
ETH,ISO,member
ETH,ICRM,National Society
ETH,ITU,member
ETH,Intelsat,member
ETH,OAU,member
ETH,UN,member
ETH,UNESCO,member
ETH,UNIDO,member
ETH,UNHCR,member
ETH,UNU,member
ETH,UPU,member
ETH,WFTU,member
ETH,WHO,member
ETH,WMO,member
ETH,WToO,member
ETH,WTrO,observer
SP,AL,member
SP,NAM,member
SP,ACP,member
SP,AfDB,regional member
SP,AFESD,member
SP,AMF,member
SP,CAEU,member
SP,ECA,member
SP,FAO,member
SP,G-77,member
SP,IGADD,member
SP,IBRD,member
SP,ICAO,member
SP,Interpol,member
SP,IDA,Part II
SP,IFRCS,member
SP,IFC,member
SP,IFAD,Category III
SP,ILO,member
SP,IMO,member
SP,IMF,member
SP,IOC,National Olympic Committee
SP,IOM,observer
SP,ICRM,National Society
SP,ITU,member
SP,Intelsat,member
SP,IDB,member
SP,OAU,member
SP,OIC,member
SP,UN,member
SP,UNESCO,member
SP,UNIDO,member
SP,UNHCR,member
SP,UPU,member
SP,WFTU,member
SP,WHO,member
SP,WIPO,member
SP,WMO,member
SP,WTrO,observer
EAK,C,member
EAK,NAM,member
EAK,ACP,member
EAK,AfDB,regional member
EAK,CCC,member
EAK,EADB,member
EAK,ECA,member
EAK,FAO,member
EAK,G-77,member
EAK,IGADD,member
EAK,IAEA,member
EAK,IBRD,member
EAK,ICAO,member
EAK,ICFTU,member
EAK,Interpol,member
EAK,IDA,Part II
EAK,IFRCS,member
EAK,IFC,member
EAK,IFAD,Category III
EAK,ILO,member
EAK,IMO,member
EAK,IMF,member
EAK,IOC,National Olympic Committee
EAK,IOM,member
EAK,ISO,member
EAK,ICRM,National Society
EAK,ITU,member
EAK,Intelsat,member
EAK,OAU,member
EAK,UN,member
EAK,UNAVEM III,member
EAK,UNCRO,member
EAK,UNESCO,member
EAK,UNIDO,member
EAK,UNIKOM,member
EAK,MINURSO,member
EAK,UNOMIL,member
EAK,UNPREDEP,member
EAK,UNPROFOR,member
EAK,UNU,member
EAK,UPU,member
EAK,WCL,member
EAK,WHO,member
EAK,WIPO,member
EAK,WMO,member
EAK,WToO,member
EAK,WTrO,member
WAG,C,member
WAG,NAM,member
WAG,ACP,member
WAG,AfDB,regional member
WAG,CCC,member
WAG,ECA,member
WAG,ECOWAS,member
WAG,FAO,member
WAG,G-77,member
WAG,IBRD,member
WAG,ICAO,member
WAG,ICFTU,member
WAG,Interpol,member
WAG,IDA,Part II
WAG,IFRCS,member
WAG,IFC,member
WAG,IFAD,Category III
WAG,ILO,member
WAG,IMO,member
WAG,IMF,member
WAG,IOC,National Olympic Committee
WAG,ICRM,National Society
WAG,ITU,member
WAG,Intelsat,nonsignatory user
WAG,IDB,member
WAG,OAU,member
WAG,OIC,member
WAG,UN,member
WAG,UNESCO,member
WAG,UNIDO,member
WAG,UPU,member
WAG,WCL,member
WAG,WFTU,member
WAG,WHO,member
WAG,WIPO,member
WAG,WMO,member
WAG,WToO,member
SN,NAM,member
SN,ACP,member
SN,AfDB,regional member
SN,ACCT,member
SN,CCC,member
SN,ECA,member
SN,ECOWAS,member
SN,FAO,member
SN,FZ,member
SN,G-15,member
SN,G-77,member
SN,IAEA,member
SN,IBRD,member
SN,ICC,member
SN,ICAO,member
SN,ICFTU,member
SN,Interpol,member
SN,IDA,Part II
SN,IFRCS,member
SN,IFC,member
SN,IFAD,Category III
SN,ILO,member
SN,IMO,member
SN,Inmarsat,member
SN,IMF,member
SN,IOC,National Olympic Committee
SN,ICRM,National Society
SN,ITU,member
SN,Intelsat,member
SN,IDB,member
SN,OAU,member
SN,OIC,member
SN,PCA,member
SN,UN,member
SN,UNAVEM III,member
SN,UNAMIR,member
SN,UNCRO,member
SN,UNESCO,member
SN,UNIDO,member
SN,UNIKOM,member
SN,UPU,member
SN,WADB,member
SN,WCL,member
SN,WFTU,member
SN,WHO,member
SN,WIPO,member
SN,WMO,member
SN,WToO,member
SN,WTrO,member
GNB,NAM,member
GNB,ACP,member
GNB,AfDB,regional member
GNB,ACCT,associate member
GNB,ECA,member
GNB,ECOWAS,member
GNB,FAO,member
GNB,G-77,member
GNB,IBRD,member
GNB,ICAO,member
GNB,Interpol,member
GNB,IDA,Part II
GNB,IFRCS,member
GNB,IFC,member
GNB,IFAD,Category III
GNB,ILO,member
GNB,IMO,member
GNB,IMF,member
GNB,IOM,observer
GNB,ICRM,National Society
GNB,ITU,member
GNB,Intelsat,nonsignatory user
GNB,IDB,member
GNB,OAU,member
GNB,OIC,member
GNB,UN,member
GNB,UNAVEM III,member
GNB,UNAMIR,member
GNB,UNESCO,member
GNB,UNIDO,member
GNB,UNOMIL,member
GNB,UPU,member
GNB,WFTU,member
GNB,WHO,member
GNB,WIPO,member
GNB,WMO,member
GNB,WToO,member
GNB,WTrO,member
WAL,C,member
WAL,NAM,member
WAL,ACP,member
WAL,AfDB,regional member
WAL,CCC,member
WAL,ECA,member
WAL,ECOWAS,member
WAL,FAO,member
WAL,G-77,member
WAL,IAEA,member
WAL,IBRD,member
WAL,ICAO,member
WAL,ICFTU,member
WAL,Interpol,member
WAL,IDA,Part II
WAL,IFRCS,member
WAL,IFC,member
WAL,IFAD,Category III
WAL,ILO,member
WAL,IMO,member
WAL,IMF,member
WAL,IOC,National Olympic Committee
WAL,ICRM,National Society
WAL,ITU,member
WAL,Intelsat,nonsignatory user
WAL,IDB,member
WAL,OAU,member
WAL,OIC,member
WAL,UN,member
WAL,UNESCO,member
WAL,UNIDO,member
WAL,UPU,member
WAL,WCL,member
WAL,WFTU,member
WAL,WHO,member
WAL,WIPO,member
WAL,WMO,member
WAL,WToO,member
WAL,WTrO,member
EAU,C,member
EAU,NAM,member
EAU,ACP,member
EAU,AfDB,regional member
EAU,CCC,member
EAU,EADB,member
EAU,ECA,member
EAU,FAO,member
EAU,G-77,member
EAU,IGADD,member
EAU,IAEA,member
EAU,IBRD,member
EAU,ICAO,member
EAU,ICFTU,member
EAU,Interpol,member
EAU,IDA,Part II
EAU,IFRCS,member
EAU,IFC,member
EAU,IFAD,Category III
EAU,ILO,member
EAU,IMF,member
EAU,IOC,National Olympic Committee
EAU,IOM,member
EAU,ISO,correspondent member
EAU,ICRM,National Society
EAU,ITU,member
EAU,Intelsat,member
EAU,IDB,member
EAU,OAU,member
EAU,OIC,member
EAU,PCA,member
EAU,UN,member
EAU,UNESCO,member
EAU,UNIDO,member
EAU,UNITAR,member
EAU,UNHCR,member
EAU,UPU,member
EAU,WFTU,member
EAU,WHO,member
EAU,WIPO,member
EAU,WMO,member
EAU,WToO,member
EAU,WTrO,member
LS,C,member
LS,NAM,member
LS,ACP,member
LS,AfDB,regional member
LS,CCC,member
LS,ECA,member
LS,FAO,member
LS,G-77,member
LS,IBRD,member
LS,ICAO,member
LS,ICFTU,member
LS,Interpol,member
LS,IDA,Part II
LS,IFRCS,member
LS,IFC,member
LS,IFAD,Category III
LS,ILO,member
LS,IMF,member
LS,IOC,National Olympic Committee
LS,ICRM,National Society
LS,ITU,member
LS,Intelsat,nonsignatory user
LS,OAU,member
LS,SACU,member
LS,SADC,member
LS,UN,member
LS,UNESCO,member
LS,UNIDO,member
LS,UNHCR,member
LS,UPU,member
LS,WCL,member
LS,WFTU,member
LS,WHO,member
LS,WIPO,member
LS,WMO,member
LS,WToO,member
LS,WTrO,member
RM,NAM,member
RM,ACP,member
RM,AfDB,regional member
RM,ACCT,member
RM,CCC,member
RM,ECA,member
RM,FAO,member
RM,G-77,member
RM,IAEA,member
RM,IBRD,member
RM,ICC,member
RM,ICAO,member
RM,ICFTU,member
RM,Interpol,member
RM,IDA,Part II
RM,IFRCS,member
RM,IFC,member
RM,IFAD,Category III
RM,ILO,member
RM,IMO,member
RM,IMF,member
RM,IOC,National Olympic Committee
RM,ICRM,National Society
RM,ITU,member
RM,Intelsat,member
RM,OAU,member
RM,UN,member
RM,UNESCO,member
RM,UNIDO,member
RM,UNHCR,member
RM,UPU,member
RM,WCL,member
RM,WFTU,member
RM,WHO,member
RM,WIPO,member
RM,WMO,member
RM,WToO,member
RM,WTrO,member
MW,C,member
MW,NAM,member
MW,ACP,member
MW,AfDB,regional member
MW,CCC,member
MW,ECA,member
MW,FAO,member
MW,G-77,member
MW,IBRD,member
MW,ICAO,member
MW,ICFTU,member
MW,Interpol,member
MW,IDA,Part II
MW,IFRCS,member
MW,IFC,member
MW,IFAD,Category III
MW,ILO,member
MW,IMO,member
MW,IMF,member
MW,IOC,National Olympic Committee
MW,ISO,correspondent member
MW,ICRM,National Society
MW,ITU,member
MW,Intelsat,member
MW,OAU,member
MW,SADC,member
MW,UN,member
MW,UNAMIR,member
MW,UNESCO,member
MW,UNIDO,member
MW,UPU,member
MW,WFTU,member
MW,WHO,member
MW,WIPO,member
MW,WMO,member
MW,WToO,member
MW,WTrO,member
MOC,NAM,member
MOC,ACP,member
MOC,AfDB,regional member
MOC,CCC,member
MOC,ECA,member
MOC,FAO,member
MOC,G-77,member
MOC,IBRD,member
MOC,ICAO,member
MOC,Interpol,member
MOC,IDA,Part II
MOC,IFRCS,member
MOC,IFC,member
MOC,IFAD,Category III
MOC,ILO,member
MOC,IMO,member
MOC,Inmarsat,member
MOC,IMF,member
MOC,IOC,National Olympic Committee
MOC,IOM,observer
MOC,ICRM,National Society
MOC,ITU,member
MOC,Intelsat,member
MOC,IDB,member
MOC,OAU,member
MOC,OIC,member
MOC,SADC,member
MOC,UN,member
MOC,UNESCO,member
MOC,UNIDO,member
MOC,UPU,member
MOC,WFTU,member
MOC,WHO,member
MOC,WMO,member
MOC,WTrO,member
MS,C,member
MS,NAM,member
MS,ACP,member
MS,AfDB,regional member
MS,ACCT,member
MS,CCC,member
MS,ECA,member
MS,FAO,member
MS,G-77,member
MS,IAEA,member
MS,IBRD,member
MS,ICAO,member
MS,ICFTU,member
MS,Interpol,member
MS,IDA,Part II
MS,IFRCS,member
MS,IFC,member
MS,IFAD,Category III
MS,ILO,member
MS,IMO,member
MS,Inmarsat,member
MS,IMF,member
MS,IOC,National Olympic Committee
MS,ISO,correspondent member
MS,ICRM,National Society
MS,ITU,member
MS,Intelsat,member
MS,OAU,member
MS,PCA,member
MS,SADC,member
MS,UN,member
MS,UNESCO,member
MS,UNIDO,member
MS,UPU,member
MS,WCL,member
MS,WFTU,member
MS,WHO,member
MS,WIPO,member
MS,WMO,member
MS,WToO,member
MS,WTrO,member
SD,C,member
SD,NAM,member
SD,ACP,member
SD,AfDB,regional member
SD,CCC,member
SD,ECA,member
SD,FAO,member
SD,G-77,member
SD,IBRD,member
SD,ICAO,member
SD,ICFTU,member
SD,Interpol,member
SD,IDA,Part II
SD,IFRCS,member
SD,IFC,member
SD,IFAD,Category III
SD,ILO,member
SD,IMF,member
SD,IOC,National Olympic Committee
SD,ICRM,National Society
SD,ITU,member
SD,Intelsat,member
SD,OAU,member
SD,PCA,member
SD,SACU,member
SD,SADC,member
SD,UN,member
SD,UNESCO,member
SD,UNIDO,member
SD,UPU,member
SD,WHO,member
SD,WIPO,member
SD,WMO,member
SD,WTrO,member
STP,NAM,member
STP,ACP,member
STP,AfDB,regional member
STP,ECA,member
STP,CEEAC,member
STP,FAO,member
STP,G-77,member
STP,IBRD,member
STP,ICAO,member
STP,Interpol,member
STP,IDA,Part II
STP,IFRCS,member
STP,IFAD,Category III
STP,ILO,member
STP,IMO,member
STP,IMF,member
STP,IOC,National Olympic Committee
STP,IOM,observer
STP,ICRM,National Society
STP,ITU,member
STP,Intelsat,nonsignatory user
STP,OAU,member
STP,UN,member
STP,UNESCO,member
STP,UNIDO,member
STP,UPU,member
STP,WHO,member
STP,WMO,member
STP,WToO,member
STP,WTrO,applicant
SY,C,member
SY,NAM,member
SY,ACP,member
SY,AfDB,regional member
SY,ACCT,member
SY,ECA,member
SY,FAO,member
SY,G-77,member
SY,IBRD,member
SY,ICAO,member
SY,ICFTU,member
SY,Interpol,member
SY,IFRCS,member
SY,IFC,member
SY,IFAD,Category III
SY,ILO,member
SY,IMO,member
SY,IMF,member
SY,IOC,National Olympic Committee
SY,ICRM,National Society
SY,Intelsat,nonsignatory user
SY,OAU,member
SY,UN,member
SY,UNESCO,member
SY,UNIDO,member
SY,UPU,member
SY,WCL,member
SY,WHO,member
SY,WMO,member
SY,WToO,member
SY,WTrO,applicant
\.

---Filling table lake :

COPY lake FROM STDIN csv;
Tschadsee,17000
Bodensee,539
Maelaren,1140
Lake Nicaragua,7997
Lake Tanganjika,34000
Lake Victoria,68000
Vaettern,1900
Vaenern,5546
Lake Ontario,18941
Great Slave Lake,28438
Lake Michigan,58000
Lake Erie,25612
Great Salt Lake,2600
Lake Maracaibo,3600
Lake Kalla,900
Lake Saima,1460
Paeijaenne,1090
Lake Ori,200
Mjoesen,368
Lake Naesi,250
Lake Skutari,300
Ozero Baikal,31500
Ozero Aral,62155
Lake Prespa,285
Lake Ohrid,367
Ozero Ladoga,18400
Ozero Balchash,18200
Ozero Onega,9610
Ozero Taimyr,4560
Ozero Chanka,4400
Ozero Pskovskoje,3550
Ozero Tschany,2500
Inari,1085
Lago di Garda ,370
Lake Amadeus,
Disappointment-Lake,
Lake Torren,
Lake Nasser,
Lake Volta,8480
Lake Tana,3630
Lake Assale,100
Lake Kainji,
Lake Abaya,
Lake Stephanie,
Lake Suat,
Lake Rudolph,8500
Lake Albert,5347
Lake Kioga,
Lake Eduard,2200
Lake Kivu,2650
Lake Rukwa,
Lake Natron,
Lake Eyasi,
Lake Mweru,4920
Lake Bangweulu,
Lake Nyasa,30800
Lake Chilwa,
Lake Cabora-Bassa,2800
Lake Kariba,11000
Lake Ngami,650
Lake Etoscha,
Lake Makarikari,
Issyk-Kul,6280
Arresee,40
Lake Titicaca,8300
Lac Leman,581
Lago Maggiore,216
Lago di Como,146
Lake Mackay,
Lake Eyre,
Lake Superior,84131
Lake Huron,61797
Lake Okeechobee,1813
Kentucky Lake,648
Chicamauga Lake,
Lake Winnipesaukee,
Lake Tahoe,500
F.D.R. Lake,
Lake Powell,
Lake Meade,637
Lake Winnipeg,24514
Lake Nipigon,4843
Lake Williston,
Great Bear Lake,31792
Lago de Chapala,1500
Lake Urumiyeh,4868
Daryacheh ye Namak,1806
Hamun e Jaz Murian,1097
Barrage de Mbakaou,
\.

---Filling table language :

COPY language FROM STDIN csv;
MK,Albanian,21
MK,Macedonian,70
MK,Turkish,3
MK,Serbo-Croatian,3
YU,Albanian,5
YU,Serbo-Croatian,95
F,French,100
E,Castilian Spanish,
E,Catalan,17
E,Galician,7
E,Basque,2
A,German,100
D,German,100
H,Hungarian,98
SLO,Slovenian,91
SLO,Serbo-Croatian,7
CH,French,18
CH,German,65
CH,Italian,12
CH,Romansch,1
PL,Polish,100
R,Russian,100
B,French,32
B,German,1
B,Dutch,56
NL,Dutch,100
BIH,Serbo-Croatian,99
HR,Serbo-Croatian,96
BG,Bulgarian,100
SF,Swedish,6
SF,Finnish,94
SF,Lapp- Russian-speaking,
N,Norwegian,100
S,Swedish,100
IS,Icelandic,100
RSM,Italian,100
P,Portuguese,100
AFG,Turkic,11
AFG,Pashtu,35
AFG,Afghan Persian,50
IR,Turkish,1
IR,Kurdish,9
IR,Baloch,1
IR,Arabic,1
IR,Luri,2
IR,Persian Persian,58
IR,Turkic Turkic,26
PK,English,
PK,Pashtu,8
PK,Urdu,8
PK,Punjabi,48
PK,Sindhi,12
PK,Burushaski,
PK,Balochi,3
PK,Hindko,2
PK,Brahui,1
PK,Siraiki,10
TM,Russian,12
TM,Uzbek,9
TM,Turkmen,72
UZB,Russian,14
UZB,Tajik,4
UZB,Uzbek,74
ARM,Russian,2
ARM,Armenian,96
GE,Russian,9
GE,Armenian,7
GE,Azeri,6
GE,Georgian,71
AZ,Russian,3
AZ,Armenian,2
AZ,Azeri,89
MYA,Burmese,100
IND,Hindi,30
KAZ,Kazak,40
NOK,Korean,100
MNG,Khalkha Mongol,90
NEP,Nepali,100
PNG,English,1
SA,Arabic,100
J,Japanese,100
YE,Arabic,100
CL,Tamil,18
CL,Sinhala,74
AG,English,100
BDS,English,100
GCA,Spanish,60
GCA,Indian,40
NIC,Spanish,100
PA,English,14
C,Spanish,100
DOM,Spanish,100
RH,French,10
CO,Spanish,100
KN,English,100
AUS,English,100
SLB,English,1
RCH,Spanish,100
FGU,French,100
RMM,Bambara,80
NAM,German,32
NAM,English,7
NAM,Herero,
NAM,Nama,
NAM,Afrikaans,60
NAM,languages: Oshivambo,
RG,French,100
LB,English,20
MOC,Portuguese,100
STP,Portuguese,100
\.

---Filling table located :

COPY located FROM STDIN csv;
Monaco,Monaco,MC,,,Mediterranean Sea
Kuwait,Kuwait,KWT,,,Persian Gulf
Djibouti,Djibouti,DJI,,,Gulf of Aden
Athens,Greece,GR,,,Mediterranean Sea
Budapest,Budapest (munic.),H,Donau,,
Riga,Latvia,LV,Western Dwina,,Baltic Sea
Warsaw,Warszwaskie,PL,Weichsel,,
Kiev,Kyyivska,UA,Dnepr,,
Copenhagen,Denmark,DK,,,Baltic Sea
Tallinn,Estonia,EW,,,Baltic Sea
Helsinki,Uusimaa,SF,,,Baltic Sea
Oslo,Oslo,N,,,North Sea
Stockholm,Stockholm,S,,Maelaren,Baltic Sea
Reykjavik,Iceland,IS,,,Atlantic Ocean
Dublin,Ireland,IRL,,,Irish Sea
Valletta,Malta,M,,,Mediterranean Sea
Tbilisi,Georgia,GE,Kura,,
Baku,Azerbaijan,AZ,,,Caspian Sea
Manama,Bahrain,BRN,,,Persian Gulf
Beirut,Lebanon,RL,,,Mediterranean Sea
Nassau,Bahamas,BS,,,Atlantic Ocean
Bridgetown,Barbados,BDS,,,Atlantic Ocean
Managua,Nicaragua,NIC,,Lake Nicaragua,
Panama City,Panama,PA,,,Pacific Ocean
Havana,Ciudad de la Habana,C,,,Gulf of Mexico
Roseau,Dominica,WD,,,Caribbean Sea
Port-au-Prince,Haiti,RH,,,Caribbean Sea
Kingston,Jamaica,JA,,,Caribbean Sea
Basseterre,Saint Kitts and Nevis,KN,,,Caribbean Sea
Castries,Saint Lucia,WL,,,Caribbean Sea
Kingstown,Saint Vincent and the Grenadines,WV,,,Caribbean Sea
Port-of-Spain,Trinidad and Tobago,TT,,,Atlantic Ocean
Wellington,New Zealand,NZ,,,Pacific Ocean
Buenos Aires,Distrito Federal,RA,Rio de la Plata,,
Asuncion,Paraguay,PY,Paraguay,,
Montevideo,Uruguay,ROU,Rio de la Plata,,Atlantic Ocean
Georgetown,Guyana,GUY,,,Atlantic Ocean
Paramaribo,Suriname,SME,,,Atlantic Ocean
Algiers,Algeria,DZ,,,Mediterranean Sea
Tripoli,Libya,LAR,,,Mediterranean Sea
Bamako,Mali,RMM,Niger,,
Niamey,Niger,RN,Niger,,
Tunis,Tunisia,TN,,,Mediterranean Sea
Luanda,Luanda,ANG,,,Atlantic Ocean
Brazzaville,Congo,RCB,Zaire,,
Lome,Togo,RT,,,Atlantic Ocean
Accra,Ghana,GH,,,Atlantic Ocean
Bujumbura,Burundi,BI,,Lake Tanganjika,
Dar es Salaam,Daressalam,EAT,,,Indian Ocean
Bangui,Central African Republic,RCA,Ubangi,,
NDjamena,Chad,TCH,Schari,,
Libreville,Gabon,G,,,Atlantic Ocean
Praia,Cape Verde,CV,,,Atlantic Ocean
Khartoum,al Khartum,SUD,Nile,,
Moroni,Comoros,COM,,,Indian Ocean
Conakry,Guinea,RG,,,Atlantic Ocean
Monrovia,Liberia,LB,,,Atlantic Ocean
Mogadishu,Somalia,SP,,,Indian Ocean
Banjul,Gambia,WAG,,,Atlantic Ocean
Dakar,Dakar,SN,,,Atlantic Ocean
Bissau,Guinea-Bissau,GNB,,,Atlantic Ocean
Freetown,Sierra Leone,WAL,,,Atlantic Ocean
Kampala,Uganda,EAU,,Lake Victoria,
Victoria,Seychelles,SY,,,Indian Ocean
Victoria,British Columbia,CDN,,,Pacific Ocean
Shkoder,Albania,AL,,Lake Skutari,
Durres,Albania,AL,,,Mediterranean Sea
Vlore,Albania,AL,,,Mediterranean Sea
Alexandria,El Iskandariya (munic.),ET,,,Mediterranean Sea
Aarhus,Denmark,DK,,,Baltic Sea
Esbjerg,Denmark,DK,,,North Sea
Tampere,Haeme,SF,,Lake Naesi,
Espoo,Uusimaa,SF,,,Baltic Sea
Lahti,Haeme,SF,,Paeijaenne,
Pori,Turku-Pori,SF,Kokemaeenjoki,,
Lappeenrenta,Kymi,SF,,Lake Saima,
Svolvaer,Nordland,N,,,Norwegian Sea
Narvik,Nordland,N,,,Norwegian Sea
Vanersborg,Alvsborg,S,Goetaaelv,Vaenern,
Karlskrona,Blekinge,S,,,Baltic Sea
Gavle,Gavleborg,S,,,Baltic Sea
Visby,Gotland,S,,,Baltic Sea
Halmstad,Halland,S,,,North Sea
Kalmar,Kalmar,S,,,Baltic Sea
Lulea,Norrbotten,S,,,Baltic Sea
Mariestad,Skaraborg,S,,Vaenern,
Karlstad,Varmland,S,Klaraelv,Vaenern,
Umea,Vasterbotten,S,Umeaelv,,
Harnosand,Vasternorrland,S,,,Baltic Sea
Hafnarfjoerdur,Iceland,IS,,,Atlantic Ocean
Madras,Tamil Nadu,IND,,,Indian Ocean
Panaji,Goa,IND,,,Indian Ocean
Yellowknife,Northwest Territories,CDN,,Great Slave Lake,
Charlottetown,Prince Edward Island,CDN,,,Atlantic Ocean
Bismarck,North Dakota,USA,Missouri,,
Pierre,South Dakota,USA,Missouri,,
Sydney,New South Wales,AUS,,,Pacific Ocean
Brisbane,Queensland,AUS,,,Pacific Ocean
Adelaide,South Australia,AUS,,,Indian Ocean
Melbourne,Victoria,AUS,,,Pacific Ocean
Perth,Western Australia,AUS,,,Indian Ocean
Salvador,Bahia,BR,,,Atlantic Ocean
Fortaleza,Ceara,BR,,,Atlantic Ocean
Recife,Pernambuco,BR,,,Atlantic Ocean
Porto Alegre,Rio Grande do Sul,BR,,,Atlantic Ocean
Belem,Para,BR,,,Atlantic Ocean
Valparaiso,Chile,RCH,,,Pacific Ocean
Maracaibo,Zulia,YV,,Lake Maracaibo,Caribbean Sea
Guayaquil,Ecuador,EC,,,Pacific Ocean
Bengasi,Libya,LAR,,,Mediterranean Sea
Casablanca,Morocco,MA,,,Atlantic Ocean
Lagos,Nigeria,WAN,,,Atlantic Ocean
Abidjan,Cote dIvoire,CI,,,Atlantic Ocean
Kuopio,Kuopio,SF,,Lake Kalla,
Mikkeli,Mikkeli,SF,,Lake Saima,
Oulu,Oulu,SF,Oulujoki,,Baltic Sea
Vaasa,Vaasa,SF,,,Baltic Sea
Hamburg,Hamburg,D,Elbe,,
Magdeburg,Sachsen Anhalt,D,Elbe,,
Dresden,Sachsen,D,Elbe,,
Bremen,Bremen,D,Weser,,
Bremerhaven,Bremen,D,Weser,,North Sea
Hannover,Niedersachsen,D,Leine,,
Gottingen,Niedersachsen,D,Leine,,
Kassel,Hessen,D,Fulda,,
Kiel,Schleswig Holstein,D,,,Baltic Sea
Lubeck,Schleswig Holstein,D,,,Baltic Sea
Rostock,Mecklenburg Vorpommern,D,,,Baltic Sea
Duisburg,Nordrhein Westfalen,D,Rhein,,
Dusseldorf,Nordrhein Westfalen,D,Rhein,,
Neuss,Nordrhein Westfalen,D,Rhein,,
Leverkusen,Nordrhein Westfalen,D,Rhein,,
Bonn,Nordrhein Westfalen,D,Rhein,,
Koblenz,Rheinland Pfalz,D,Rhein,,
Mainz,Rheinland Pfalz,D,Rhein,,
Ludwigshafen,Rheinland Pfalz,D,Rhein,,
Mannheim,Baden Wurttemberg,D,Rhein,,
Frankfurt am Main,Hessen,D,Main,,
Wurzburg,Bayern,D,Main,,
Heidelberg,Baden Wurttemberg,D,Neckar,,
Heilbronn,Baden Wurttemberg,D,Neckar,,
Stuttgart,Baden Wurttemberg,D,Neckar,,
Ulm,Baden Wurttemberg,D,Donau,,
Regensburg,Bayern,D,Donau,,
Linz,Upper Austria,A,Donau,,
Vienna,Vienna,A,Donau,,
Bregenz,Vorarlberg,A,,Bodensee,
Basel,BS,CH,Rhein,,
Schaffhausen,SH,CH,Rhein,,
Chur,GR,CH,Rhein,,
Geneva,GE,CH,Rhone,Lac Leman,
Sion,VS,CH,Rhone,,
Rotterdam,Zuid Holland,NL,Rhein,,
Arnhem,Gelderland,NL,Rhein,,
Nijmegen,Gelderland,NL,Rhein,,
Paris,Ile de France,F,Seine,,
Rouen,Haute Normandie,F,Seine,,
Strasbourg,Alsace,F,Rhein,,
Brest,Bretagne,F,,,Atlantic Ocean
Nantes,Pays de la Loire,F,Loire,,
Orleans,Centre,F,Loire,,
Tours,Centre,F,Loire,,
Metz,Lorraine,F,Mosel,,
Nancy,Lorraine,F,Mosel,,
Lyon,Rhone Alpes,F,Rhone,,
Ajaccio,Corse,F,,,Mediterranean Sea
Orleans,Centre,F,Loire,,
Toulouse,Midi Pyrenees,F,Garonne,,
Marseille,Provence Cote dAzur,F,,,Mediterranean Sea
Toulon,Provence Cote dAzur,F,,,Mediterranean Sea
Lisbon,Lisbon,P,Tajo,,Atlantic Ocean
Porto,Porto,P,,,Atlantic Ocean
Jonkoping,Jonkoping,S,,Vaettern,
Cardiff,Cardiff,GB,,,Irish Sea
Abu Dhabi,United Arab Emirates,UAE,,,Persian Gulf
Quebec,Quebec,CDN,St. Lorenzstrom,,
New York,New York,USA,Hudson River,,Atlantic Ocean
Corrientes,Corrientes,RA,Parana,,
Formosa,Formosa,RA,Paraguay,,
Santa Fe,Santa Fe,RA,Parana,,
Parana,Entre Rios,RA,Parana,,
Rio de Janeiro,Rio de Janeiro,BR,,,Atlantic Ocean
Maputo,Maputo (munic.),MOC,,,Indian Ocean
Kinshasa,Kinshasa,ZRE,Zaire,,
Kotka,Kymi,SF,,,Baltic Sea
Rovaniemi,Lappia,SF,Ounasjoki,,
Rovaniemi,Lappia,SF,Kemijoki,,
Jyvaeskylae,Suomi,SF,,Paeijaenne,
Joensuu,Pohjols-Karjala,SF,,Lake Ori,
Turku,Turku-Pori,SF,,,Baltic Sea
Moss,Oestfold,N,,,North Sea
Hamar,Hedmark,N,,Mjoesen,
Lillehammer,Oppland,N,,Mjoesen,
Drammen,Buskerud,N,,,North Sea
Arendal,Aust Agder,N,,,North Sea
Kristiansand,Vest Agder,N,,,North Sea
Stavanger,Rogaland,N,,,North Sea
Bergen,Hordaland,N,,,North Sea
Molde,Moere og Romsdal,N,,,Norwegian Sea
Trondheim,Soer Trondelag,N,,,Norwegian Sea
Steinkjer,Nord Trondelag,N,,,Norwegian Sea
Bodoe,Nordland,N,,,Norwegian Sea
Tromsoe,Troms,N,,,Norwegian Sea
Vadsoe,Finnmark,N,,,Arctic Ocean
Goteborg,Goteborg och Bohus,S,Goetaaelv,,North Sea
Vasteras,Vastmanland,S,,Maelaren,
London,Greater London,GB,Thames,,
Belfast,Northern Ireland,GB,,,Irish Sea
Mumbai,Maharashtra,IND,,,Indian Ocean
Trivandrum,Kerala,IND,,,Indian Ocean
Port Blair,Andaman and Nicobar Is.,IND,,,Indian Ocean
Dubai,United Arab Emirates,UAE,,,Persian Gulf
Saint Johns,Antigua and Barbuda,AG,,,Caribbean Sea
Saint Johns,Newfoundland,CDN,,,Atlantic Ocean
Montreal,Quebec,CDN,St. Lorenzstrom,,
Toronto,Ontario,CDN,,Lake Ontario,
Vancouver,British Columbia,CDN,,,Pacific Ocean
Halifax,Nova Scotia,CDN,,,Atlantic Ocean
Santo Domingo,Dominican Republic,DOM,,,Caribbean Sea
Saint Georges,Grenada,WG,,,Caribbean Sea
Los Angeles,California,USA,,,Pacific Ocean
Chicago,Illinois,USA,,Lake Michigan,
San Diego,California,USA,,,Pacific Ocean
Detroit,Michigan,USA,,Lake Erie,
San Francisco,California,USA,,,Pacific Ocean
Kansas City,Missouri,USA,Missouri,,
Honolulu,Hawaii,USA,,,Pacific Ocean
Miami,Florida,USA,,,Atlantic Ocean
St. Louis,Missouri,USA,Mississippi,,
St. Louis,Missouri,USA,Missouri,,
St. Paul,Minnesota,USA,Mississippi,,
Baton Rouge,Louisiana,USA,Mississippi,,
Little Rock,Arkansas,USA,Arkansas,,
Salt Lake City,Utah,USA,,Great Salt Lake,
Providence,Rhode Island,USA,,,Atlantic Ocean
Hartford,Connecticut,USA,Connecticut River,,
Jefferson City,Missouri,USA,Missouri,,
Resistencia,Chaco,RA,Parana,,
Posadas,Misiones,RA,Parana,,
Rosario,Santa Fe,RA,Parana,,
Manaus,Amazonas,BR,Amazonas,,
Sao Luis,Maranhao,BR,,,Atlantic Ocean
Maceio,Alagoas,BR,,,Atlantic Ocean
Natal,Rio Grande do Norte,BR,,,Atlantic Ocean
Joao Pessoa,Paraiba,BR,,,Atlantic Ocean
Aracaju,Sergipe,BR,,,Atlantic Ocean
Florianopolis,Santa Catarina,BR,,,Atlantic Ocean
Vitoria,Espirito Santo,BR,,,Atlantic Ocean
Macapa,Amapa,BR,Amazonas,,
Iquitos,Loreto,PE,Amazonas,,
Oran,Algeria,DZ,,,Mediterranean Sea
Mombasa,Coast,EAK,,,Indian Ocean
Port Louis,Mauritius,MS,,,Indian Ocean
Rabat,Morocco,MA,,,Atlantic Ocean
Sao Tome,Sao Tome and Principe,STP,,,Atlantic Ocean
Atyrau,Atyrau,KAZ,,,Caspian Sea
Aqtau,Mangghystau,KAZ,,,Caspian Sea
Kiev,Kyyivska,UA,Dnepr,,
Kazan,Rep. of Tatarstan,R,Volga,,
Volgograd,Volgogradskaya oblast,R,Volga,,
Astrakhan,Astrakhanskaya oblast,R,Volga,,
\.

---Filling table merges_with :

COPY merges_with FROM STDIN csv;
Mediterranean Sea,Black Sea
Atlantic Ocean,Mediterranean Sea
Atlantic Ocean,Irish Sea
Atlantic Ocean,North Sea
Atlantic Ocean,Caribbean Sea
Atlantic Ocean,Gulf of Mexico
Atlantic Ocean,Pacific Ocean
Atlantic Ocean,Indian Ocean
Atlantic Ocean,Norwegian Sea
Atlantic Ocean,Arctic Ocean
North Sea,Baltic Sea
Gulf of Mexico,Caribbean Sea
Pacific Ocean,South China Sea
Pacific Ocean,Sunda Sea
Indian Ocean,Pacific Ocean
Indian Ocean,South China Sea
Indian Ocean,Sunda Sea
Gulf of Aden,Indian Ocean
Gulf of Aden,Red Sea
Norwegian Sea,Irish Sea
Norwegian Sea,North Sea
Norwegian Sea,Arctic Ocean
Arctic Ocean,Pacific Ocean
Sea of Japan,Pacific Ocean
Sea of Japan,East China Sea
Sea of Azov,Black Sea
Yellow Sea,Sea of Japan
Yellow Sea,East China Sea
East China Sea,Pacific Ocean
East China Sea,South China Sea
South China Sea,Sunda Sea
Arabian Sea,Persian Gulf
Arabian Sea,Indian Ocean
Arabian Sea,Gulf of Aden
\.

---Filling table mountain :

COPY mountain FROM STDIN csv;
\.

---Filling table organization :

COPY organization FROM STDIN csv;
AL,Arab League,Cairo,ET,El Qahira (munic.),22 03 1945
AG,Andean Group,Lima,PE,Lima,26 05 1969
C,Commonwealth,London,GB,Greater London,31 12 1931
NAM,Nonaligned Movement,Jakarta,RI,Indonesia,01 09 1961
RG,Rio Group,,,,01 01 1988
ACP,"African, Caribbean, and Pacific Countries",Brussels,B,Brabant,01 04 1976
AfDB,African Development Bank,Abidjan,CI,Cote dIvoire,04 08 1963
ACCT,Agency for Cultural and Technical Cooperation,Paris,F,Ile de France,21 03 1970
OPANAL,Agency for the Prohibition of Nuclear Weapons in Latin America and the Caribbean,Mexico City,MEX,Distrito Federal,14 02 1967
ABEDA,Arab Bank for Economic Development in Africa,Khartoum,SUD,al Khartum,18 02 1974
ACC,Arab Cooperation Council,,,,16 02 1989
AFESD,Arab Fund for Economic and Social Development,,,,16 05 1968
AMU,Arab Maghreb Union,Rabat,MA,Morocco,17 02 1989
AMF,Arab Monetary Fund,Abu Dhabi,UAE,United Arab Emirates,27 04 1976
APEC,Asia Pacific Economic Cooperation,Singapore,SGP,Singapore,07 11 1989
AsDB,Asian Development Bank,Manila,RP,Philippines,19 12 1966
ASEAN,Association of Southeast Asian Nations,Jakarta,RI,Indonesia,09 08 1967
Mekong Group,ASEAN-Mekong Basin Development Group,,,,01 12 1995
ANZUS,Australia-New Zealand-United States Security Treaty,Canberra,AUS,Australia Capital Territory,01 09 1951
BIS,Bank for International Settlements,Basel,CH,BS,20 01 1930
Benelux,Benelux Economic Union,Brussels,B,Brabant,03 02 1958
BSEC,Black Sea Economic Cooperation Zone,,,,25 06 1992
Caricom,Caribbean Community and Common Market,Georgetown,GUY,Guyana,04 07 1973
CDB,Caribbean Development Bank,,,,18 10 1969
UDEAC,Central African Customs and Economic Union,Bangui,RCA,Central African Republic,08 12 1964
BDEAC,Central African States Development Bank,Brazzaville,RCB,Congo,03 12 1975
BCIE,Central American Bank for Economic Integration,Tegucigalpa,HCA,Francisco Morazan,13 12 1960
CACM,Central American Common Market,Guatemala City,GCA,Guatemala,13 12 1960
CEI,Central European Initiative,Budapest,H,Budapest (munic.),27 07 1991
CP,Colombo Plan,Colombo,CL,Sri Lanka,01 07 1951
CIS,Commonwealth of Independent States,Minsk,BY,Belarus,08 12 1991
CEMA,Council for Mutual Economic Assistance,,,,
CAEU,Council of Arab Economic Unity,Amman,JOR,Jordan,03 06 1957
CE,Council of Europe,Strasbourg,F,Alsace,05 05 1949
CBSS,Council of the Baltic Sea States,,,,05 03 1992
Entente,Council of the Entente,Abidjan,CI,Cote dIvoire,29 05 1959
CCC,Customs Cooperation Council,Brussels,B,Brabant,15 12 1950
EADB,East African Development Bank,Kampala,EAU,Uganda,06 06 1967
ESCAP,Economic and Social Commission for Asia and the Pacific,Bangkok,THA,Thailand,28 03 1947
ESCWA,Economic and Social Commission for Western Asia,Amman,JOR,Jordan,09 08 1973
ECOSOC,Economic and Social Council,New York,USA,New York,26 06 1945
ECA,Economic Commission for Africa,Addis Ababa,ETH,Ethiopia,29 04 1958
ECE,Economic Commission for Europe,Geneva,CH,GE,28 03 1947
ECLAC,Economic Commission for Latin America and the Caribbean,Santiago,RCH,Chile,25 02 1948
CEEAC,Economic Community of Central African States,Libreville,G,Gabon,18 10 1983
CEPGL,Economic Community of the Great Lakes Countries,,,,26 09 1976
ECOWAS,Economic Community of West African States,Lagos,WAN,Nigeria,28 05 1975
ECO,Economic Cooperation Organization,Tehran,IR,Tehran,01 01 1985
EBRD,European Bank for Reconstruction and Development,London,GB,Greater London,15 04 1991
EFTA,European Free Trade Association,Geneva,CH,GE,04 01 1960
EIB,European Investment Bank,Luxembourg,L,Luxembourg,25 03 1957
CERN,European Organization for Nuclear Research,Geneva,CH,GE,01 07 1953
ESA,European Space Agency,Paris,F,Ile de France,31 07 1973
EU,European Union,Brussels,B,Brabant,07 02 1992
FAO,Food and Agriculture Organization,Rome,I,Lazio,16 10 1945
FZ,Franc Zone,Paris,F,Ile de France,20 12 1945
G-2,Group of 2,,,,
G-3,Group of 3,,,,01 10 1990
G-5,Group of 5,,,,22 09 1985
G-6,Group of 6,,,,22 05 1984
G-7,Group of 7,,,,22 09 1985
G-8,Group of 8,,,,01 10 1975
G-9,Group of 9,,,,
G-10,Group of 10,Paris,F,Ile de France,01 10 1962
G-11,Group of 11,,,,22 06 1984
G-15,Group of 15,Geneva,CH,GE,
G-19,Group of 19,,,,01 10 1975
G-24,Group of 24,Brussels,B,Brabant,01 01 1972
G-30,Group of 30,Washington,USA,Distr. Columbia,01 01 1979
G-33,Group of 33,,,,01 01 1987
G-77,Group of 77,,,,01 10 1967
GCC,Gulf Cooperation Council,Riyadh,SA,Saudi Arabia,25 05 1981
IADB,Inter-American Development Bank,Washington,USA,Distr. Columbia,08 04 1959
IGADD,Inter-Governmental Authority on Drought and Development,Djibouti,DJI,Djibouti,15 01 1986
IAEA,International Atomic Energy Agency,Vienna,A,Vienna,26 10 1956
IBRD,International Bank for Reconstruction and Development,Washington,USA,Distr. Columbia,22 07 1944
ICC,International Chamber of Commerce,Paris,F,Ile de France,01 01 1919
ICAO,International Civil Aviation Organization,Montreal,CDN,Quebec,07 12 1944
ICRC,International Committee of the Red Cross,Geneva,CH,GE,
ICFTU,International Confederation of Free Trade Unions,Brussels,B,Brabant,01 12 1949
ICJ,International Court of Justice,,,,26 06 1945
Interpol,International Criminal Police Organization,Lyon,F,Rhone Alpes,13 06 1956
IDA,International Development Association,Washington,USA,Distr. Columbia,26 01 1960
IEA,International Energy Agency,Paris,F,Ile de France,15 11 1974
IFRCS,International Federation of Red Cross and Red Crescent Societies,Geneva,CH,GE,05 05 1919
IFC,International Finance Corporation,Washington,USA,Distr. Columbia,25 05 1955
WToO,World Tourism Organization,Madrid,E,Madrid,02 01 1975
IFAD,International Fund for Agricultural Development,Rome,I,Lazio,01 11 1974
ILO,International Labor Organization,Geneva,CH,GE,11 04 1919
IMO,International Maritime Organization,London,GB,Greater London,17 03 1958
Inmarsat,International Mobile Satellite Organization,London,GB,Greater London,03 09 1976
IMF,International Monetary Fund,Washington,USA,Distr. Columbia,22 07 1944
IOC,International Olympic Committee,Lausanne,CH,VD,23 06 1894
IOM,International Organization for Migration,Geneva,CH,GE,05 12 1951
ISO,International Organization for Standardization,Geneva,CH,GE,01 02 1947
ICRM,International Red Cross and Red Crescent Movement,Geneva,CH,GE,01 01 1928
ITU,International Telecommunication Union,Geneva,CH,GE,09 12 1932
Intelsat,International Telecommunications Satellite Organization,Washington,USA,Distr. Columbia,20 08 1971
IDB,Islamic Development Bank,Jeddah,SA,Saudi Arabia,15 12 1973
LAES,Latin American Economic System,Caracas,YV,Distrito Federal,17 10 1975
LAIA,Latin American Integration Association,Montevideo,ROU,Uruguay,12 08 1980
MTCR,Missile Technology Control Regime,,,,16 04 1987
NC,Nordic Council,Stockholm,S,Stockholm,16 03 1952
NIB,Nordic Investment Bank,Helsinki,SF,Uusimaa,04 12 1975
ANC,North Atlantic Cooperation Council,Brussels,B,Brabant,08 11 1991
NATO,North Atlantic Treaty Organization,Brussels,B,Brabant,17 09 1949
EN,Nuclear Energy Agency,,,,01 01 1958
NSG,Nuclear Suppliers Group,Vienna,A,Vienna,
OECD,Organization for Economic Cooperation and Development,Paris,F,Ile de France,14 12 1960
OSCE,Organization for Security and Cooperation in Europe,Vienna,A,Vienna,01 01 1995
OAU,Organization of African Unity,Addis Ababa,ETH,Ethiopia,25 05 1963
OAS,Organization of American States,Washington,USA,Distr. Columbia,30 04 1948
OAPEC,Organization of Arab Petroleum Exporting Countries,,,,09 01 1968
OECS,Organization of Eastern Caribbean States,Castries,WL,Saint Lucia,18 06 1981
OPEC,Organization of Petroleum Exporting Countries,Vienna,A,Vienna,14 09 1960
OIC,Organization of the Islamic Conference,Jeddah,SA,Saudi Arabia,22 09 1969
PFP,Partnership for Peace,,,,10 01 1994
PCA,Permanent Court of Arbitration,,,,29 07 1899
SELA,Sistema Economico Latinoamericana,,,,
SAARC,South Asian Association for Regional Cooperation,Kathmandu,NEP,Nepal,08 12 1985
SPC,South Pacific Commission,Noumea,NCA,New Caledonia,06 02 1947
SPF,South Pacific Forum,Suva,FJI,Fiji,05 08 1971
Sparteca,South Pacific Regional Trade and Economic Cooperation Agreement,,,,01 01 1981
SACU,Southern African Customs Union,Pretoria,RSA,South Africa,11 12 1969
SADC,Southern African Development Community,Gaborone,RB,Botswana,17 08 1992
Mercosur,Southern Cone Common Market,Buenos Aires,RA,Distrito Federal,26 03 1991
UN,United Nations,New York,USA,New York,26 06 1945
UNAVEM III,United Nations Angola Verification Mission,New York,USA,New York,20 12 1988
UNAMIR,United Nations Assistance Mission for Rwanda,New York,USA,New York,05 10 1993
UNICEF,United Nations Childrens Fund,New York,USA,New York,11 12 1946
UNCTAD,United Nations Conference on Trade and Development,Geneva,CH,GE,30 12 1964
UNCRO,United Nations Confidence Restoration Operation in Croatia,New York,USA,New York,31 03 1995
UNDP,United Nations Development Program,New York,USA,New York,22 11 1965
UNDOF,United Nations Disengagement Observer Force,Damascus,SYR,Syria,31 05 1974
UNESCO,"United Nations Educational, Scientific, and Cultural Organization",Paris,F,Ile de France,16 11 1945
UNEP,United Nations Environment Program,New York,USA,New York,15 12 1972
UNFICYP,United Nations Force in Cyprus,New York,USA,New York,04 03 1964
UNIDO,United Nations Industrial Development Organization,Vienna,A,Vienna,17 11 1966
UNITAR,United Nations Institute for Training and Research,,,,11 12 1963
UNIFIL,United Nations Interim Force in Lebanon,New York,USA,New York,19 03 1978
UNIKOM,United Nations Iraq-Kuwait Observation Mission,New York,USA,New York,09 04 1991
UNMOGIP,United Nations Military Observer Group in India and Pakistan,New York,USA,New York,13 08 1948
MINURSO,United Nations Mission for the Referendum in Western Sahara,New York,USA,New York,29 04 1991
UNMIH,United Nations Mission in Haiti,New York,USA,New York,23 09 1993
UNMOT,United Nations Mission of Observers in Tajikistan,New York,USA,New York,16 12 1994
UNOMIG,United Nations Observer Mission in Georgia,New York,USA,New York,
UNOMIL,United Nations Observer Mission in Liberia,New York,USA,New York,22 09 1993
UNHCR,United Nations Office of the High Commissioner for Refugees,Geneva,CH,GE,03 12 1949
UNFPA,United Nations Population Fund,New York,USA,New York,01 07 1967
UNPREDEP,United Nations Preventive Deployment Force,,,,31 03 1995
UNPROFOR,United Nations Protection Force,New York,USA,New York,28 02 1992
UNRWA,United Nations Relief and Works Agency for Palestine Refugees in the Near East,Vienna,A,Vienna,08 12 1949
UNRISD,United Nations Research Institute for Social Development,,,,01 07 1964
UNTSO,United Nations Truce Supervision Organization,Jerusalem,IL,Central,01 05 1948
UNU,United Nations University,,,,06 12 1973
UPU,Universal Postal Union,Bern,CH,BE,09 10 1874
WADB,West African Development Bank,Lome,RT,Togo,14 11 1973
CEAO,West African Economic Community,,,,
WEU,Western European Union,Brussels,B,Brabant,23 10 1954
WCL,World Confederation of Labor,Brussels,B,Brabant,19 06 1920
WFTU,World Federation of Trade Unions,Prague,CZ,Praha,03 10 1945
WFC,World Food Council,Rome,I,Lazio,17 12 1974
WFP,World Food Program,Rome,I,Lazio,24 11 1961
WHO,World Health Organization,Geneva,CH,GE,22 07 1946
WIPO,World Intellectual Property Organization,Geneva,CH,GE,14 07 1967
WMO,World Meteorological Organization,Geneva,CH,GE,11 10 1947
WTrO,World Trade Organization,,,,15 04 1994
ZC,Zangger Committee,,,,
\.

---Filling table politics :

COPY politics FROM STDIN csv;
AL,28 11 1912,emerging democracy
GR,01 01 1829,parliamentary republic
MK,17 09 1991,emerging democracy
YU,11 04 1992,republic
AND,,parliamentary democracy that retains as its heads of state a coprincipality
F,,republic
E,01 01 1492,parliamentary monarchy
A,12 11 1918,federal republic
CZ,01 01 1993,parliamentary democracy
D,18 01 1871,federal republic
H,01 01 1001,republic
I,17 03 1861,republic
FL,23 01 1719,hereditary constitutional monarchy
SK,01 01 1993,parliamentary democracy
SLO,25 06 1991,emerging democracy
CH,,federal republic
BY,25 08 1991,republic
LV,06 09 1991,republic
LT,06 09 1991,republic
PL,11 11 1918,democratic state
UA,01 12 1991,republic
R,24 08 1991,federation
B,04 10 1830,constitutional monarchy
L,,constitutional monarchy
NL,01 01 1579,constitutional monarchy
BIH,01 04 1992,emerging democracy
HR,25 06 1991,parliamentary democracy
BG,22 09 1908,emerging democracy
RO,01 01 1881,republic
TR,29 10 1923,republican parliamentary democracy
DK,,constitutional monarchy
EW,06 09 1991,republic
SF,06 12 1917,republic
N,26 10 1905,constitutional monarchy
S,,constitutional monarchy
MC,01 01 1419,constitutional monarchy
V,11 02 1929,monarchical sacerdotal state
IS,17 06 1944,republic
IRL,06 12 1921,republic
RSM,01 01 0301,republic
M,21 09 1964,parliamentary democracy
MD,27 08 1991,republic
P,01 01 1140,republic
GB,01 01 1801,constitutional monarchy
AFG,19 08 1919,transitional government
TJ,,Communist state
IR,01 04 1979,theocratic republic
PK,14 08 1947,republic
TAD,09 09 1991,republic
TM,27 10 1991,republic
UZB,31 08 1991,republic
ARM,28 05 1918,republic
GE,09 04 1991,republic
AZ,30 08 1991,republic
BRN,15 08 1971,traditional monarchy
BD,16 12 1971,republic
MYA,04 01 1948,military regime
IND,15 08 1947,federal republic
BHT,08 08 1949,monarchy
BRU,01 01 1984,constitutional sultanate
MAL,31 08 1957,constitutional monarchy
LAO,19 07 1949,Communist state
THA,01 01 1238,constitutional monarchy
K,09 11 1949,multiparty liberal democracy under a constitutional monarchy established in September 1993
VN,02 09 1945,Communist state
KAZ,16 12 1991,republic
NOK,,Communist state
KGZ,31 08 1991,republic
MNG,13 03 1921,republic
NEP,01 01 1768,parliamentary democracy as of 12 May 1991
CY,16 08 1960,republic
IL,14 05 1948,republic
ET,28 02 1922,republic
RI,17 08 1945,republic
PNG,16 09 1975,parliamentary democracy
IRQ,03 10 1932,republic
JOR,25 05 1946,constitutional monarchy
KWT,19 06 1961,nominal constitutional monarchy
SA,23 09 1932,monarchy
SYR,17 04 1946,republic under military regime since March 1963
RL,22 11 1943,republic
J,,constitutional monarchy
ROK,,republic
MV,26 07 1965,republic
OM,01 01 1650,monarchy
UAE,02 12 1971,federation with specified powers delegated to the UAE central government and other powers reserved to member emirates
YE,22 05 1990,republic
RP,04 07 1946,republic
Q,03 09 1971,traditional monarchy
SGP,09 08 1965,republic within Commonwealth
CL,04 02 1948,republic
RC,,multiparty democratic regime
AG,01 11 1981,parliamentary democracy
BS,10 07 1973,commonwealth
BDS,30 11 1966,parliamentary democracy
BZ,21 09 1981,parliamentary democracy
GCA,15 09 1821,republic
MEX,16 09 1810,federal republic operating under a centralized government
CDN,01 07 1867,confederation with parliamentary democracy
USA,04 07 1776,federal republic
CR,15 09 1821,democratic republic
NIC,15 09 1821,republic
PA,03 11 1903,constitutional republic
C,20 05 1902,Communist state
WD,03 11 1978,parliamentary democracy
DOM,27 02 1844,republic
RH,01 01 1804,republic
ES,15 09 1821,republic
HCA,15 09 1821,republic
WG,07 02 1974,parliamentary democracy
JA,06 08 1962,parliamentary democracy
CO,20 07 1810,republic
KN,19 09 1983,constitutional monarchy
WL,22 02 1979,parliamentary democracy
WV,27 10 1979,constitutional monarchy
TT,31 08 1962,parliamentary democracy
AUS,01 01 1901,federal parliamentary state
FJI,10 10 1970,republic
KIR,12 07 1979,republic
MH,21 10 1986,constitutional government in free association with the US
FSM,03 11 1986,constitutional government in free association with the US
NAU,31 01 1968,republic
NCA,,overseas territory of France since 1956
NZ,26 09 1907,parliamentary democracy
PAL,01 10 1994,constitutional government in free association with the US
SLB,07 07 1978,parliamentary democracy
TO,04 06 1970,hereditary constitutional monarchy
TUV,01 10 1978,democracy
VU,30 07 1980,republic
WS,01 01 1962,constitutional monarchy under native chief
RA,09 07 1816,republic
BOL,06 08 1825,republic
BR,07 09 1822,federal republic
RCH,18 09 1810,republic
PY,14 05 1811,republic
ROU,25 08 1828,republic
PE,28 07 1821,republic
FGU,,overseas department of France
GUY,26 05 1966,republic
SME,25 11 1975,republic
YV,05 07 1811,republic
EC,24 05 1822,republic
DZ,05 07 1962,republic
LAR,24 12 1951,Jamahiriya in theory
RMM,22 09 1960,republic
RIM,28 11 1960,republic
MA,02 03 1956,constitutional monarchy
RN,03 08 1960,republic
TN,20 03 1956,republic
WSA,,legal status of territory and question of sovereignty unresolved
ANG,11 11 1975,transitional government nominally a multiparty democracy with a strong presidential system
RCB,15 08 1960,republic
NAM,21 03 1990,republic
ZRE,30 06 1960,republic with a strong presidential system
Z,24 10 1964,republic
BEN,01 08 1960,republic under multiparty democratic rule dropped Marxism Leninism December 1989
BF,05 08 1960,parliamentary
WAN,01 10 1960,military government
RT,27 04 1960,republic under transition to multiparty democratic rule
RB,30 09 1966,parliamentary republic
RSA,31 05 1910,republic
ZW,18 04 1980,parliamentary democracy
CI,07 08 1960,republic
GH,06 03 1957,constitutional democracy
BI,01 07 1962,republic
RWA,01 07 1962,republic
EAT,26 04 1964,republic
CAM,01 01 1960,unitary republic
RCA,13 08 1960,republic
TCH,11 08 1960,republic
GQ,12 10 1968,republic in transition to multiparty democracy
G,17 08 1960,republic
CV,05 07 1975,republic
SUD,01 01 1956,transitional previously ruling military junta
COM,06 07 1975,independent republic
RG,02 10 1958,republic
LB,,republic
DJI,27 06 1977,republic
ER,27 05 1993,transitional government
ETH,,federal republic
SP,01 07 1960,none
EAK,12 12 1963,republic
WAG,18 02 1965,republic under multiparty democratic rule
SN,20 08 1960,republic under multiparty democratic rule
GNB,10 09 1974,republic
WAL,27 04 1961,constitutional democracy
EAU,09 10 1962,republic
LS,04 10 1966,modified constitutional monarchy
RM,26 06 1960,republic
MW,06 07 1964,multiparty democracy
MOC,25 06 1975,republic
MS,12 03 1968,parliamentary democracy
SD,06 09 1968,monarchy
STP,12 07 1975,republic
SY,29 06 1976,republic
\.

---Filling table population :

COPY population FROM STDIN csv;
AL,1,49
GR,0,7
MK,0,30
YU,,
AND,3,2
F,0,5
E,0,6
A,0,6
CZ,0,8
D,1,6
H,-1,12
I,0,7
FL,1,5
SK,0,11
SLO,0,7
CH,1,5
BY,0,13
LV,-1,21
LT,0,17
PL,0,12
UA,0,23
R,0,25
B,0,6
L,2,5
NL,1,5
BIH,-3,43
HR,1,10
BG,0,16
RO,-1,23
TR,2,43
DK,0,5
EW,-1,17
SF,0,5
N,0,5
S,1,5
MC,1,7
V,,
IS,1,4
IRL,0,6
RSM,1,6
M,1,7
MD,0,48
P,0,8
GB,0,6
AFG,5,150
TJ,1,40
IR,2,53
PK,2,97
TAD,2,113
TM,2,82
UZB,2,80
ARM,0,39
GE,-1,23
AZ,1,75
BRN,2,17
BD,2,102
MYA,2,81
IND,2,71
BHT,2,116
BRU,3,24
MAL,2,24
LAO,3,97
THA,1,33
K,3,108
VN,2,38
KAZ,0,63
NOK,2,26
KGZ,0,78
MNG,2,70
NEP,2,79
CY,1,8
IL,2,9
ET,2,73
RI,2,63
PNG,2,60
IRQ,4,60
JOR,3,32
KWT,7,11
SA,3,46
SYR,3,40
RL,2,37
J,0,4
ROK,1,8
MV,4,47
OM,4,27
UAE,4,20
YE,4,72
RP,2,36
Q,2,20
SGP,2,5
CL,1,21
RC,1,7
AG,1,17
BS,1,23
BDS,0,19
BZ,2,34
GCA,2,51
MEX,2,25
CDN,1,6
USA,1,7
CR,2,14
NIC,3,46
PA,2,30
C,0,9
WD,0,10
DOM,2,48
RH,2,104
ES,2,32
HCA,3,42
WG,1,12
JA,1,16
CO,2,26
KN,1,19
WL,1,20
WV,1,17
TT,0,18
AUS,1,6
FJI,1,17
KIR,2,53
MH,4,47
FSM,3,36
NAU,1,41
NCA,2,14
NZ,1,7
PAL,2,25
SLB,3,26
TO,1,40
TUV,2,28
VU,2,65
WS,2,34
RA,1,28
BOL,2,68
BR,1,55
RCH,1,14
PY,3,23
ROU,1,15
PE,2,52
FGU,4,15
GUY,-1,51
SME,2,29
YV,2,30
EC,2,35
DZ,2,49
LAR,4,60
RMM,3,103
RIM,3,82
MA,2,43
RN,3,118
TN,2,35
WSA,2,146
ANG,3,139
RCB,2,108
NAM,3,47
ZRE,2,108
Z,2,96
BEN,3,105
BF,3,118
WAN,3,72
RT,4,84
RB,2,54
RSA,2,49
ZW,1,73
CI,3,82
GH,2,80
BI,2,102
RWA,16,119
EAT,1,106
CAM,3,79
RCA,2,112
TCH,3,120
GQ,3,98
G,1,90
CV,3,54
SUD,3,76
COM,4,75
RG,2,134
LB,2,108
DJI,2,107
ER,3,119
ETH,3,123
SP,3,121
EAK,2,55
WAG,4,81
SN,3,64
GNB,2,116
WAL,4,136
EAU,2,99
LS,2,82
RM,3,94
MW,2,140
MOC,3,126
MS,1,17
SD,3,88
STP,3,61
SY,1,13
\.

---Filling table province :

COPY province FROM STDIN csv;
Albania,AL,3249136,28750,Tirane,Albania
Greece,GR,10538594,131940,Athens,Greece
Macedonia,MK,2104035,25333,Skopje,Macedonia
Serbia and Montenegro,YU,10614558,102350,Belgrade,Serbia and Montenegro
Andorra,AND,72766,450,Andorra la Vella,Andorra
Liechtenstein,FL,31122,160,Vaduz,Liechtenstein
Slovakia,SK,5374362,48845,Bratislava,Slovakia
Slovenia,SLO,1951443,20256,Ljubljana,Slovenia
Belarus,BY,10415973,207600,Minsk,Belarus
Latvia,LV,2468982,64100,Riga,Latvia
Lithuania,LT,3646041,65200,Vilnius,Lithuania
Luxembourg,B,234664,4441,Arlon,Luxembourg
Bosnia and Herzegovina,BIH,2656240,51233,Sarajevo,Bosnia and Herzegovina
Croatia,HR,5004112,56538,Zagreb,Croatia
Bulgaria,BG,8612757,110910,Sofia,Bulgaria
Denmark,DK,5249632,43070,Copenhagen,Denmark
Estonia,EW,1459428,45100,Tallinn,Estonia
Monaco,MC,31719,2,Monaco,Monaco
Holy See,V,840,0,Vatican City,Holy See
Iceland,IS,270292,103000,Reykjavik,Iceland
Ireland,IRL,3566833,70280,Dublin,Ireland
San Marino,RSM,24521,60,San Marino,San Marino
Malta,M,375576,320,Valletta,Malta
Moldova,MD,4463847,33700,Chisinau,Moldova
Afghanistan,AFG,22664136,647500,Kabul,Afghanistan
Pakistan,PK,129275660,803940,Islamabad,Pakistan
Armenia,ARM,3463574,29800,Yerevan,Armenia
Georgia,GE,5219810,69700,Tbilisi,Georgia
Azerbaijan,AZ,7676953,86600,Baku,Azerbaijan
Bahrain,BRN,590042,620,Manama,Bahrain
Bangladesh,BD,123062800,144000,Dhaka,Bangladesh
Bhutan,BHT,1822625,47000,Thimphu,Bhutan
Brunei,BRU,299939,5770,Bandar Seri Begawan,Brunei
Laos,LAO,4975772,236800,Vientiane,Laos
Thailand,THA,58851357,514000,Bangkok,Thailand
Cambodia,K,10861218,181040,Phnom Penh,Cambodia
Vietnam,VN,73976973,329560,Hanoi,Vietnam
North Korea,NOK,23904124,120540,Pyongyang,North Korea
Kyrgyzstan,KGZ,4529648,198500,Bishkek,Kyrgyzstan
Mongolia,MNG,2496617,1565000,Ulaanbaatar,Mongolia
Nepal,NEP,22094033,140800,Kathmandu,Nepal
Cocos Islands,AUS,600,14,Bantam Village,Cocos Islands
Cyprus,CY,744609,9250,Nicosia,Cyprus
Indonesia,RI,206611600,1919440,Jakarta,Indonesia
Papua New Guinea,PNG,4394537,461690,Port Moresby,Papua New Guinea
Jordan,JOR,4212152,89213,Amman,Jordan
Kuwait,KWT,1950047,17820,Kuwait,Kuwait
Saudi Arabia,SA,19409058,1960582,Riyadh,Saudi Arabia
Syria,SYR,15608648,185180,Damascus,Syria
Lebanon,RL,3776317,10400,Beirut,Lebanon
South Korea,ROK,45482291,98480,Seoul,South Korea
Maldives,MV,270758,300,Male,Maldives
Oman,OM,2186548,212460,Muscat,Oman
United Arab Emirates,UAE,3057337,75581,Abu Dhabi,United Arab Emirates
Yemen,YE,13483178,527970,Sanaa,Yemen
Philippines,RP,74480848,300000,Manila,Philippines
Qatar,Q,547761,11000,Doha,Qatar
Singapore,SGP,3396924,633,Singapore,Singapore
Sri Lanka,CL,18553074,65610,Colombo,Sri Lanka
Taiwan,RC,21465881,35980,Taipei,Taiwan
Antigua and Barbuda,AG,65647,440,Saint Johns,Antigua and Barbuda
Bahamas,BS,259367,13940,Nassau,Bahamas
Barbados,BDS,257030,430,Bridgetown,Barbados
Belize,BZ,219296,22960,Belmopan,Belize
Guatemala,GCA,11277614,108890,Guatemala City,Guatemala
Nicaragua,NIC,4272352,129494,Managua,Nicaragua
Panama,PA,1168500,11887,Panama City,Panama
Dominica,WD,82926,750,Roseau,Dominica
Dominican Republic,DOM,8088881,48730,Santo Domingo,Dominican Republic
Haiti,RH,6731539,27750,Port-au-Prince,Haiti
El Salvador,ES,5828987,21040,San Salvador,El Salvador
Grenada,WG,94961,340,Saint Georges,Grenada
Jamaica,JA,2595275,10990,Kingston,Jamaica
Saint Kitts and Nevis,KN,41369,269,Basseterre,Saint Kitts and Nevis
Saint Lucia,WL,157862,620,Castries,Saint Lucia
Saint Vincent and the Grenadines,WV,118344,340,Kingstown,Saint Vincent and the Grenadines
Trinidad and Tobago,TT,1272385,5130,Port-of-Spain,Trinidad and Tobago
Fiji,FJI,782381,18270,Suva,Fiji
Kiribati,KIR,80919,717,Tarawa,Kiribati
Marshall Islands,MH,58363,181,Majuro,Marshall Islands
Micronesia,FSM,125377,702,Kolonia,Micronesia
Nauru,NAU,10273,21,Yaren,Nauru
New Caledonia,NCA,187784,19060,Noumea,New Caledonia
New Zealand,NZ,3547983,268680,Wellington,New Zealand
Norfolk Island,AUS,1980,35,Kingston,Norfolk Island
Palau,PAL,16952,458,Koror,Palau
Solomon Islands,SLB,412902,28450,Honiara,Solomon Islands
Tonga,TO,106466,748,Nukualofa,Tonga
Tuvalu,TUV,10146,26,Funafuti,Tuvalu
Vanuatu,VU,177504,14760,Port-Vila,Vanuatu
Western Samoa,WS,214384,2860,Apia,Western Samoa
Bolivia,BOL,7165257,1098580,La Paz,Bolivia
Chile,RCH,14333258,756950,Santiago,Chile
Paraguay,PY,5504146,406750,Asuncion,Paraguay
Uruguay,ROU,3238952,176220,Montevideo,Uruguay
French Guiana,FGU,151187,91000,Cayenne,French Guiana
Guyana,GUY,712091,214970,Georgetown,Guyana
Suriname,SME,436418,163270,Paramaribo,Suriname
Ecuador,EC,11466291,283560,Quito,Ecuador
Algeria,DZ,29183032,2381740,Algiers,Algeria
Libya,LAR,5445436,1759540,Tripoli,Libya
Mali,RMM,9653261,1240000,Bamako,Mali
Mauritania,RIM,2336048,1030700,Nouakchott,Mauritania
Morocco,MA,29779156,446550,Rabat,Morocco
Niger,RN,9113001,1267000,Niamey,Niger
Tunisia,TN,9019687,163610,Tunis,Tunisia
Western Sahara,WSA,222631,266000,El Alaiun,Western Sahara
Congo,RCB,2527841,342000,Brazzaville,Congo
Namibia,NAM,1677243,825418,Windhoek,Namibia
Zaire,ANG,192000,40130,Mbanza Congo,Zaire
Benin,BEN,5709529,112620,Porto-Novo,Benin
Burkina Faso,BF,10623323,274200,Ouagadougou,Burkina Faso
Nigeria,WAN,103912489,923770,Abuja,Nigeria
Togo,RT,4570530,56790,Lome,Togo
Botswana,RB,1477630,600370,Gaborone,Botswana
South Africa,RSA,41743459,1219912,Pretoria,South Africa
Zimbabwe,ZW,11271314,390580,Harare,Zimbabwe
Cote dIvoire,CI,14762445,322460,Yamoussoukro,Cote dIvoire
Ghana,GH,17698271,238540,Accra,Ghana
Burundi,BI,5943057,27830,Bujumbura,Burundi
Rwanda,RWA,6853359,26340,Kigali,Rwanda
Central African Republic,RCA,3274426,622980,Bangui,Central African Republic
Chad,TCH,6976845,1284000,NDjamena,Chad
Equatorial Guinea,GQ,431282,28050,Malabo,Equatorial Guinea
Gabon,G,1172798,267670,Libreville,Gabon
Cape Verde,CV,449066,4030,Praia,Cape Verde
Comoros,COM,569237,2170,Moroni,Comoros
Guinea,RG,7411981,245860,Conakry,Guinea
Liberia,LB,2109789,111370,Monrovia,Liberia
Djibouti,DJI,427642,22000,Djibouti,Djibouti
Eritrea,ER,3427883,121320,Asmara,Eritrea
Ethiopia,ETH,57171662,1127127,Addis Ababa,Ethiopia
Somalia,SP,9639151,637660,Mogadishu,Somalia
Gambia,WAG,1204984,11300,Banjul,Gambia
Guinea-Bissau,GNB,1151330,36120,Bissau,Guinea-Bissau
Sierra Leone,WAL,4793121,71740,Freetown,Sierra Leone
Uganda,EAU,20158176,236040,Kampala,Uganda
Lesotho,LS,1970781,30350,Maseru,Lesotho
Malawi,MW,9452844,118480,Lilongwe,Malawi
Mauritius,MS,1140256,1860,Port Louis,Mauritius
Swaziland,SD,998730,17360,Mbabane,Swaziland
Sao Tome and Principe,STP,144128,960,Sao Tome,Sao Tome and Principe
Seychelles,SY,77575,455,Victoria,Seychelles
Madrid,E,5034548,8028,Madrid,Madrid
Vienna,A,1583000,415,Vienna,Vienna
Berlin,D,3472009,889,Berlin,Berlin
Ankara,TR,3236626,25706,Ankara,Ankara
Oslo,N,449337,,Oslo,Oslo
Stockholm,S,1654511,6488,Stockholm,Stockholm
Lisbon,P,2063800,2761,,
Tehran,IR,9982309,29993,Tehran,Tehran
Baghdad,IRQ,4648609,734,Baghdad,Baghdad
Tokyo,J,11773605,2164,Tokyo,Tokyo
Buenos Aires,RA,12594974,307571,La Plata,Buenos Aires
La Paz,HCA,117400,2331,La Paz,La Paz
Lima,PE,6941672,34801,Lima,Lima
Luanda,ANG,1629000,2418,Luanda,Luanda
Nairobi,EAK,1346000,684,Nairobi,Nairobi
Dakar,SN,1490500,550,Dakar,Dakar
Victoria,AUS,4502200,227600,Melbourne,Victoria
GR,CH,185063,7105,Chur,GR
GE,CH,395466,282,Geneva,GE
AG,CH,528887,1403,Aarau,AG
BS,CH,195759,37,Basel,BS
Valencia,E,3909047,23255,Valencia,Valencia
Merida,YV,680503,11300,Merida,Merida
Hamburg,D,1705872,755,Hamburg,Hamburg
Szolnok,H,420900,5608,Szolnok,Szolnok
Veszprem,H,378300,4689,Veszprem,Veszprem
Botosani,RO,468000,4965,Botosani,Botosani
Calarasi,RO,351000,5075,Calarasi,Calarasi
Giurgiu,RO,325000,3810,Giurgiu,Giurgiu
Suceava,RO,699000,8555,Suceava,Suceava
Tulcea,RO,275000,8430,Tulcea,Tulcea
Vaslui,RO,468000,5297,Vaslui,Vaslui
Adana,TR,1934907,17253,Adana,Adana
Istanbul,TR,7309190,5712,Istanbul,Istanbul
Izmir,TR,2694770,11973,Izmir,Izmir
Afyon,TR,739223,14230,Afyon,Afyon
Agri,TR,437093,11376,Agri,Agri
Aksaray,TR,326399,7626,Aksaray,Aksaray
Amasya,TR,357191,5520,Amasya,Amasya
Artvin,TR,212833,7436,Artvin,Artvin
Bayburt,TR,107330,3652,Bayburt,Bayburt
Bilecik,TR,175526,4307,Bilecik,Bilecik
Bingol,TR,250966,8125,Bingol,Bingol
Bitlis,TR,330115,6707,Bitlis,Bitlis
Bolu,TR,536869,11051,Bolu,Bolu
Burdur,TR,254899,6887,Burdur,Burdur
Canakkale,TR,432263,9737,Canakkale,Canakkale
Cankiri,TR,279129,8454,Cankiri,Cankiri
Corum,TR,609863,12820,Corum,Corum
Erzincan,TR,299251,11903,Erzincan,Erzincan
Giresun,TR,499087,6934,Giresun,Giresun
Gumushane,TR,169375,6575,Gumushane,Gumushane
Hakkari,TR,172479,7121,Hakkari,Hakkari
Karaman,TR,217536,9163,Karaman,Karaman
Kars,TR,662155,18557,Kars,Kars
Kastamonu,TR,423611,13108,Kastamonu,Kastamonu
Kirklareli,TR,309512,6550,Kirklareli,Kirklareli
Kirsehir,TR,256862,6570,Kirsehir,Kirsehir
Mardin,TR,557727,8891,Mardin,Mardin
Mugla,TR,562809,13338,Mugla,Mugla
Mus,TR,376543,8196,Mus,Mus
Nevsehir,TR,289509,5467,Nevsehir,Nevsehir
Nigde,TR,305861,7312,Nigde,Nigde
Rize,TR,348776,3920,Rize,Rize
Sakarya,TR,683061,4817,Sakarya,Sakarya
Siirt,TR,243435,5406,Siirt,Siirt
Sinop,TR,265153,5862,Sinop,Sinop
Sirnak,TR,262006,7172,Sirnak,Sirnak
Tekirdag,TR,468842,6218,Tekirdag,Tekirdag
Tokat,TR,719251,9958,Tokat,Tokat
Tunceli,TR,133143,7774,Tunceli,Tunceli
Yozgat,TR,579150,14123,Yozgat,Yozgat
Kalmar,S,241883,11170,Kalmar,Kalmar
Kristianstad,S,291468,6087,Kristianstad,Kristianstad
Durham,GB,604300,2436,Durham,Durham
Bridgend,GB,130900,246,Bridgend,Bridgend
Wrexham,GB,123500,499,Wrexham,Wrexham
Bushehr,IR,694252,27653,Bushehr,Bushehr
Semnan,IR,458125,90905,Semnan,Semnan
Mandalay,MYA,4577800,37024,Mandalay,Mandalay
Magway,MYA,3243200,44820,Magway,Magway
Sagaing,MYA,3862200,94625,Sagaing,Sagaing
Pondicherry,IND,807785,492,Pondicherry,Pondicherry
Zhambyl,KAZ,1039600,144300,Zhambyl,Zhambyl
Zhezkazghan,KAZ,484400,312600,Zhezkazghan,Zhezkazghan
Haifa,IL,602800,854,Haifa,Haifa
Tel Aviv,IL,1029700,170,Tel Aviv,Tel Aviv
Dahuk,IRQ,292931,6553,Dahuk,Dahuk
Fukuoka,J,4933393,4961,Fukuoka,Fukuoka
Aomori,J,1481663,9619,Aomori,Aomori
Akita,J,1213667,11612,Akita,Akita
Yamagata,J,1256958,9327,Yamagata,Yamagata
Fukushima,J,2133592,13784,Fukushima,Fukushima
Niigata,J,2488364,12579,Niigata,Niigata
Toyama,J,1123125,4252,Toyama,Toyama
Fukui,J,826996,4192,Fukui,Fukui
Nagano,J,2193984,13585,Nagano,Nagano
Gifu,J,2100315,10596,Gifu,Gifu
Shizuoka,J,3737689,7773,Shizuoka,Shizuoka
Nara,J,1430862,3692,Nara,Nara
Wakayama,J,1080435,4725,Wakayama,Wakayama
Tottori,J,614929,3494,Tottori,Tottori
Okayama,J,1950750,7090,Okayama,Okayama
Yamaguchi,J,1555543,6106,Yamaguchi,Yamaguchi
Tokushima,J,832427,4145,Tokushima,Tokushima
Kochi,J,816704,7107,Kochi,Kochi
Saga,J,884316,2433,Saga,Saga
Nagasaki,J,1544934,4112,Nagasaki,Nagasaki
Kumamoto,J,1859793,7408,Kumamoto,Kumamoto
Oita,J,1231306,6338,Oita,Oita
Miyazaki,J,1175819,7735,Miyazaki,Miyazaki
Kagoshima,J,1794224,9166,Kagoshima,Kagoshima
Durango,MEX,1431748,119648,Durango,Durango
Guanajuato,MEX,4406568,30589,Guanajuato,Guanajuato
Tlaxcala,MEX,883924,3914,Tlaxcala,Tlaxcala
Trujillo,YV,562752,7400,Trujillo,Trujillo
Ocotepeque,HCA,81800,1680,Ocotepeque,Ocotepeque
Yoro,HCA,370700,7939,Yoro,Yoro
Arauca,CO,89972,23818,Arauca,Arauca
Cordoba,CO,1013247,25020,Monteria,Cordoba
Sucre,CO,561649,10917,Sincelejo,Sucre
Sao Paulo,BR,34055715,248808,Sao Paulo,Sao Paulo
Callao,PE,701022,146,Callao,Callao
Huancavelica,PE,413136,22131,Huancavelica,Huancavelica
Moquegua,PE,137747,15733,Moquegua,Moquegua
Tumbes,PE,173616,4669,Tumbes,Tumbes
Cabinda,ANG,163000,7270,Cabinda,Cabinda
Uige,ANG,837000,58698,Uige,Uige
Malanje,ANG,892000,87246,Malanje,Malanje
Benguela,ANG,644000,31788,Benguela,Benguela
Huambo,ANG,1524000,34274,Huambo,Huambo
Bie,ANG,1125000,70314,Bie,Bie
Namibe,ANG,115000,58137,Namibe,Namibe
Bandundu,ZRE,4644758,295658,Bandundu,Bandundu
Lindi,EAT,646600,66046,Lindi,Lindi
Iringa,EAT,1208900,58864,Iringa,Iringa
Singida,EAT,791800,49341,Singida,Singida
Tabora,EAT,1036300,76151,Tabora,Tabora
Diourbel,SN,619700,4359,Diourbel,Diourbel
Fatick,SN,476000,7935,Fatick,Fatick
Kolda,SN,606800,21011,Kolda,Kolda
Louga,SN,490400,29188,Louga,Louga
Tambacounda,SN,370000,59602,Tambacounda,Tambacounda
Inhambane,MOC,1157000,68615,Inhambane,Inhambane
Shan,MYA,3716800,155801,Taunggyi,Shan
Rakhine,MYA,2045600,36778,Akyab,Rakhine
Mon,MYA,1680200,12297,Moulmein,Mon
Beja,P,167900,10225,,
Burgenland,A,273000,3965,Eisenstadt,Burgenland
Carinthia,A,559000,9533,Klagenfurt,Carinthia
Vorarlberg,A,341000,2601,Bregenz,Vorarlberg
Upper Austria,A,1373000,11979,Linz,Upper Austria
Tyrol,A,649000,12647,Innsbruck,Tyrol
Styria,A,1203000,16386,Graz,Styria
Salzburg,A,501000,7154,Salzburg,Salzburg
Lower Austria,A,1507000,19170,St. Polten,Lower Austria
Antwerp,B,1610695,2867,Antwerp,Antwerp
Brabant,B,2253794,3358,Brussels,Brabant
East Flanders,B,1340056,2982,Ghent,East Flanders
Hainaut,B,1283252,3787,Mons,Hainaut
Liege,B,1006081,3862,Liege,Liege
Limburg,B,755593,2422,Hasselt,Limburg
Namur,B,426305,3665,Namur,Namur
West Flanders,B,1111557,3134,Brugge,West Flanders
Jihocesky,CZ,702000,11345,Ceske Budejovice,Jihocesky
Jihomoravsky,CZ,2059000,15028,Brno,Jihomoravsky
Severocesky,CZ,1190000,7819,Usti nad Labem,Severocesky
Severomoravsky,CZ,1976000,11067,Ostrava,Severomoravsky
Praha,CZ,2329000,11490,Prague,Praha
Vychodocesky,CZ,1240000,11240,Hradec Kralove,Vychodocesky
Zapadocesky,CZ,869000,10875,Plzen,Zapadocesky
Aland,SF,23000,,Mariehamn,Aland
Haeme,SF,662000,,Haemeenlinna,Haeme
Kuopio,SF,252000,,Kuopio,Kuopio
Kymi,SF,345000,,Kotka,Kymi
Lappia,SF,195000,,Rovaniemi,Lappia
Mikkeli,SF,209000,,Mikkeli,Mikkeli
Suomi,SF,242000,,Jyvaeskylae,Suomi
Pohjols-Karjala,SF,177000,,Joensuu,Pohjols-Karjala
Oulu,SF,415000,,Oulu,Oulu
Turku-Pori,SF,702000,,Turku,Turku-Pori
Uusimaa,SF,1119000,,Helsinki,Uusimaa
Vaasa,SF,430000,,Vaasa,Vaasa
Alsace,F,1624000,8280,Strasbourg,Alsace
Aquitaine,F,2796000,41309,Bordeaux,Aquitaine
Auvergne,F,1321000,26013,Clermont Ferrand,Auvergne
Basse Normandie,F,1391000,17589,Caen,Basse Normandie
Bretagne,F,2796000,27209,Rennes,Bretagne
Bourgogne,F,1609000,31582,Dijon,Bourgogne
Centre,F,2371000,39151,Orleans,Centre
Champagne Ardenne,F,1348000,25606,Chalons sur Marne,Champagne Ardenne
Corse,F,250000,8680,Ajaccio,Corse
Franche Comte,F,1097000,16202,Besancon,Franche Comte
Haute Normandie,F,1737000,12318,Rouen,Haute Normandie
Ile de France,F,10660000,12011,Paris,Ile de France
Languedoc Rousillon,F,2115000,27376,Montpellier,Languedoc Rousillon
Limousin,F,723000,16942,Limoges,Limousin
Lorraine,F,2306000,23547,Metz,Lorraine
Midi Pyrenees,F,2431000,45349,Toulouse,Midi Pyrenees
Nord Pas de Calais,F,3965000,12413,Lille,Nord Pas de Calais
Pays de la Loire,F,3059000,32082,Nantes,Pays de la Loire
Picardie,F,1811000,19399,Amiens,Picardie
Poitou Charentes,F,1595000,25809,Poitiers,Poitou Charentes
Provence Cote dAzur,F,4258000,31400,Marseille,Provence Cote dAzur
Rhone Alpes,F,5351000,43698,Lyon,Rhone Alpes
Baden Wurttemberg,D,10272069,35742,Stuttgart,Baden Wurttemberg
Bayern,D,11921944,70546,Munich,Bayern
Brandenburg,D,2536747,29480,Potsdam,Brandenburg
Bremen,D,680000,404,Bremen,Bremen
Hessen,D,5980693,21115,Wiesbaden,Hessen
Mecklenburg Vorpommern,D,1832298,23170,Schwerin,Mecklenburg Vorpommern
Niedersachsen,D,7715363,47609,Hannover,Niedersachsen
Nordrhein Westfalen,D,17816079,34077,Dusseldorf,Nordrhein Westfalen
Rheinland Pfalz,D,3951573,19851,Mainz,Rheinland Pfalz
Saarland,D,1084201,2570,Saarbrucken,Saarland
Sachsen,D,4584345,18412,Dresden,Sachsen
Sachsen Anhalt,D,2759213,20446,Magdeburg,Sachsen Anhalt
Schleswig Holstein,D,2708392,15738,Kiel,Schleswig Holstein
Thuringen,D,2517776,16171,Erfurt,Thuringen
Baranya,H,417100,4487,Pecs,Pecs (munic.)
Bacs Kiskun,H,540800,8363,Kecskemet,Bacs Kiskun
Bekes,H,404000,5632,Bekescaba,Bekes
Borsod Abauj Zemplen,H,749100,7248,Miskolc,Miskolc (munic.)
Csongrad,H,437600,4263,Hodmezovasarhely,Csongrad
Fejer,H,422500,4374,Szekesfehervar,Fejer
Gyor Sopron,H,426800,4012,Gyor,Gyor (munic.)
Hajdu Bihar,H,549700,6212,Debrecen,Debrecen (munic.)
Heves,H,330200,3637,Eger,Heves
Komarom Esztergom,H,312900,2250,Tatabanya,Komarom Esztergom
Nograd,H,222700,2544,Salgotarjan,Nograd
Pest,H,957900,6394,Budapest,Budapest (munic.)
Somogy,H,340000,6035,Kaposvar,Somogy
Szabolcs Szatmar,H,563500,5938,Nyiregyhaza,Szabolcs Szatmar
Tolna,H,251000,3702,Szekszard,Tolna
Vas,H,273900,3337,Szombathely,Vas
Zala,H,302600,3786,Zalaegerszeg,Zala
Budapest (munic.),H,2008500,525,Budapest,Budapest (munic.)
Debrecen (munic.),H,217300,446,Debrecen,Debrecen (munic.)
Gyor (munic.),H,130600,175,Gyor,Gyor (munic.)
Miskolc (munic.),H,191000,224,Miskolc,Miskolc (munic.)
Pecs (munic.),H,171600,113,Pecs,Pecs (munic.)
Szeged (munic.),H,178500,145,Szeged,Szeged (munic.)
Piemonte,I,4307000,25399,Turin,Piemonte
Valle dAosta,I,118000,3262,Aosta,Valle dAosta
Lombardia,I,8901000,23857,Milan,Lombardia
Trentino Alto Adige,I,904000,13618,Bolzano,Trentino Alto Adige
Veneto,I,4415000,18364,Venice,Veneto
Friuli Venezia Giulia,I,1193000,7845,Trieste,Friuli Venezia Giulia
Liguria,I,1663000,5418,Genua,Liguria
Emilia Romagna,I,3924000,22123,Bologna,Emilia Romagna
Toscana,I,3528000,22992,Firenze,Toscana
Umbria,I,819000,8456,Perugia,Umbria
Marche,I,1438000,9693,Ancona,Marche
Lazio,I,5185000,17203,Rome,Lazio
Abruzzo,I,1263000,10794,LAquila,Abruzzo
Molise,I,332000,4438,Campobasso,Molise
Campania,I,5709000,13595,Napoli,Campania
Puglia,I,4066000,19348,Bari,Puglia
Basilicata,I,611000,9992,Potenza,Basilicata
Calabria,I,2080000,15080,Catanzaro,Calabria
Sicilia,I,5025000,25709,Palermo,Sicilia
Sardegna,I,1657000,24090,Cagliari,Sardegna
Groningen,NL,557995,2344,Groningen,Groningen
Friesland,NL,609579,3361,Leeuwarden,Friesland
Drenthe,NL,454864,2652,Assen,Drenthe
Overijssel,NL,1050389,3337,Zwolle,Overijssel
Flevoland,NL,262325,1425,Lelystad,Flevoland
Gelderland,NL,1864732,4995,Arnhem,Gelderland
Utrecht,NL,1063460,1356,Utrecht,Utrecht
Noord Holland,NL,2463611,265978,Haarlem,Noord Holland
Zuid Holland,NL,3325064,2859,s Gravenhage,Zuid Holland
Zeeland,NL,365846,1791,Middelburg,Zeeland
Noord Brabant,NL,2276207,4938,s Hertogenbosch,Noord Brabant
Akershus,N,393217,,Oslo,Oslo
Oestfold,N,234941,,Moss,Oestfold
Hedmark,N,186355,,Hamar,Hedmark
Oppland,N,181791,,Lillehammer,Oppland
Buskerud,N,219967,,Drammen,Buskerud
Vestfold,N,191600,,Toensberg,Vestfold
Telemark,N,162547,,Skien,Telemark
Aust Agder,N,94688,,Arendal,Aust Agder
Vest Agder,N,140232,,Kristiansand,Vest Agder
Rogaland,N,323365,,Stavanger,Rogaland
Hordaland,N,399702,,Bergen,Hordaland
Sogn og Fjordane,N,106116,,Hermannsverk,Sogn og Fjordane
Moere og Romsdal,N,237290,,Molde,Moere og Romsdal
Soer Trondelag,N,246824,,Trondheim,Soer Trondelag
Nord Trondelag,N,126692,,Steinkjer,Nord Trondelag
Nordland,N,242268,,Bodoe,Nordland
Troms,N,146736,,Tromsoe,Troms
Finnmark,N,75667,,Vadsoe,Finnmark
Warszwaskie,PL,2421000,3788,Warsaw,Warszwaskie
Bialskopodlaskie,PL,306700,5348,Biala Podlaska,Bialskopodlaskie
Bialostockie,PL,697000,10055,Bialystok,Bialostockie
Bielskie,PL,911500,3704,Bielsko Biala,Bielskie
Bydgoskie,PL,1120300,10349,Bydgoszcz,Bydgoskie
Chelmskie,PL,248500,3866,Chelm,Chelmskie
Ciechanowskie,PL,431400,6362,Ciechanow,Ciechanowskie
Czestochowskie,PL,748000,6182,Czestochowa,Czestochowskie
Elblaskie,PL,483200,6103,Elblag,Elblaskie
Gdanskie,PL,1445000,7394,Gdansk,Gdanskie
Gorzowskie,PL,505600,8484,Gorzow Wielkopolskie,Gorzowskie
Jeleniogorskie,PL,519200,4379,Jelenia Gora,Jeleniogorskie
Kaliskie,PL,715600,6512,Kalisz,Kaliskie
Katowickie,PL,4013200,6650,Katowice,Katowickie
Kieleckie,PL,1127700,9211,Kielce,Kieleckie
Koninskie,PL,472400,5139,Konin,Koninskie
Koszalinskie,PL,513700,8470,Koszalin,Koszalinskie
Krakowskie,PL,1238100,3254,Krakow,Krakowskie
Krosnienskie,PL,500700,5702,Krosno,Krosnienskie
Legnickie,PL,521500,4037,Legnica,Legnickie
Leszczynskie,PL,391500,4154,Leszno,Leszczynskie
Lubelskie,PL,1022600,6792,Lublin,Lubelskie
Lomzynskie,PL,349000,6684,Lomza,Lomzynskie
Lodzkie,PL,1132400,1523,Lodz,Lodzkie
Nowosadeckie,PL,709500,5576,Nowy Sacz,Nowosadeckie
Olsztynskie,PL,761300,12327,Olsztyn,Olsztynskie
Opolskie,PL,1023800,8535,Opole,Opolskie
Ostroleckie,PL,400500,6498,Ostroleka,Ostroleckie
Pilskie,PL,485700,8205,Pila,Pilskie
Piotrkowskie,PL,644200,6266,Piottrkow Trybunalski,Piotrkowskie
Plockie,PL,518600,5117,Plock,Plockie
Poznanskie,PL,1344200,8151,Poznan,Poznanskie
Przemyskie,PL,409600,4437,Przemysl,Przemyskie
Radomskie,PL,755500,7294,Radom,Radomskie
Rzeszowskie,PL,734100,4397,Rzeszow,Rzeszowskie
Siedleckie,PL,655300,8499,Siedlce,Siedleckie
Sieradzkie,PL,408700,4869,Sieradz,Sieradzkie
Skierniewickie,PL,421700,3960,Skierniewice,Skierniewickie
Slupskie,PL,419300,7453,Slupsk,Slupskie
Suwalskie,PL,477100,10490,Suwalki,Suwalskie
Szczecinskie,PL,979500,9982,Szczecin,Szczecinskie
Tarnobrzeskie,PL,604300,6283,Tarnobrzeg,Tarnobrzeskie
Tarnowskie,PL,678400,4151,Tarnow,Tarnowskie
Torunskie,PL,662600,5348,Torun,Torunskie
Walbrzyskie,PL,740000,4168,Walbrzych,Walbrzyskie
Wloclawskie,PL,430800,4402,Wloclawek,Wloclawskie
Wroclawskie,PL,1132800,6287,Wroclaw,Wroclawskie
Zamojskie,PL,490800,6980,Zamosc,Zamojskie
Zielonogorskie,PL,664700,8868,Zielona Gora,Zielonogorskie
Aveiro,P,656000,2808,,
Braga,P,746100,2673,,
Braganca,P,158300,6608,,
Castelo Branco,P,214700,6675,,
Coimbra,P,427600,3947,,
Evora,P,173500,7393,,
Faro,P,340100,4960,,
Guarda,P,187800,5518,,
Leiria,P,427800,3515,,
Portalegre,P,134300,6065,,
Porto,P,1622300,2395,,
Santarem,P,442700,6747,,
Setubal,P,713700,5064,,
Viana do Castelo,P,248700,2255,,
Vila Real,P,237100,4328,,
Viseu,P,401000,5007,,
"Azores, The",P,236700,2247,,
Madeira,P,253000,794,,
Alba,RO,428000,6231,Alba Iulia,Alba
Arad,RO,507000,7652,Arad,Arad
Arges,RO,678000,6801,Pitesti,Arges
Bacau,RO,731000,6606,Bacau,Bacau
Bihor,RO,660000,7535,Oradea,Bihor
Bistrita Nasaud,RO,328000,5305,Bistrita,Bistrita Nasaud
Braila,RO,404000,4724,Braila,Braila
Brasov,RO,695000,5351,Brasov,Brasov
Bucuresti,RO,2319000,1521,Bucharest,Bucuresti
Buzau,RO,524000,6072,Buzau,Buzau
Caras Severin,RO,408000,8503,Resita,Caras Severin
Cluj,RO,743000,6650,Cluj Napoca,Cluj
Constanta,RO,737000,7055,Constanta,Constanta
Covasha,RO,238000,3705,Sfintu Gheorghe,Covasha
Dimbovita,RO,570000,4035,Tirgoviste,Dimbovita
Dolj,RO,772000,7413,Craiova,Dolj
Galati,RO,642000,4425,Galati,Galati
Gorj,RO,388000,5641,Tirgu Jiu,Gorj
Harghita,RO,363000,6610,Miercurea Ciuc,Harghita
Hunedoara,RO,567000,7016,Deva,Hunedoara
Ialomita,RO,309000,4449,Slobozia,Ialomita
Iasi,RO,810000,5469,Iasi,Iasi
Maramures,RO,556000,6215,Baia Mare,Maramures
Mehedinti,RO,329000,4900,Drobeta Turnu Severin,Mehedinti
Mures,RO,621000,6696,Tirgu Mures,Mures
Neamt,RO,580000,5890,Piatra Neamt,Neamt
Olt,RO,535000,5507,Slatina,Olt
Prahova,RO,877000,4694,Ploiesti,Prahova
Salaj,RO,269000,3850,Zalau,Salaj
Satu Mare,RO,417000,4405,Satu Mare,Satu Mare
Sibiu,RO,509000,5422,Sibiu,Sibiu
Teleorman,RO,504000,5760,Alexandria,Teleorman
Timis,RO,726000,8692,Timisoara,Timis
Vilcea,RO,430000,5705,Rimnicu Vilcea,Vilcea
Vrancea,RO,394000,4863,Focsani,Vrancea
Andalusia,E,7053043,87600,Sevilla,Andalusia
Aragon,E,1183576,47720,Zaragoza,Aragon
Asturias,E,1083388,10604,Oviedo,Asturias
Balearic Islands,E,736865,4992,Palma de Mallorca,Balearic Islands
Basque Country,E,2075561,7235,Vitoria Gasteiz,Basque Country
Canary Islands,E,1534897,7447,Santa Cruz de Tenerife,Canary Islands
Cantabria,E,526090,5321,Santander,Cantabria
Castile and Leon,E,2504371,94224,Valladolid,Castile and Leon
Castile La Mancha,E,1656179,79462,Toledo,Castile La Mancha
Catalonia,E,6090107,32113,Barcelona,Catalonia
Estremadura,E,1050590,41635,Merida,Estremadura
Galicia,E,2720761,29574,Santiago de Compostella,Galicia
Murcia,E,1070401,11314,Murcia,Murcia
Navarre,E,523614,10391,Pamplona,Navarre
Rioja,E,263437,5045,Logrono,Rioja
Alvsborg,S,444259,11395,Vanersborg,Alvsborg
Blekinge,S,151168,2941,Karlskrona,Blekinge
Gavleborg,S,289339,18191,Gavle,Gavleborg
Goteborg och Bohus,S,742550,5141,Goteborg,Goteborg och Bohus
Gotland,S,57383,3140,Visby,Gotland
Halland,S,257874,5454,Halmstad,Halland
Jamtland,S,136009,49443,Ostersund,Jamtland
Jonkoping,S,309738,9944,Jonkoping,Jonkoping
Kopparberg,S,290388,28194,Falun,Kopparberg
Kronoberg,S,178612,8458,Vaxjo,Kronoberg
Malmohus,S,786757,4938,Malmo,Malmohus
Norrbotten,S,264834,98913,Lulea,Norrbotten
Orebro,S,273608,8519,Orebro,Orebro
Ostergotland,S,406100,10562,Linkoping,Ostergotland
Skaraborg,S,278162,7937,Mariestad,Skaraborg
Sodermanland,S,256818,6060,Nykoping,Sodermanland
Uppsala,S,273918,6989,Uppsala,Uppsala
Varmland,S,284187,17584,Karlstad,Varmland
Vasterbotten,S,253835,55401,Umea,Vasterbotten
Vasternorrland,S,261280,21678,Harnosand,Vasternorrland
Vastmanland,S,259438,6302,Vasteras,Vastmanland
AR,CH,54104,242,Herisau,AR
AI,CH,14750,172,Appenzell,AI
BL,CH,252331,517,Liestal,BL
BE,CH,941952,5960,Bern,BE
FR,CH,224552,1670,Fribourg,FR
GL,CH,39410,685,Glarus,GL
JU,CH,69188,836,Delemont,JU
LU,CH,340536,1493,Luzern,LU
NE,CH,165258,803,Neuchatel,NE
NW,CH,36466,276,Stans,NW
OW,CH,31310,490,Sarnen,OW
SG,CH,442350,2025,Sankt Gallen,SG
SH,CH,74035,298,Schaffhausen,SH
SZ,CH,122409,908,Schwyz,SZ
SO,CH,239264,790,Solothurn,SO
TG,CH,223372,990,Frauenfeld,TG
TI,CH,305199,2812,Bellinzona,TI
UR,CH,35876,1076,Altdorf,UR
VS,CH,271291,5224,Sion,VS
VD,CH,605677,3211,Lausanne,VD
ZG,CH,92392,238,Zug,ZG
ZH,CH,1175457,1728,Zurich,ZH
Cherkaska,UA,1530900,20900,Cherkasy,Cherkaska
Chernihivska,UA,938600,31900,Chernihiv,Chernihivska
Chernivetska,UA,1405800,8100,Chernivtsi,Chernivetska
Dnipropetrovska,UA,3908700,31900,Dnipropetrovsk,Dnipropetrovska
Donetska,UA,5346700,26500,Donetsk,Donetska
Ivano Frankivska,UA,1442900,13900,Ivano Frankivsk,Ivano Frankivska
Kharkivska,UA,3194800,31400,Kharkiv,Kharkivska
Khersonska,UA,1258700,28500,Kherson,Khersonska
Khmelnytska,UA,1520600,20600,Khmelnytskyy,Khmelnytska
Kyyivska,UA,4589800,28900,Kiev,Kyyivska
Kirovohradska,UA,1245300,24600,Kirovohrad,Kirovohradska
Luhanska,UA,2871100,26700,Luhansk,Luhanska
Lvivska,UA,2764400,21800,Lviv,Lvivska
Mykolayivska,UA,1342400,24600,Mykolayiv,Mykolayivska
Odeska,UA,2635300,33300,Odesa,Odeska
Poltavska,UA,1756900,28800,Poltava,Poltavska
Rivnenska,UA,1176800,20100,Rivne,Rivnenska
Sumska,UA,1430200,23800,Sumy,Sumska
Ternopilska,UA,1175100,13800,Ternopil,Ternopilska
Vinnytska,UA,1914400,26500,Vinnytsya,Vinnytska
Volynska,UA,1069000,20200,Lutsk,Volynska
Zakarpatska,UA,1265900,12800,Uzhhorod,Zakarpatska
Zaporizka,UA,2099600,27200,Zaporizhzhya,Zaporizka
Zhytomyrska,UA,1510700,29900,Zhytomyr,Zhytomyrska
Krym,UA,2549800,27000,Simferopol,Krym
Avon,GB,962000,1346,Bristol,Avon
Bedfordshire,GB,534300,1235,Bedford,Bedfordshire
Berkshire,GB,752500,1259,Reading,Berkshire
Buckinghamshire,GB,640200,1883,Aylesbury,Buckinghamshire
Cambridgeshire,GB,669900,3409,Cambridge,Cambridgeshire
Cheshire,GB,966500,2329,Chester,Cheshire
Cleveland,GB,557500,583,Middlesbrough,Cleveland
Cornwall / Isles of Scilly,GB,475200,3564,Truro,Cornwall / Isles of Scilly
Cumbria,GB,489700,6810,Carlisle,Cumbria
Derbyshire,GB,938800,2631,Matlock,Derbyshire
Devon,GB,1040000,6711,Exeter,Devon
Dorset,GB,662900,2654,Dorchester,Dorset
East Sussex,GB,716500,1795,Lewes,East Sussex
Essex,GB,1548800,3672,Chelmsford,Essex
Gloucestershire,GB,538800,2643,Glouchester,Gloucestershire
Greater London,GB,6803100,1579,London,Greater London
Greater Manchester,GB,2561600,1287,Manchester,Greater Manchester
Hampshire,GB,1578700,3777,Winchester,Hampshire
Hereford and Worcester,GB,696000,3927,Worcester,Hereford and Worcester
Hertfordshire,GB,989500,1634,Hertford,Hertfordshire
Humberside,GB,874400,3512,Hull,Humberside
Isle of Wight,GB,126600,381,Newport,Newport
Kent,GB,1538800,3731,Maidstone,Kent
Lancashire,GB,1408300,3064,Preston,Lancashire
Leicestershire,GB,890800,2553,Leichester,Leicestershire
Lincolnshire,GB,592600,5915,Lincoln,Lincolnshire
Merseyside,GB,1441100,652,Liverpool,Merseyside
Norfolk,GB,759400,5368,Norwich,Norfolk
Northamptonshire,GB,587100,2367,Northampton,Northamptonshire
Northumberland,GB,307100,5032,Newcastle,Tyne and Wear
North Yorkshire,GB,720900,8309,Northallerton,North Yorkshire
Nottinghamshire,GB,1015500,2164,Nottingham,Nottinghamshire
Oxfordshire,GB,597700,2608,Oxford,Oxfordshire
Shropshire,GB,412500,3490,Shrewsbury,Shropshire
Somerset,GB,469400,3451,Taunton,Somerset
South Yorkshire,GB,1292700,1560,Barnsley,South Yorkshire
Staffordshire,GB,1047400,2716,Stafford,Staffordshire
Suffolk,GB,661900,3797,Ipswich,Suffolk
Surrey,GB,1035500,1679,Kingston,Surrey
Tyne and Wear,GB,1125600,540,Newcastle,Tyne and Wear
Warwickshire,GB,489900,1981,Warwick,Warwickshire
West Midlands,GB,2619000,899,Birmingham,West Midlands
West Sussex,GB,713600,1989,Chichester,West Sussex
West Yorkshire,GB,2066200,2039,Wakefield,West Yorkshire
Wiltshire,GB,575100,3480,Trowbridge,Wiltshire
Borders,GB,105700,4698,Newtown St. Boswells,Borders
Central,GB,273400,2700,Stirling,Central
Dumfries and Galloway,GB,147800,6425,Dumfries,Dumfries and Galloway
Fife,GB,352100,1319,Glenrothes,Fife
Grampian,GB,532500,8752,Aberdeen,Grampian
Highland,GB,207500,26137,Inverness,Highland
Lothian,GB,758600,1770,Edinburgh,Lothian
Strathclyde,GB,2287800,13773,Glasgow,Strathclyde
Tayside,GB,395000,7643,Dundee,Tayside
Island Areas (munic.),GB,72000,5566,Island Areas,Island Areas (munic.)
Aberconwy and Colwyn,GB,110700,1130,Colwyn Bay,Aberconwy and Colwyn
Anglesey,GB,68500,719,Llangefni,Anglesey
Blaenau Gwent,GB,73300,109,Ebbw Vale,Blaenau Gwent
Caerphilly,GB,171000,279,Ystrad Fawr,Caerphilly
Cardiff,GB,306600,139,Cardiff,Cardiff
Carmarthenshire,GB,169000,2398,Carmarthen,Carmarthenshire
Ceredigion,GB,69700,1797,Aberystwyth,Ceredigion
Denbighshire,GB,91300,844,Ruthin,Denbighshire
Flintshire,GB,145300,437,Mold,Flintshire
Gwynedd,GB,117000,2548,Caernarfon,Gwynedd
Merthyr Tydfil,GB,59500,111,Merthyr Tydfil,Merthyr Tydfil
Monmouthshire,GB,84200,851,Cwmbran,Monmouthshire
Neath and Port Talbot,GB,140100,441,Port Talbot,Neath and Port Talbot
Newport,GB,137400,191,Newport,Newport
Pembrokeshire,GB,113600,1590,Haverfordwest,Pembrokeshire
Powys,GB,121800,5204,Llandrindod Wells,Powys
Rhondda Cynon Taff,GB,239000,424,Rhondda,Rhondda Cynon Taff
Swansea,GB,230900,378,Swansea,Swansea
Torfaen,GB,90600,126,Pontypool,Torfaen
Vale of Glamorgan,GB,119200,337,Barry,Vale of Glamorgan
Northern Ireland,GB,1594400,14120,Belfast,Northern Ireland
Ayeyarwady,MYA,4994100,35138,Pathein,Ayeyarwady
Bago,MYA,3799800,39404,Bago,Bago
Yangon,MYA,3965900,10171,Rangoon,Yangon
Tanintharyi,MYA,917200,43343,Tavoy,Tanintharyi
Chin,MYA,368900,36019,Hakha,Chin
Kachin,MYA,904800,89041,Myitkyina,Kachin
Kayin,MYA,1055400,30383,Hpa an,Kayin
Kayah,MYA,168400,11733,Loikaw,Kayah
Anhui,TJ,59550000,139000,Hefei,Anhui
Fujian,TJ,31830000,120000,Fuzhou,Fujian
Gansu,TJ,23780000,450000,Lanzhou,Gansu
Guangdong,TJ,66890000,186000,Guangzhou,Guangdong
Guizhou,TJ,34580000,170000,Guiyang,Guizhou
Hainan,TJ,7110000,34000,Haikou,Hainan
Hebei,TJ,63880000,190000,Shijiazhuang,Hebei
Heilongjiang,TJ,36720000,469000,Harbin,Heilongjiang
Henan,TJ,90270000,167000,Zhengzhou,Henan
Hubei,TJ,57190000,187400,Wuhan,Hubei
Hunan,TJ,63550000,210000,Changsha,Hunan
Jiangsu,TJ,70210000,102600,Nanjing,Jiangsu
Jiangxi,TJ,40150000,166600,Nanchang,Jiangxi
Jilin,TJ,25740000,187000,Changchun,Jilin
Liaoning,TJ,40670000,145700,Shenyang,Liaoning
Qinghai,TJ,4740000,720000,Xining,Qinghai
Shaanxi,TJ,34810000,205000,Xi,Shaanxi
Shandong,TJ,86710000,153000,Jinan,Shandong
Shanxi,TJ,30450000,156000,Taiyuan,Shanxi
Sichuan,TJ,112140000,570000,Chengdu,Sichuan
Yunnan,TJ,39390000,394000,Kunming,Yunnan
Zhejiang,TJ,42940000,101800,Hangzhou,Zhejiang
Guangxi Zhuangzu,TJ,44930000,236300,Nanning,Guangxi Zhuangzu
Nei Monggol,TJ,22600000,1183000,Hohhot,Nei Monggol
Ningxia Huizu,TJ,5040000,66400,Yinchuan,Ningxia Huizu
Xinjiang Uygur,TJ,16320000,1600000,Urumqi,Xinjiang Uygur
Tibet,TJ,2360000,1220000,Lhasa,Tibet
Beijing (munic.),TJ,11250000,16800,Beijing,Beijing (munic.)
Shanghai (munic.),TJ,13560000,6200,Shanghai,Shanghai (munic.)
Tianjin (munic.),TJ,9350000,11300,Tianjin,Tianjin (munic.)
Andhra Pradesh,IND,66508008,275045,Hyderabad,Andhra Pradesh
Arunachal Pradesh,IND,864558,83743,Itanagar,Arunachal Pradesh
Assam,IND,22414322,78438,Dispur,Assam
Bihar,IND,86374465,173877,Patna,Bihar
Goa,IND,1169793,3702,Panaji,Goa
Gujarat,IND,41309582,196024,Gandhinagar,Gujarat
Haryana,IND,16463648,44212,Chandigarh,Chandigarh
Himachal Pradesh,IND,5170877,55673,Simla,Himachal Pradesh
Jammu and Kashmir,IND,7718700,101387,Srinagar,Jammu and Kashmir
Karnataka,IND,44977201,191791,Bangalore,Karnataka
Kerala,IND,29098518,38863,Trivandrum,Kerala
Madhya Pradesh,IND,66181170,443446,Bhopal,Madhya Pradesh
Maharashtra,IND,78937187,307713,Bombay,Maharashtra
Manipur,IND,1837149,22327,Imphal,Manipur
Meghalaya,IND,1774778,22429,Shillong,Meghalaya
Mizoram,IND,689756,21081,Aijal,Mizoram
Nagaland,IND,1209546,16579,Kohima,Nagaland
Orissa,IND,31659736,155707,Bhubaneswar,Orissa
Punjab,IND,20281969,50362,Chandigarh,Chandigarh
Rajasthan,IND,44005990,342239,Jaipur,Rajasthan
Sikkim,IND,406457,7096,Gangtok,Sikkim
Tamil Nadu,IND,55858946,130058,Madras,Tamil Nadu
Tripura,IND,2757205,10486,Agartala,Tripura
Uttar Pradesh,IND,139112287,294411,Lucknow,Uttar Pradesh
West Bengal,IND,68077965,88752,Calcutta,West Bengal
Andaman and Nicobar Is.,IND,280661,8249,Port Blair,Andaman and Nicobar Is.
Chandigarh,IND,642015,114,Chandigarh,Chandigarh
Dadra and Nagar Haveli,IND,138477,491,Silvassa,Dadra and Nagar Haveli
Daman and Diu,IND,101586,112,Daman,Daman and Diu
Delhi,IND,9420644,1483,New Delhi,Delhi
Lakshadweep Is.,IND,51707,32,Kavaratti,Lakshadweep Is.
Azarbayian e Gharbt,IR,2284208,38850,Orumiyeh,Azarbayian e Gharbt
Azarbayian e Sharqi,IR,4420343,67102,Tabriz,Azarbayian e Sharqi
Bakhtaran,IR,1622159,23667,Bakhtaran,Bakhtaran
Boyer Ahmad e Kohkiluyeh,IR,496739,14261,Yasuj,Boyer Ahmad e Kohkiluyeh
Chahar Mahal e Bakhtiari,IR,747297,14870,Shahr e Kord,Chahar Mahal e Bakhtiari
Esfahan,IR,3682444,104650,Esfahan,Esfahan
Fars,IR,3543828,133298,Shiraz,Fars
Gilan,IR,2204047,14709,Rasht,Gilan
Hamadan,IR,1651320,19784,Hamadan,Hamadan
Hormozgan,IR,924433,66780,Bandar Abbas,Hormozgan
Ilam,IR,440693,19044,Ilam,Ilam
Kerman,IR,1862542,179916,Kerman,Kerman
Khorasan,IR,6013200,313337,Mashhad,Khorasan
Khuzestan,IR,3175852,67282,Ahvaz,Khuzestan
Kordestan,IR,1233480,24998,Sanandaj,Kordestan
Lorestan,IR,1501778,28803,Khorramabad,Lorestan
Markazi,IR,1182611,29080,Arak,Markazi
Mazandaran,IR,3793149,46456,Sari,Mazandaran
Sistan e Baluchestan,IR,1455102,181578,Zahedan,Sistan e Baluchestan
Yazd,IR,691119,70011,Yazd,Yazd
Zanjan,IR,1776133,36398,Zanjan,Zanjan
Al Anbar,IRQ,817868,138501,Ar Ramadi,Al Anbar
Babil,IRQ,1108773,6468,Al Hillah,Babil
Al Basrah,IRQ,872211,19070,Al Basrah,Al Basrah
Dhi Qar,IRQ,917880,12900,An Nasiriyah,Dhi Qar
Diyala,IRQ,955112,19076,Baqubah,Diyala
Karbala,IRQ,455868,5034,Karbala,Karbala
Maysan,IRQ,499842,16072,Al Amarah,Maysan
Al Muthanna,IRQ,312911,51740,As Samawah,Al Muthanna
An Najaf,IRQ,583493,28824,An Najaf,An Najaf
Ninawa,IRQ,1507926,35899,Al Mawsil,Ninawa
Al Qadisiyah,IRQ,560797,8153,Ad Diwaniyah,Al Qadisiyah
Salah ad Din,IRQ,723500,26175,Samarra,Salah ad Din
Ad Tamim,IRQ,592869,10282,Kirkuk,Ad Tamim
Wasit,IRQ,546676,17153,Al Kut,Wasit
Irbil,IRQ,742538,14471,Irbil,Irbil
As Sulaymaniyah,IRQ,942513,17023,As Sulaymaniyah,As Sulaymaniyah
North,IL,739500,4501,Nazareth,North
South,IL,529300,14107,Beer Sheva,South
Hokkaido,J,5692321,83519,Sapporo,Hokkaido
Iwate,J,1419505,15277,Morioka,Iwate
Miyagi,J,2328739,7292,Sendai,Miyagi
Ibaraki,J,2955530,6094,Mito,Ibaraki
Tochigi,J,1984390,6414,Utsonomiya,Tochigi
Gumma,J,2003540,6356,Maebashi,Gumma
Saitama,J,6759311,3799,Urawa,Saitama
Chiba,J,5797782,5150,Chiba,Chiba
Kanagawa,J,8245900,2402,Yokohama,Kanagawa
Ishikawa,J,1180068,4197,Kanazawa,Ishikawa
Yamanashi,J,881996,4463,Kofu,Yamanashi
Aichi,J,6868336,5138,Nagoya,Aichi
Mie,J,1841358,5778,Tsu,Mie
Shiga,J,1287005,4016,Otsu,Shiga
Kyoto,J,2629592,4613,Kyoto,Kyoto
Osaka,J,8797268,1868,Osaka,Osaka
Hyogo,J,5401877,8381,Kobe,Hyogo
Shimane,J,771441,6628,Matsue,Shimane
Hiroshima,J,2881748,8467,Hiroshima,Hiroshima
Kagawa,J,1027006,1882,Takamatsu,Kagawa
Ehime,J,1506700,5672,Matsuyama,Ehime
Okinawa,J,1273440,2255,Naha,Okinawa
Almaty,KAZ,963100,105700,Almaty,Almaty (munic.)
Aqmola,KAZ,845700,92000,Aqmola,Aqmola
Aqtobe,KAZ,752800,300600,Aqtobe,Aqtobe
Atyrau,KAZ,459600,118600,Atyrau,Atyrau
Batys Qazaqstan,KAZ,669800,151300,Oral,Batys Qazaqstan
Kokchetau,KAZ,657000,78200,Kokchetau,Kokchetau
Mangghystau,KAZ,324400,165600,Aqtau,Mangghystau
Ongtustik Qazaqstan,KAZ,1987800,117300,Shymkent,Ongtustik Qazaqstan
Pavlodar,KAZ,943600,124800,Pavlodar,Pavlodar
Qaraghandy,KAZ,1270100,115400,Karaganda,Qaraghandy
Qostanay,KAZ,1055300,113900,Qostanay,Qostanay
Qyzylorda,KAZ,606100,226000,Qyzylorda,Qyzylorda
Semey,KAZ,811000,185800,Semey,Semey
Shyghys Qazaqstan,KAZ,939500,97500,Oskemen,Shyghys Qazaqstan
Soltustik Qazaqstan,KAZ,600900,45000,Petropavl,Soltustik Qazaqstan
Taldyqorghan,KAZ,721500,118500,Taldyqorghan,Taldyqorghan
Torghay,KAZ,305900,111800,Arqalyq,Torghay
Almaty (munic.),KAZ,1172400,0,Almaty,Almaty (munic.)
Leninsk (munic.),KAZ,68600,0,Leninsk,Leninsk (munic.)
Johor,MAL,2074297,18986,Johor Baharu,Johor
Kedah,MAL,1304800,9426,Alor Setar,Kedah
Kelantan,MAL,1181680,14943,Kota Baharu,Kelantan
Melaka,MAL,504502,1650,Melaka,Melaka
Negeri Sembilan,MAL,691150,6643,Seremban,Negeri Sembilan
Pahang,MAL,1036724,35965,Kuantan,Pahang
Perak,MAL,1880016,21005,Ipoh,Perak
Perlis,MAL,184070,795,Kangar,Perlis
Pulau Pinang,MAL,1065075,1031,George Town,Pulau Pinang
Sabah,MAL,1736902,73620,Kota Kinabalu,Sabah
Sarawak,MAL,1648217,124449,Kuching,Sarawak
Selangor,MAL,2289236,7956,Shah Alam,Selangor
Terengganu,MAL,770931,12955,Kuala Terengganu,Terengganu
Fed. Terr. of Kuala Lumpur,MAL,1145075,243,Kuala Lumpur,Fed. Terr. of Kuala Lumpur
Fed. Terr. of Labuan,MAL,54307,91,Labuan,Fed. Terr. of Labuan
Rep. of Karelia,R,785000,172400,Petrozavodsk,Rep. of Karelia
Rep. of Komi,R,1185500,415900,Syktyvkar,Rep. of Komi
Arkhangelskaya oblast,R,1520800,587400,Arkhangelsk,Arkhangelskaya oblast
Vologodskaya oblast,R,1349800,145700,Vologda,Vologodskaya oblast
Murmanskaya oblast,R,1048000,144900,Murmansk,Murmanskaya oblast
Kaliningradskaya oblast,R,932200,15100,Kaliningrad,Kaliningradskaya oblast
Sankt Peterburg,R,4801500,0,Sankt Peterburg,Sankt Peterburg
Leningradskaya oblast,R,1675900,85900,Sankt Peterburg,Sankt Peterburg
Novgorodskaya oblast,R,742600,55300,Novgorod,Novgorodskaya oblast
Pskovskaya oblast,R,832300,55300,Pskov,Pskovskaya oblast
Bryanskaya oblast,R,1479700,34900,Bryansk,Bryanskaya oblast
Vladimirskaya oblast,R,1644700,29000,Vladimir,Vladimirskaya oblast
Ivanovskaya oblast,R,1266400,23900,Ivanovo,Ivanovskaya oblast
Kaluzhskaya oblast,R,1097300,29900,Kaluga,Kaluzhskaya oblast
Kostromskaya oblast,R,805700,60100,Kostroma,Kostromskaya oblast
Moskva,R,8664400,0,Moscow,Moskva
Moskovskaya oblast,R,6596600,47000,Moscow,Moskva
Orlovskaya oblast,R,914000,24700,Orel,Orlovskaya oblast
Ryazanskaya oblast,R,1325300,39600,Ryazan,Ryazanskaya oblast
Smolenskaya oblast,R,1172400,49800,Smolensk,Smolenskaya oblast
Tverskaya oblast,R,1650600,84100,Tver,Tverskaya oblast
Tulskaya oblast,R,1814500,25700,Tula,Tulskaya oblast
Yaroslavskaya oblast,R,1451400,36400,Yaroslavl,Yaroslavskaya oblast
Rep. of Mariy El,R,766300,23200,Yoshkar Ola,Rep. of Mariy El
Rep. of Mordovia,R,955800,26200,Saransk,Rep. of Mordovia
Chuvash Republic,R,1360800,18300,Cheboksary,Chuvash Republic
Kirovskaya oblast,R,1634500,120800,Kirov,Kirovskaya oblast
Nizhegorodskaya oblast,R,3726400,74800,Nizhniy Novgorod,Nizhegorodskaya oblast
Belgorodskaya oblast,R,1469100,27100,Belgorod,Belgorodskaya oblast
Voronezhskaya oblast,R,2503800,52400,Voronezh,Voronezhskaya oblast
Kurskaya oblast,R,1346900,29800,Kursk,Kurskaya oblast
Lipetskaya oblast,R,1250200,24100,Lipetsk,Lipetskaya oblast
Tambovskaya oblast,R,1310600,34300,Tambov,Tambovskaya oblast
Rep. of Kalmykiya,R,318500,76100,Elista,Rep. of Kalmykiya
Rep. of Tatarstan,R,3760500,68000,Kazan,Rep. of Tatarstan
Astrakhanskaya oblast,R,1028900,44100,Astrakhan,Astrakhanskaya oblast
Volgogradskaya oblast,R,2703700,113900,Volgograd,Volgogradskaya oblast
Penzenskaya oblast,R,1562300,43200,Penza,Penzenskaya oblast
Samarskaya oblast,R,3311500,53600,Samara,Samarskaya oblast
Ontario,CDN,10753573,1068582,Toronto,Ontario
Saratovskaya oblast,R,2739500,100200,Saratov,Saratovskaya oblast
Ulyanovskaya oblast,R,1495200,37300,Simbirsk,Ulyanovskaya oblast
Rostovskaya oblast,R,4426400,100800,Rostov no Donu,Rostovskaya oblast
Rep. of Bashkortostan,R,4096600,143600,Ufa,Rep. of Bashkortostan
Udmurt Republic,R,1639100,42100,Izhevsk,Udmurt Republic
Orenburgskaya oblast,R,2228600,124000,Orenburg,Orenburgskaya oblast
Permskaya oblast,R,3009400,160600,Perm,Permskaya oblast
Rep. of Adygeya,R,450500,7600,Maykop,Rep. of Adygeya
Rep. of Dagestan,R,2097500,50300,Makhachkala,Rep. of Dagestan
Rep. of Ingushetiya,R,299700,3750,Nazran,Rep. of Ingushetiya
Kabardino Balkar Rep.,R,789900,12500,Nalchik,Kabardino Balkar Rep.
Karachayevo Cherkessk Rep.,R,436300,14100,Cherkessk,Karachayevo Cherkessk Rep.
Rep. of North Ossetiya,R,662600,8000,Vladikavkaz,Rep. of North Ossetiya
Chechen Rep.,R,865100,12300,Grozny,Chechen Rep.
Krasnodarsky kray,R,5043900,76000,Krasnodar,Krasnodarsky kray
Stavropolsky kray,R,2667000,66500,Stavropol,Stavropolsky kray
Kurganskaya oblast,R,1112200,71000,Kurgan,Kurganskaya oblast
Sverdlovskaya oblast,R,4686300,194300,Yekaterinburg,Sverdlovskaya oblast
Chelyabinskaya oblast,R,3688700,87900,Chelyabinsk,Chelyabinskaya oblast
Rep. of Altay,R,201600,92600,Gorno Altaysk,Rep. of Altay
Altayskiy kray,R,2690100,169100,Barnaul,Altayskiy kray
Kemerovskaya oblast,R,3063500,95500,Kemerovo,Kemerovskaya oblast
Novosibirskaya oblast,R,2748600,178200,Novosibirsk,Novosibirskaya oblast
Omskaya oblast,R,2176400,139700,Omsk,Omskaya oblast
Tomskaya oblast,R,1077600,316900,Tomsk,Tomskaya oblast
Tyumenskaya oblast,R,3169900,1435200,Tyumen,Tyumenskaya oblast
Rep. of Buryatiya,R,1052500,351300,Ulan Ude,Rep. of Buryatiya
Rep. of Tyva,R,309700,170500,Kyzyl,Rep. of Tyva
Rep. of Khakassiya,R,585800,61900,Abakan,Rep. of Khakassiya
Krasnoyarskiy kray,R,3105900,2339700,Krasnoyarsk,Krasnoyarskiy kray
Irkutskaya oblast,R,2795200,767900,Irkutsk,Irkutskaya oblast
Chitinskaya oblast,R,1295000,431500,Chita,Chitinskaya oblast
Rep. of Sakha,R,1022800,3103200,Yakutsk,Rep. of Sakha
Yevreyskaya avt. oblast,R,209900,36000,Birobidzhan,Yevreyskaya avt. oblast
Chukotsky ao,R,90500,737700,Anadyr,Chukotsky ao
Primorsky kray,R,2255400,165900,Vladivostok,Primorsky kray
Khabarovskiy kray,R,1571200,752600,Khabarovsk,Khabarovskiy kray
Amurskaya oblast,R,1037800,363700,Blagoveshchensk,Amurskaya oblast
Kamchatskaya oblast,R,411100,472300,Petropavlovsk Kamchatsky,Kamchatskaya oblast
Magadanskaya oblast,R,258200,461400,Magadan,Magadanskaya oblast
Sakhalinskaya oblast,R,647800,87100,Yuzhno Sakhalinsk,Sakhalinskaya oblast
Leninobod,TAD,1635900,26100,Khujand,Leninobod
Kulob,TAD,668100,12000,Kulob,Kulob
Khatlon,TAD,1113500,12600,Qurghonteppa,Khatlon
Badakhshoni Kuni,TAD,167100,63700,Khorugh,Badakhshoni Kuni
Dushanbe (munic.),TAD,591900,300,Dushanbe,Dushanbe (munic.)
Adiyaman,TR,513131,7614,Adiyaman,Adiyaman
Antalya,TR,1132211,20591,Antalya,Antalya
Aydin,TR,824816,8007,Aydin,Aydin
Balikesir,TR,973314,14292,Balikesir,Balikesir
Batman,TR,344669,4694,Batman,Batman
Bursa,TR,1603137,11043,Bursa,Bursa
Denizli,TR,750882,11868,Denizli,Denizli
Diyarbakir,TR,1094996,15355,Diyarbakir,Diyarbakir
Edirne,TR,404599,6276,Edirne,Edirne
Elazig,TR,498225,9153,Elazig,Elazig
Erzurum,TR,848201,25066,Erzurum,Erzurum
Eskisehir,TR,641057,13652,Eskisehir,Eskisehir
Gaziantep,TR,1140594,7642,Gaziantep,Gaziantep
Hatay,TR,1109754,5403,Antakya,Hatay
Icel,TR,1266995,15853,Mersin,Icel
Isparta,TR,434771,8933,Isparta,Isparta
Karamanmaras,TR,892952,14327,Karaman Maras,Karamanmaras
Kayseri,TR,943484,16917,Kayseri,Kayseri
Kirikkale,TR,349396,4365,Kirikkale,Kirikkale
Kocaeli,TR,936163,3626,Izmit,Kocaeli
Konya,TR,1750303,38257,Konya,Konya
Kutahya,TR,578020,11875,Kutahya,Kutahya
Malatya,TR,702055,12313,Malatya,Malatya
Manisa,TR,1154418,13810,Manisa,Manisa
Ordu,TR,830105,6001,Ordu,Ordu
Samsun,TR,1158400,9579,Samsun,Samsun
Sanliurfa,TR,1001455,18584,Urfa,Sanliurfa
Sivas,TR,767481,28488,Sivas,Sivas
Trabzon,TR,795849,4685,Trabzon,Trabzon
Usak,TR,290283,5341,Usak,Usak
Van,TR,637433,19069,Van,Van
Zonguldak,TR,1073560,8629,Zonguldak,Zonguldak
Ahal,TM,416400,0,Ashgabat,Ahal
Balkan,TM,925500,233900,Nebitdag,Balkan
Dashhowuz,TM,738000,73600,Tashauz,Dashhowuz
Leban,TM,774700,93800,Charjew,Leban
Mary,TM,859500,86800,Mary,Mary
Andijon,UZB,1899000,4200,Andijon,Andijon
Bukhoro,UZB,1262000,39400,Bukhoro,Bukhoro
Farghona,UZB,2338000,7100,Farghona,Farghona
Jizzakh,UZB,831000,20500,Jizzakh,Jizzakh
Khorazm,UZB,1135000,6300,Urganch,Khorazm
Namangan,UZB,1652000,7900,Namangan,Namangan
Nawoiy,UZB,715000,110800,Nawoiy,Nawoiy
Qasqadare,UZB,1812000,28400,Qarshi,Qasqadare
Samarqand,UZB,2322000,16400,Samarqand,Samarqand
Sirdare,UZB,600000,5100,Guliston,Sirdare
Surkhondare,UZB,1437000,20800,Termiz,Surkhondare
Toshkent,UZB,4450000,15600,Tashkent,Toshkent
Qoraqalpoghiston,UZB,1343000,164900,Nukus,Qoraqalpoghiston
Alberta,CDN,2696826,661185,Edmonton,Alberta
British Columbia,CDN,3724500,948596,Victoria,British Columbia
Manitoba,CDN,1113898,650086,Winnipeg,Manitoba
New Brunswick,CDN,738133,73437,Fredericton,New Brunswick
Newfoundland,CDN,551792,404517,Saint Johns,Newfoundland
Northwest Territories,CDN,64402,3379683,Yellowknife,Northwest Territories
Nova Scotia,CDN,909282,55490,Halifax,Nova Scotia
Prince Edward Island,CDN,134557,5657,Charlottetown,Prince Edward Island
Quebec,CDN,7138795,1540680,Quebec,Quebec
Saskatchewan,CDN,990237,651900,Regina,Saskatchewan
Yukon Territory,CDN,30766,536324,Whitehorse,Yukon Territory
San Jose,CR,1163943,4960,San Jose,San Jose
Alajuela,CR,569984,9753,Alajuela,Alajuela
Cartago,CR,359765,3125,Cartago,Cartago
Heredia,CR,256726,2656,Heredia,Heredia
Guanacaste,CR,254530,10141,Liberia,Guanacaste
Punarenas,CR,357103,11277,Puntarenas,Punarenas
Limon,CR,237183,9189,Limon,Limon
Camaguey,C,723000,15990,Camaguey,Camaguey
Ciego de Avila,C,353000,6910,Ciego de Avila,Ciego de Avila
Cienfuegos,C,354000,4178,Cienfuegos,Cienfuegos
Ciudad de la Habana,C,2059000,727,Havana,Ciudad de la Habana
Granma,C,773000,8372,Bayamo,Granma
Guantanamo,C,484000,6186,Guantanamo,Guantanamo
Holguin,C,972000,9301,Holguin,Holguin
La Habana,C,630000,5731,Havana,Ciudad de la Habana
Las Tunas,C,478000,6589,Victoria de las Tunas,Las Tunas
Matanzas,C,596000,11978,Matanzas,Matanzas
Pinar del Rio,C,678000,10925,Pinar del Rio,Pinar del Rio
Sancti Spiritus,C,420000,6744,Sancti Spiritus,Sancti Spiritus
Santiago de Cuba,C,968000,6170,Santiago de Cuba,Santiago de Cuba
Villa Clara,C,796000,8662,Santa Clara,Villa Clara
Isla de la Juventud,C,71000,2396,Nueva Gerona,Isla de la Juventud
La Libertad,PE,1366125,25569,Trujillo,La Libertad
Atlantida,HCA,263700,4251,La Ceiba,Atlantida
Colon,PA,222600,7247,Colon,Colon
Comayagua,HCA,267000,5196,Comayagua,Comayagua
Copan,HCA,241400,3203,Santa Rosa de Copan,Copan
Cortes,HCA,732600,3954,San Pedro Sula,Cortes
Choluteca,HCA,326100,4211,Choluteca,Choluteca
El Paraiso,HCA,284100,7218,Yuscaran,El Paraiso
Francisco Morazan,HCA,908300,7946,Tegucigalpa,Francisco Morazan
Gracias a Dios,HCA,39000,16630,Puerto Lempira,Gracias a Dios
Intibuca,HCA,137800,3072,La Esperanza,Intibuca
Islas de la Bahia,HCA,24500,261,Roatan,Islas de la Bahia
Lempira,HCA,194600,4290,Gracias,Lempira
Olancho,HCA,318000,24351,Jutigalpa,Olancho
Santa Barbara,HCA,307500,5113,Santa Barbara,Santa Barbara
Valle,HCA,130900,1565,Nacaome,Valle
Aguascalientes,MEX,862720,5589,Aguascalientes,Aguascalientes
Baja California,MEX,2112140,70113,Mexicali,Baja California
Baja California Sur,MEX,375494,73677,La Paz,Baja California Sur
Campeche,MEX,642516,51833,Campeche,Campeche
Chiapas,MEX,3584786,73887,Tuxtla Gutierrez,Chiapas
Chihuahua,MEX,2793537,247087,Chihuahua,Chihuahua
Coahuila,MEX,2173775,151571,Saltillo,Coahuila
Colima,MEX,488028,5455,Colima,Colima
Guerrero,MEX,2916567,63749,Chilpancingo,Guerrero
Hidalgo,MEX,2112473,20987,Pachuca de Soto,Hidalgo
Jalisco,MEX,5991176,80137,Guadalajara,Jalisco
"Mexico, Estado de",MEX,11707964,21461,Toluca de Lerdo,"Mexico, Estado de"
Michoacan,MEX,3870604,59864,Morelia,Michoacan
Morelos,MEX,1442662,4941,Cuernavaca,Morelos
Nayarit,MEX,896702,27621,Tepic,Nayarit
Nuevo Leon,MEX,3550114,64555,Monterrey,Nuevo Leon
Oaxaca,MEX,3228895,95364,Oaxaca,Oaxaca
Puebla,MEX,4624365,33919,Puebla,Puebla
Queretaro,MEX,1250476,11769,Queretaro,Queretaro
Quintana Roo,MEX,703536,50350,Chetumal,Quintana Roo
San Luis Potosi,MEX,2200763,62848,San Luis Potosi,San Luis Potosi
Sinaloa,MEX,2425675,58092,Culiacan,Sinaloa
Sonora,MEX,2085536,184934,Hermosillo,Sonora
Tabasco,MEX,1748769,24661,Villahermosa,Tabasco
Tamaulipas,MEX,2527328,79829,Ciudad Victoria,Tamaulipas
Veracruz,MEX,6737324,72815,Jalapa,Veracruz
Yucatan,MEX,1556622,39340,Merida,Yucatan
Zacatecas,MEX,1336496,75040,Zacatecas,Zacatecas
Distrito Federal,MEX,8489007,1499,Mexico City,Distrito Federal
Bocas del Toro,PA,88400,8745,Bocas del Toro,Bocas del Toro
Cocle,PA,177100,4927,Penonome,Cocle
Comarca de San Blas,PA,0,2357,El Porvenir,Comarca de San Blas
Chiriqui,PA,396800,8653,David,Chiriqui
Darien,PA,45000,16671,La Palma,Darien
Herrera,PA,108700,2341,Chitre,Herrera
Los Santos,PA,82800,3806,Las Tablas,Los Santos
Veraguas,PA,224700,11239,Santiago,Veraguas
Alabama,USA,4319154,133915,Montgomery,Alabama
Alaska,USA,609311,1530694,Juneau,Alaska
Arizona,USA,4554966,295259,Phoenix,Arizona
Arkansas,USA,2522819,137754,Little Rock,Arkansas
California,USA,32268301,411047,Sacramento,California
Colorado,USA,3892644,269595,Denver,Colorado
Connecticut,USA,3269858,12997,Hartford,Connecticut
Delaware,USA,731581,5297,Dover,Delaware
Florida,USA,14653945,151939,Tallahassee,Florida
Hawaii,USA,1183723,16760,Honolulu,Hawaii
Idaho,USA,1186602,216430,Boise,Idaho
Illinois,USA,11895849,145933,Springfield,Illinois
Indiana,USA,5864108,93719,Indianapolis,Indiana
Iowa,USA,2852423,145752,Des Moines,Iowa
Kansas,USA,2594840,213097,Topeka,Kansas
Kentucky,USA,3908124,104661,Frankfort,Kentucky
Louisiana,USA,4351769,123677,Baton Rouge,Louisiana
Maine,USA,1242051,86156,Augusta,Maine
Maryland,USA,5094289,27091,Annapolis,Maryland
Massachusetts,USA,6117520,21455,Boston,Massachusetts
Michigan,USA,9773892,151584,Lansing,Michigan
Minnesota,USA,4685549,218600,St. Paul,Minnesota
Mississippi,USA,2730501,123514,Jackson,Mississippi
Missouri,USA,5402058,180514,Jefferson City,Missouri
Montana,USA,878810,380848,Helena,Montana
Nebraska,USA,1656870,200349,Lincoln,Nebraska
Nevada,USA,1676809,286352,Carson City,Nevada
New Hampshire,USA,1172709,24033,Concord,New Hampshire
New Jersey,USA,8052849,20168,Trenton,New Jersey
New Mexico,USA,1729751,314925,Santa Fe,New Mexico
New York,USA,18137226,127189,Albany,New York
North Carolina,USA,7425183,136412,Raleigh,North Carolina
North Dakota,USA,640883,183117,Bismarck,North Dakota
Ohio,USA,11186331,107044,Columbus,Ohio
Oklahoma,USA,3317091,181185,Oklahoma City,Oklahoma
Oregon,USA,3243487,251418,Salem,Oregon
Pennsylvania,USA,12019661,117347,Harrisburg,Pennsylvania
Rhode Island,USA,987429,3139,Providence,Rhode Island
South Carolina,USA,3760181,80582,Columbia,South Carolina
South Dakota,USA,737973,199730,Pierre,South Dakota
Tennessee,USA,5368198,109153,Nashville,Tennessee
Texas,USA,19439337,691027,Austin,Texas
Utah,USA,2059148,219888,Salt Lake City,Utah
Vermont,USA,588978,24900,Montpelier,Vermont
Virginia,USA,6733996,105586,Richmond,Virginia
Washington,USA,5610362,176479,Olympia,Washington
West Virginia,USA,1815787,62761,Charleston,West Virginia
Wisconsin,USA,5169677,145436,Madison,Wisconsin
Wyoming,USA,479743,253324,Cheyenne,Wyoming
Distr. Columbia,USA,528964,179,Washington,Distr. Columbia
New South Wales,AUS,6115100,801428,Sydney,New South Wales
Northern Territory,AUS,173878,1346200,Darwin,Northern Territory
Queensland,AUS,3277000,1727000,Brisbane,Queensland
South Australia,AUS,1474000,984377,Adelaide,South Australia
Tasmania,AUS,473022,67800,Hobart,Tasmania
Western Australia,AUS,1731700,2525500,Perth,Western Australia
Australia Capital Territory,AUS,304100,2452,Canberra,Australia Capital Territory
Kirimati,AUS,1770,135,Flying Fish Cove,Kirimati
Catamarca,RA,264324,102602,San Fernando del Valle de Catamarca,Catamarca
Chaco,RA,839677,99633,Resistencia,Chaco
Chubut,RA,357189,224686,Rawson,Chubut
Corrientes,RA,795594,88199,Corrientes,Corrientes
Entre Rios,RA,1020257,78781,Parana,Entre Rios
Formosa,RA,398413,72066,Formosa,Formosa
Jujuy,RA,512329,53219,San Salvador de Jujuy,Jujuy
La Pampa,RA,259996,143440,Santa Rosa,La Pampa
La Rioja,RA,220729,89680,La Rioja,La Rioja
Mendoza,RA,1412481,148827,Mendoza,Mendoza
Misiones,RA,788915,29801,Posadas,Misiones
Neuquen,RA,388833,94078,Neuquen,Neuquen
Rio Negro,RA,506772,203013,Viedma,Rio Negro
Salta,RA,866153,155488,Salta,Salta
San Juan,RA,528715,89651,San Juan,San Juan
San Luis,RA,286458,76748,San Luis,San Luis
Santa Cruz,RA,159839,243943,Rio Gallegos,Santa Cruz
Santa Fe,RA,2798422,133007,Santa Fe,Santa Fe
Santiago de Estero,RA,671988,136351,Santiago del Estero,Santiago de Estero
Tierra del Fuego,RA,69369,21571,Ushuaia,Tierra del Fuego
Tucuman,RA,1142105,22524,San Miguel de Tucuman,Tucuman
Acre,BR,483483,153149,Rio Branco,Acre
Alagoas,BR,2637843,27933,Maceio,Alagoas
Amapa,BR,373994,143453,Macapa,Amapa
Amazonas,CO,39937,109665,Leticia,Amazonas
Bahia,BR,12531895,567295,Salvador,Bahia
Ceara,BR,6803567,146348,Fortaleza,Ceara
Espirito Santo,BR,2786126,46184,Vitoria,Espirito Santo
Goias,BR,4501538,341289,Goiania,Goias
Maranhao,BR,5218442,333365,Sao Luis,Maranhao
Mato Grosso,BR,2227983,906806,Cuiaba,Mato Grosso
Mato Grosso do Sul,BR,1922258,358158,Campo Grande,Mato Grosso do Sul
Minas Gerais,BR,16660691,588383,Belo Horizonte,Minas Gerais
Para,BR,5522783,1253164,Belem,Para
Paraiba,BR,3305562,56584,Joao Pessoa,Paraiba
Parana,BR,8985981,199709,Curitiba,Parana
Pernambuco,BR,7404559,98937,Recife,Pernambuco
Piaui,BR,2676098,252378,Teresina,Piaui
Rio de Janeiro,BR,13316455,43909,Rio de Janeiro,Rio de Janeiro
Rio Grande do Norte,BR,2556939,53306,Natal,Rio Grande do Norte
Rio Grande do Sul,BR,9623003,282062,Porto Alegre,Rio Grande do Sul
Rondonia,BR,1221290,238512,Porto Velho,Rondonia
Roraima,BR,247724,225116,Boa Vista,Roraima
Santa Catarina,BR,4865090,95442,Florianopolis,Santa Catarina
Sergipe,BR,1617368,22050,Aracaju,Sergipe
Tocantins,BR,1049742,278420,Palmas,Tocantins
Antioquia,CO,4067207,63612,Medellin,Antioquia
Atlantico,CO,1478213,3388,Barranquilla,Atlantico
Bolivar,CO,1288985,25978,Cartagena,Bolivar
Boyaca,CO,1209739,23189,Tunja,Boyaca
Caldas,CO,883024,7888,Manizales,Caldas
Caqueta,CO,264507,88965,Florencia,Caqueta
Casanare,CO,147472,44640,Yopal,Casanare
Cauca,CO,857751,29308,Popayan,Cauca
Cesar,CO,699428,22905,Valledupar,Cesar
Choco,CO,313567,46530,Quibdo,Choco
Cundinamarca,CO,1512928,22623,Bogota,"Santa Fe de Bogota, DC"
Guainia,CO,12345,72238,Puerto Inirida,Guainia
"Guajira, La",CO,299995,20848,Riohacha,"Guajira, La"
Guaviare,CO,47073,42327,San Jose del Guaviare,Guaviare
Huila,CO,693712,19890,Neiva,Huila
Magdalena,CO,890934,23188,Santa Marta,Magdalena
Meta,CO,474046,85635,Villavicencio,Meta
Narino,CO,1085173,33268,Pasto,Narino
Norte de Santander,CO,913491,21658,Cucuta,Norte de Santander
Putumayo,CO,174219,24885,Mocoa,Putumayo
Quindio,CO,392208,1845,Armenia,Quindio
Risaralda,CO,652872,4140,Pereira,Risaralda
San Andres y Providencia,CO,35818,44,San Andres,San Andres y Providencia
"Santa Fe de Bogota, DC",CO,4236490,1587,Bogota,"Santa Fe de Bogota, DC"
Santander del Sur,CO,1511392,30537,Bucaramanga,Santander del Sur
Tolima,CO,1142220,23562,Ibague,Tolima
Valle de Cauca,CO,3027247,22140,Cali,Valle de Cauca
Vaupes,CO,26178,65268,Mitu,Vaupes
Vichada,CO,18702,100242,Puerto Carreno,Vichada
Ancash,PE,1024398,35825,Huaraz,Ancash
Apurimac,PE,409630,20895,Abancay,Apurimac
Arequipa,PE,999851,63345,Arequipa,Arequipa
Ayacucho,PE,517397,43814,Ayacucho,Ayacucho
Cajamarca,PE,1349129,33247,Cajamarca,Cajamarca
Cuzco,PE,1107473,71891,Cuzco,Cuzco
Huanuco,PE,722669,36938,Huanuco,Huanuco
Ica,PE,608609,21327,Ica,Ica
Junin,PE,1132448,44409,Huancayo,Junin
Lambayeque,PE,1009655,14231,Chiclayo,Lambayeque
Loreto,PE,789235,368851,Iquitos,Loreto
Madre de Dios,PE,74306,85182,Puerto Maldonado,Madre de Dios
Pasco,PE,243366,25319,Cerro de Pasco,Pasco
Piura,PE,1468337,35892,Piura,Piura
Puno,PE,1144151,71999,Puno,Puno
San Martin,PE,627781,51253,Moyobamba,San Martin
Tacna,PE,245843,16075,Tacna,Tacna
Ucayali,PE,364596,102410,Pucallpa,Ucayali
Anzoategui,YV,1034311,43300,Barcelona,Anzoategui
Apure,YV,382572,76500,San Fernando,Apure
Aragua,YV,1344099,7014,Maracay,Aragua
Barinas,YV,519197,35200,Barinas,Barinas
Carabobo,YV,1823767,4650,Valencia,Carabobo
Cojedes,YV,227741,14800,San Carlos,Cojedes
Delta Amacuro,YV,114390,40200,Tucupita,Delta Amacuro
Falcon,YV,699232,24800,Coro,Falcon
Guarico,YV,583221,64986,San Juan,Guarico
Lara,YV,1430968,19800,Barquisimeto,Lara
Miranda,YV,2303302,7950,Los Teques,Miranda
Monagas,YV,555705,28900,Maturin,Monagas
Nueva Esparta,YV,330307,1150,La Ascuncion,Nueva Esparta
Portuguesa,YV,720865,15200,Guanare,Portuguesa
Tachira,YV,946949,11100,San Cristobal,Tachira
Yaracuy,YV,466152,7100,San Felipe,Yaracuy
Zulia,YV,2820250,63100,Maracaibo,Zulia
Cuanza Norte,ANG,378000,24110,Ndalatando,Cuanza Norte
Cuanza Sul,ANG,651000,55660,Sumbe,Cuanza Sul
Lunda Norte,ANG,292000,102783,Lucapa,Lunda Norte
Lunda Sul,ANG,155000,56985,Saurimo,Lunda Sul
Moxico,ANG,316000,223023,Luena,Moxico
Cuando Cubango,ANG,130000,199049,Menongue,Cuando Cubango
Bengo,ANG,166000,31371,Caxito,Bengo
Cunene,ANG,232000,88342,Ngiva,Cunene
Adamaoua,CAM,495200,63691,Ngaoundere,Adamaoua
Est,CAM,517200,109011,Bertoua,Est
Nord extreme,CAM,1855700,34246,Maroua,Nord extreme
Cote,CAM,1354800,20239,Douala,Cote
Nord,CAM,832200,65576,Garoua,Nord
Nordoueste,CAM,1237300,17810,Bamenda,Nordoueste
Ouest,CAM,1339800,13872,Bafoussam,Ouest
Sud,CAM,373800,47110,Ebolowa,Sud
Sudoueste,CAM,838000,24471,Buea,Sudoueste
El Bahr el Ahmar,ET,108000,203685,Hurghada,El Bahr el Ahmar
Matruh,ET,182000,212112,Marsa Matruh,Matruh
Sina al Janubiyah,ET,33000,33140,El Tur,Sina al Janubiyah
Sina ash Shamaliyah,ET,196000,27574,El Arish,Sina ash Shamaliyah
El Wadi el Jadid,ET,126000,376505,El Kharga,El Wadi el Jadid
El Buhayra,ET,3602000,10130,Damanhur,El Buhayra
El Daqahliya,ET,3828000,3471,El Mansura,El Daqahliya
Dumyat,ET,808000,589,Dumyat,Dumyat
El Gharbiya,ET,3113000,1942,Tanta,El Gharbiya
Ismailiya,ET,623000,1442,Ismailiya,Ismailiya
Kafr el Sheikh,ET,1968000,3437,Kafr el Sheikh,Kafr el Sheikh
El Minufiya,ET,2449000,1532,Shibin el Kom,El Minufiya
El Qalubiya,ET,2868000,1001,Benha,El Qalubiya
Sharqiya,ET,3766000,4180,Zagazig,Sharqiya
Aswan,ET,883000,679,Aswan,Aswan
Asyut,ET,2456000,1553,Asyut,Asyut
Beni Suef,ET,1586000,1322,Beni Suef,Beni Suef
El Faiyum,ET,1720000,1827,El Faiyum,El Faiyum
El Giza,ET,4265000,85153,El Giza,El Giza
El Minya,ET,2916000,2262,El Minya,El Minya
Qena,ET,2493000,1851,Qena,Qena
Sohag,ET,2689000,1547,Sohag,Sohag
Bur Said (munic.),ET,461000,72,Bur Said,Bur Said (munic.)
El Iskandariya (munic.),ET,3170000,2679,El Iskandariya,El Iskandariya (munic.)
El Qahira (munic.),ET,6452000,214,El Qahira,El Qahira (munic.)
El Suweiz (munic.),ET,392000,17840,El Suweiz,El Suweiz (munic.)
Coast,EAK,1880000,83603,Mombasa,Coast
Eastern,Z,826100,69106,Chipata,Eastern
North Eastern,EAK,372000,126090,Garissa,North Eastern
Nyanza,EAK,3558000,16162,Kisumu,Nyanza
Rift Valley,EAK,4894000,173868,Nakuru,Rift Valley
Western,Z,575500,126386,Mongu,Western
Antsiranana,RM,689800,43046,Antsiranana,Antsiranana
Antananarivo,RM,3195800,58283,Antananarivo,Antananarivo
Fianarantsoa,RM,2209700,102373,Fianarantsoa,Fianarantsoa
Mahajanga,RM,1075300,150023,Majunga,Mahajanga
Toamasina,RM,1444700,71911,Tamatave,Toamasina
Toliary,RM,1396700,161405,Toliary,Toliary
Cabo Delgado,MOC,1202200,82625,Pemba,Cabo Delgado
Gaza,MOC,1401500,75709,Xai Xai,Gaza
Manica,MOC,609500,61661,Chimoio,Manica
Maputo,MOC,840800,25756,Maputo,Maputo (munic.)
Nampula,MOC,2841400,81606,Nampula,Nampula
Niassa,MOC,686700,129055,Lichinga,Niassa
Sofala,MOC,1427500,68018,Beira,Sofala
Tete,MOC,734600,100724,Tete,Tete
Zambezia,MOC,2619300,105008,Quelimane,Zambezia
Maputo (munic.),MOC,931600,602,Maputo,Maputo (munic.)
Kaolack,SN,816400,16010,Kaolack,Kaolack
Saint Louis,SN,680200,44127,Saint Louis,Saint Louis
Thies,SN,948100,6601,Thies,Thies
Ziguinchor,SN,394700,7339,Ziguinchor,Ziguinchor
Aali an Nil,SUD,1599605,238792,Malakal,Aali an Nil
Bahr al Ghazal,SUD,2265510,200894,Waw,Bahr al Ghazal
Darfur,SUD,3093699,508684,al Fasher,Darfur
al Istiwaiyah,SUD,1406181,197969,Juba,al Istiwaiyah
al Khartum,SUD,1802299,28165,Khartoum,al Khartum
Kurdufan,SUD,3093294,380255,al Ubayyid,Kurdufan
ash Shamaliyah,SUD,1083024,476040,ad Damir,ash Shamaliyah
ash Sharqiyah,SUD,2208209,334074,Kassala,ash Sharqiyah
al Wusta,SUD,4012543,139017,Wad Madani,al Wusta
Dodoma,EAT,1237800,41311,Dodoma,Dodoma
Arusha,EAT,1351700,82306,Arusha,Arusha
Kilimanjaro,EAT,1108700,13309,Moshi,Kilimanjaro
Tanga,EAT,1283600,26808,Tanga,Tanga
Morogoro,EAT,1222700,70799,Morogoro,Morogoro
Pwani,EAT,638000,32407,Dar es Salaam,Daressalam
Daressalam,EAT,1360900,1393,Dar es Salaam,Daressalam
Mtwara,EAT,889500,16707,Mtwara Mikandani,Mtwara
Ruvuma,EAT,783300,63498,Songea,Ruvuma
Mbeya,EAT,1476200,60350,Mbeya,Mbeya
Rukwa,EAT,684000,68635,Sumbawanga,Rukwa
Kigoma,EAT,854800,37037,Kigoma Ujiji,Kigoma
Shinyanga,EAT,1772500,50781,Shinyanga,Shinyanga
Kagera,EAT,1326200,28388,Bukoba,Kagera
Mwanza,EAT,1878300,19592,Mwanza,Mwanza
Mara,EAT,970900,19566,Musoma,Mara
Kaskazini Ujunga,EAT,97000,470,Mkokotoni,Kaskazini Ujunga
Kusini Ujunga,EAT,70200,854,Koani,Kusini Ujunga
Mjini Magharibi,EAT,208300,230,Zanzibar,Mjini Magharibi
Kaskazini Pemba,EAT,137400,574,Wete,Kaskazini Pemba
Kusini Pemba,EAT,127600,332,Chake Cahke,Kusini Pemba
Bas Zaire,ZRE,2158595,53920,Matadi,Bas Zaire
Equateur,ZRE,3960187,403293,Mbandaka,Equateur
Haut Zaire,ZRE,5119750,503239,Kisangani,Haut Zaire
Kasai Occidental,ZRE,3465756,156967,Kananga,Kasai Occidental
Kasai Oriental,ZRE,2859220,168216,Mbuji Mayi,Kasai Oriental
Kivu,ZRE,5232442,256662,Bukavu,Kivu
Shaba,ZRE,4452618,496965,Lubumbashi,Shaba
Kinshasa,ZRE,2778281,9965,Kinshasa,Kinshasa
Copperbelt,Z,1866400,31328,Ndola,Copperbelt
Luapula,Z,526300,50567,Mansa,Luapula
Lusaka,Z,1151300,21896,Lusaka,Lusaka
Northern,Z,832700,147826,Kasama,Northern
Northwestern,Z,396100,125827,Solwezi,Northwestern
Southern,Z,906900,85283,Livingstone,Southern
\.

---Filling table religion :

COPY religion FROM STDIN csv;
AL,Muslim,70
AL,Roman Catholic,10
AL,Albanian Orthodox,20
GR,Muslim,1
GR,Greek Orthodox,98
MK,Muslim,30
MK,Eastern Orthodox,67
YU,Muslim,19
YU,Roman Catholic,4
YU,Protestant,1
YU,Orthodox,65
AND,Roman Catholic,100
F,Muslim,1
F,Jewish,1
F,Roman Catholic,90
F,Protestant,2
E,Roman Catholic,99
A,Roman Catholic,85
A,Protestant,6
CZ,Roman Catholic,39
CZ,Protestant,5
CZ,Orthodox,3
D,Roman Catholic,37
D,Protestant,45
H,Roman Catholic,68
H,Lutheran,5
H,Calvinist,20
I,Roman Catholic,98
FL,Roman Catholic,87
FL,Protestant,8
SK,Roman Catholic,60
SK,Protestant,8
SK,Orthodox,4
SLO,Muslim,1
SLO,Roman Catholic,96
CH,Roman Catholic,48
CH,Protestant,44
BY,Eastern Orthodox,60
PL,Roman Catholic,95
B,Roman Catholic,75
B,Protestant,25
L,Roman Catholic,97
L,Protestant Jewish,3
NL,Muslim,3
NL,Roman Catholic,34
NL,Protestant,25
BIH,Muslim,40
BIH,Protestant,4
BIH,Orthodox,31
BIH,Catholic,15
HR,Protestant,0
HR,Orthodox,11
HR,Catholic,77
HR,Slavic Muslim,1
BG,Muslim,13
BG,Jewish,1
BG,Roman Catholic,1
BG,Protestant,
BG,Gregorian-Armenian,
BG,Bulgarian Orthodox,85
BG,Uniate Catholic,0
RO,Roman Catholic,6
RO,Protestant,6
RO,Romanian Orthodox,70
TR,Muslim,100
DK,Evangelical Lutheran,91
DK,Protestant Roman Catholic,2
SF,Greek Orthodox,1
SF,Evangelical Lutheran,89
N,Evangelical Lutheran,88
N,Protestant Roman Catholic,4
S,Roman Catholic,2
S,Evangelical Lutheran,94
S,Pentecostal,1
MC,Roman Catholic,95
V,Roman Catholic,100
IS,Evangelical Lutheran,96
IS,Protestant Roman Catholic,3
IRL,Roman Catholic,93
IRL,Anglican,3
RSM,Roman Catholic,100
M,Roman Catholic,98
MD,Jewish,2
MD,Eastern Orthodox,99
MD,Baptist,
P,Roman Catholic,97
P,Protestant,1
AFG,Sunni Muslim,84
AFG,Shia Muslim,15
TJ,Muslim,2
TJ,Christian,1
TJ,Buddhism,
TJ,Daoism,
IR,Jewish,
IR,Sunni Muslim,10
IR,Shia Muslim,89
IR,Christian,
IR,Zoroastrian,
IR,Bahai,1
PK,Muslim,97
TAD,Sunni Muslim,80
TAD,Shia Muslim,5
TM,Muslim,87
TM,Eastern Orthodox,11
UZB,Muslim,88
UZB,Eastern Orthodox,9
ARM,Armenian Orthodox,94
GE,Muslim,11
GE,Armenian Apostolic,8
GE,Christian Orthodox,75
AZ,Muslim,93
AZ,Armenian Orthodox,2
AZ,Russian Orthodox,3
BRN,Sunni Muslim,25
BRN,Shia Muslim,75
BD,Muslim,83
BD,Christian,
BD,Buddhist,
BD,Hindu,16
MYA,Muslim,4
MYA,Christian,4
MYA,Buddhist,89
IND,Muslim,14
IND,Christian,2
IND,Buddhist,1
IND,Hindu,80
IND,Sikh,2
IND,Jains,1
BHT,Lamaistic Buddhism,75
BHT,Indian- Nepalese-influenced Hinduism,25
BRU,Muslim,63
BRU,Christian,8
BRU,Buddhism,14
LAO,Buddhist,60
THA,Muslim,4
THA,Buddhism,95
THA,Christianity,1
THA,Hinduism,0
K,Theravada Buddhism,95
KAZ,Muslim,47
KAZ,Protestant,2
KAZ,Russian Orthodox,44
MNG,Muslim,4
NEP,Muslim,3
NEP,Buddhist,5
NEP,Hindu,90
CY,Muslim,18
CY,Greek Orthodox,78
CY,Armenian Apostolic,
CY,Maronite,
IL,Christian,2
IL,Islam,14
IL,Druze,2
IL,Judaism,82
ET,Muslim,94
ET,Coptic Christian,6
RI,Muslim,87
RI,Roman Catholic,3
RI,Protestant,6
RI,Buddhist,1
RI,Hindu,2
PNG,Roman Catholic,22
PNG,Protestant,10
PNG,Lutheran,16
PNG,Anglican,5
PNG,Seventh-Day Adventist,1
PNG,Presbyterian/Methodist/London Missionary Society,8
PNG,Evangelical Alliance,4
IRQ,Muslim,97
IRQ,Christian,3
JOR,Sunni Muslim,92
JOR,Christian,8
KWT,Muslim,85
SA,Muslim,100
SYR,Muslim,16
SYR,Jewish,
SYR,Sunni Muslim,74
SYR,Christian,10
SYR,Druze,
SYR,Alawite,
RL,Christian,30
RL,Islam,70
J,Shinto Buddhist,84
ROK,Buddhism,47
ROK,Christianity,49
ROK,Confucianism,3
ROK,Chondogyo,0
MV,Sunni Muslim,100
OM,Ibadhi Muslim,75
UAE,Muslim,96
RP,Muslim,5
RP,Roman Catholic,83
RP,Protestant,9
RP,Buddhist,3
Q,Muslim,95
CL,Muslim,8
CL,Christian,8
CL,Buddhist,69
CL,Hindu,15
RC,Christian,5
RC,Buddhist,
RC,Confucian,
RC,Taoist,93
BS,Roman Catholic,19
BS,Protestant,12
BS,Anglican,20
BS,Baptist,32
BS,Methodist,6
BS,Church God,6
BDS,Roman Catholic,4
BDS,Protestant,67
BZ,Roman Catholic,62
BZ,Protestant,30
MEX,Roman Catholic,89
MEX,Protestant,6
CDN,Roman Catholic,45
CDN,Anglican,8
CDN,United Church,12
USA,Jewish,2
USA,Roman Catholic,28
USA,Protestant,56
CR,Roman Catholic,95
NIC,Roman Catholic,95
NIC,Protestant,5
PA,Roman Catholic,85
PA,Protestant,15
C,Roman Catholic,85
WD,Roman Catholic,77
WD,Protestant,15
DOM,Roman Catholic,95
RH,Roman Catholic,80
RH,Protestant,16
ES,Roman Catholic,75
HCA,Roman Catholic,97
JA,Roman Catholic,5
JA,Protestant,56
CO,Roman Catholic,95
WL,Roman Catholic,90
WL,Protestant,7
WL,Anglican,3
TT,Muslim,6
TT,Roman Catholic,32
TT,Protestant,14
TT,Anglican,14
TT,Hindu,24
AUS,Roman Catholic,26
AUS,Anglican,26
AUS,Christian,24
FJI,Muslim,8
FJI,Christian,52
FJI,Hindu,38
KIR,Roman Catholic,53
KIR,Protestant,41
KIR,Bahai,
KIR,Seventh-Day Adventist,
KIR,Church God,
KIR,Mormon,6
MH,Christian,100
FSM,Roman Catholic,50
FSM,Protestant,47
NAU,Christian,100
NCA,Roman Catholic,60
NCA,Protestant,30
NZ,Roman Catholic,15
NZ,Protestant,3
NZ,Anglican,24
NZ,Baptist,2
NZ,Methodist,5
NZ,Presbyterian,18
SLB,Roman Catholic,19
SLB,Protestant,5
SLB,Anglican,34
SLB,Baptist,17
SLB,Seventh-Day Adventist,10
SLB,United,11
TO,Christian,100
TUV,Bahai,1
TUV,Seventh-Day Adventist,1
TUV,Church Tuvalu,97
VU,Catholic,15
VU,Anglican,15
VU,Seventh-Day Adventist,6
VU,Presbyterian,37
VU,Church Christ,4
WS,Christian,100
RA,Jewish,2
RA,Roman Catholic,90
RA,Protestant,2
BOL,Roman Catholic,95
BR,Roman Catholic,70
RCH,Jewish,
RCH,Roman Catholic,89
RCH,Protestant,11
PY,Roman Catholic,90
ROU,Jewish,2
ROU,Roman Catholic,66
ROU,Protestant,2
PE,Roman Catholic,100
FGU,Roman Catholic,100
GUY,Muslim,9
GUY,Christian,57
GUY,Hindu,33
SME,Muslim,20
SME,Roman Catholic,23
SME,Protestant,25
SME,Hindu,27
YV,Roman Catholic,96
YV,Protestant,2
EC,Roman Catholic,95
DZ,Sunni Muslim,99
DZ,Christian Jewish,1
LAR,Sunni Muslim,97
RMM,Muslim,90
RMM,Christian,1
RIM,Muslim,100
MA,Muslim,99
MA,Jewish,0
MA,Christian,1
RN,Muslim,80
TN,Muslim,98
TN,Jewish,1
TN,Christian,1
WSA,Muslim,100
ANG,Roman Catholic,38
ANG,Protestant,15
RCB,Muslim,2
RCB,Christian,50
NAM,Lutheran,50
ZRE,Muslim,10
ZRE,Roman Catholic,50
ZRE,Protestant,20
ZRE,Kimbanguist,10
Z,Christian,50
Z,Muslim Hindu,24
BEN,Muslim,15
BEN,Christian,15
BF,Muslim,50
BF,Christian,10
WAN,Muslim,50
WAN,Christian,40
RT,Muslim,10
RT,Christian,20
RB,Christian,50
RSA,Muslim,2
ZW,Muslim,1
ZW,Christian,25
CI,Muslim,60
CI,Christian,12
GH,Muslim,30
GH,Christian,24
BI,Muslim,1
BI,Christian,67
RWA,Muslim,1
RWA,Roman Catholic,65
RWA,Protestant,9
CAM,Muslim,16
CAM,Christian,33
RCA,Muslim,15
RCA,Roman Catholic,25
RCA,Protestant,25
TCH,Muslim,50
TCH,Christian,25
GQ,Christian Roman Catholic,100
G,Muslim,1
G,Christian,55
CV,Roman Catholicism,100
SUD,Sunni Muslim,70
SUD,Christian,5
COM,Roman Catholic,14
COM,Sunni Muslim,86
RG,Muslim,85
RG,Christian,8
LB,Muslim,20
LB,Christian,10
DJI,Muslim,94
DJI,Christian,6
ETH,Muslim,45
ETH,Ethiopian Orthodox,35
SP,Sunni Muslim,100
EAK,Roman Catholic,28
EAK,Protestant,38
WAG,Muslim,90
WAG,Christian,9
SN,Muslim,92
SN,Christian,2
GNB,Muslim,30
GNB,Christian,5
WAL,Muslim,60
WAL,Christian,10
EAU,Muslim,16
EAU,Roman Catholic,33
EAU,Protestant,33
LS,Christian,80
RM,Muslim,7
RM,Christian,41
MW,Muslim,20
MW,Roman Catholic,20
MW,Protestant,55
MOC,Muslim,20
MOC,Christian,30
MS,Muslim,17
MS,Christian,28
MS,Hindu,52
SD,Christian,60
SY,Roman Catholic,90
SY,Anglican,8
\.

---Filling table river :

COPY river FROM STDIN csv;
Paraguay,Parana,,,2200
Uruguay,Rio de la Plata,,,1650
Niger,,,Atlantic Ocean,
Zaire,,,Atlantic Ocean,4320
Gambia,,,Atlantic Ocean,
Senegal,,,Atlantic Ocean,
Arkansas,Mississippi,,,2334
Colorado,,,Pacific Ocean,2700
Mississippi,,,Gulf of Mexico,3750
Missouri,Mississippi,,,3726
Amazonas,,,Atlantic Ocean,6518
Parana,Rio de la Plata,,,4700
Cunene,,,Atlantic Ocean,
Ruvuma,,,Indian Ocean,
Rio Grande,,,Gulf of Mexico,3030
Oka,Volga,,,1480
Seine,,,North Sea,776
Donau,,,Black Sea,2850
Western Dwina,,,Baltic Sea,1020
Weichsel,,,Baltic Sea,1068
Dnepr,,,Black Sea,2201
Thames,,,North Sea,346
Kura,,,Caspian Sea,1364
Rio de la Plata,,,Atlantic Ocean,300
Ubangi,Zaire,,,2300
Schari,,Tschadsee,,
Nile,,,Mediterranean Sea,
Loire,,,Atlantic Ocean,1010
Garonne,,,Atlantic Ocean,650
Rhone,,,Mediterranean Sea,812
Weser,,,North Sea,477
Elbe,,,North Sea,1144
Rhein,,Bodensee,North Sea,1320
Mosel,Rhein,,,545
Main,Rhein,,,524
Neckar,Rhein,,,367
Tajo,,,Atlantic Ocean,1008
Goetaaelv,,,North Sea,93
Klaraelv,,Vaenern,,347
Umeaelv,,,Baltic Sea,
St. Lorenzstrom,,,Atlantic Ocean,1170
Hudson River,,,Atlantic Ocean,493
Connecticut River,,,Atlantic Ocean,660
Moldau,Elbe,,,435
Ounasjoki,Kemijoki,,,
Kemijoki,,,Baltic Sea,520
Oulujoki,,,Baltic Sea,
Kokemaeenjoki,,,Baltic Sea,169
Northern Dwina,,,Arctic Ocean,740
Jenissej,,,Arctic Ocean,4130
Volga,,,Caspian Sea,3531
Casai,Kwa,,,1570
Kwa,Zaire,,,100
Cuilo,Kwa,,,970
Cuango,Kwa,,,1230
Cuanza,,,Atlantic Ocean,
Zambezi,,,Indian Ocean,
Chire,Zambezi,,,
Neva,,,Baltic Sea,74
White Drin,Drin,,,
Drin,,,Mediterranean Sea,
Black Drin,Drin,,,133
Thjorsa,,,Atlantic Ocean,230
Joekulsa a Fjoellum,,,Norwegian Sea,206
Oesterdalaelv,Dalaelv,,,
Dalaelv,,,Baltic Sea,520
Vaesterdalaelv,Dalaelv,,,
Torneaelv,,,Baltic Sea,375
Gloma,,,North Sea,598
Lena,,,Arctic Ocean,4400
Ob,,,Arctic Ocean,3680
Amur,,,Arctic Ocean,2918
Petschora,,,Arctic Ocean,1809
Kolyma,,,Arctic Ocean,2513
Chatanga,,,Arctic Ocean,1636
Bija,Ob,,,688
Katun,Ob,,,306
Irtysch,Ob,,,4248
Tobol,Ob,,,1591
Ischim,Irtysch,,,2450
Schilka,Amur,,,560
Argun,Amur,,,1620
Ingoda,Schilka,,,708
Onon,Schilka,,,1032
Black Irtysch,Irtysch,,,672
Grosser Jenissej,Jenissej,,,605
Kleiner Jenissej,Jenissej,,,680
Suchona,Northern Dwina,,,562
Jug,Northern Dwina,,,574
Amudarja,,Ozero Aral,,1415
Pjandsh,Amudarja,,,1125
Don,,,Sea of Azov,1870
Syrdarja,,Ozero Aral,,2212
Ural,,,Caspian Sea,2428
Kitakami,,,Pacific Ocean,
Han,,,Yellow Sea,
Jangtse-Kiang,,,East China Sea,6100
Hwangho,,,Yellow Sea,
Mekong,,,South China Sea,4500
Orinoco,,,Atlantic Ocean,2736
Aller,Weser,,,263
Leine,Aller,,,241
Werra,Weser,,,292
Fulda,Weser,,,218
Columbia River,,,Pacific Ocean,1952
Rio Balsas,,,Atlantic Ocean,770
Karun,,,Persian Gulf,890
Blue Nile,Nile,,,
White Nile,Nile,,,
Atbara,Nile,,,
Bahr el-Gasal,White Nile,,,
Bahr el-Djebel,White Nile,,,
Sobat,White Nile,,,
Pibor,Sobat,,,
Baro,Sobat,,,
Djuba,,,Indian Ocean,
Webi Schebeli,,,Indian Ocean,
Bani,Niger,,,
Volta,,,Atlantic Ocean,
Benue,Niger,,,
Sanaga,,,Atlantic Ocean,
Sanga,Zaire,,,530
Bomu,Ubangi,,,280
Uelle,Ubangi,,,560
Lukuga,Zaire,,,230
Luvua,Zaire,,,210
Lomami,Zaire,,,1600
Ruki,Zaire,,,730
Kafue,Zambezi,,,
Luangwa,Zambezi,,,
Tana,,,Indian Ocean,
Rufiji,,,Indian Ocean,
Save,,,Indian Ocean,
Limpopo,,,Indian Ocean,
Oranje,,,Atlantic Ocean,
Vaal,Oranje,,,
Busira,Ruki,,,830
Tshuapa,Busira,,,1300
\.

---Filling table sea :

COPY sea FROM STDIN csv;
Baltic Sea,459
Mediterranean Sea,5121
Atlantic Ocean,9219
Irish Sea,272
North Sea,200
Persian Gulf,102
Caribbean Sea,7240
Gulf of Mexico,4375
Pacific Ocean,11034
Indian Ocean,6400
Gulf of Aden,5143
Norwegian Sea,3860
Arctic Ocean,5220
Sea of Japan,4036
Black Sea,2211
Caspian Sea,995
Sea of Azov,100
Yellow Sea,200
East China Sea,2370
South China Sea,5420
Sunda Sea,7440
Arabian Sea,5203
Red Sea,2635
\.

--
-- Name: city_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY city
    ADD CONSTRAINT city_pkey PRIMARY KEY (name, country, province);


--
-- Name: country_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY country
    ADD CONSTRAINT country_pkey PRIMARY KEY (code);


--
-- Name: economy_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY economy
    ADD CONSTRAINT economy_pkey PRIMARY KEY (country);


--
-- Name: ethnic_group_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY ethnic_group
    ADD CONSTRAINT ethnic_group_pkey PRIMARY KEY (name, country);


--
-- Name: geo_lake_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY geo_lake
    ADD CONSTRAINT geo_lake_pkey PRIMARY KEY (province, country, lake);


--
-- Name: geo_mountain_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY geo_mountain
    ADD CONSTRAINT geo_mountain_pkey PRIMARY KEY (province, country, mountain);


--
-- Name: geo_river_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY geo_river
    ADD CONSTRAINT geo_river_pkey PRIMARY KEY (province, country, river);


--
-- Name: geo_sea_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY geo_sea
    ADD CONSTRAINT geo_sea_pkey PRIMARY KEY (province, country, sea);


--
-- Name: is_member_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY is_member
    ADD CONSTRAINT is_member_pkey PRIMARY KEY (country, organization);


--
-- Name: island_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY island
    ADD CONSTRAINT island_pkey PRIMARY KEY (name);


--
-- Name: lake_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY lake
    ADD CONSTRAINT lake_pkey PRIMARY KEY (name);


--
-- Name: language_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY "language"
    ADD CONSTRAINT language_pkey PRIMARY KEY (name, country);


--
-- Name: merges_with_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY merges_with
    ADD CONSTRAINT merges_with_pkey PRIMARY KEY (sea1, sea2);


--
-- Name: mountain_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY mountain
    ADD CONSTRAINT mountain_pkey PRIMARY KEY (name);


--
-- Name: organization_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY organization
    ADD CONSTRAINT organization_pkey PRIMARY KEY (abbreviation);


--
-- Name: politics_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY politics
    ADD CONSTRAINT politics_pkey PRIMARY KEY (country);


--
-- Name: population_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY population
    ADD CONSTRAINT population_pkey PRIMARY KEY (country);


--
-- Name: province_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY province
    ADD CONSTRAINT province_pkey PRIMARY KEY (name);


--
-- Name: religion_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY religion
    ADD CONSTRAINT religion_pkey PRIMARY KEY (name, country);


--
-- Name: river_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY river
    ADD CONSTRAINT river_pkey PRIMARY KEY (name);


--
-- Name: sea_pkey; Type: CONSTRAINT; Schema: public; Owner: olive; Tablespace: 
--

ALTER TABLE ONLY sea
    ADD CONSTRAINT sea_pkey PRIMARY KEY (name);


--
-- Name: city_province_fkey; Type: FK CONSTRAINT; Schema: public; Owner: olive
--

ALTER TABLE ONLY city
    ADD CONSTRAINT city_province_fkey FOREIGN KEY (province) REFERENCES province(name);


--
-- Name: ethnic_group_country_fkey; Type: FK CONSTRAINT; Schema: public; Owner: olive
--

ALTER TABLE ONLY ethnic_group
    ADD CONSTRAINT ethnic_group_country_fkey FOREIGN KEY (country) REFERENCES country(code);


--
-- Name: geo_river_province_fkey; Type: FK CONSTRAINT; Schema: public; Owner: olive
--

ALTER TABLE ONLY geo_river
    ADD CONSTRAINT geo_river_province_fkey FOREIGN KEY (province) REFERENCES province(name);


--
-- Name: geo_river_river_fkey; Type: FK CONSTRAINT; Schema: public; Owner: olive
--

ALTER TABLE ONLY geo_river
    ADD CONSTRAINT geo_river_river_fkey FOREIGN KEY (river) REFERENCES river(name);


--
-- Name: is_member_country_fkey; Type: FK CONSTRAINT; Schema: public; Owner: olive
--

ALTER TABLE ONLY is_member
    ADD CONSTRAINT is_member_country_fkey FOREIGN KEY (country) REFERENCES country(code);


--
-- Name: is_member_organization_fkey; Type: FK CONSTRAINT; Schema: public; Owner: olive
--

ALTER TABLE ONLY is_member
    ADD CONSTRAINT is_member_organization_fkey FOREIGN KEY (organization) REFERENCES organization(abbreviation);


--
-- Name: language_country_fkey; Type: FK CONSTRAINT; Schema: public; Owner: olive
--

ALTER TABLE ONLY "language"
    ADD CONSTRAINT language_country_fkey FOREIGN KEY (country) REFERENCES country(code);


--
-- Name: province_country_fkey; Type: FK CONSTRAINT; Schema: public; Owner: olive
--

ALTER TABLE ONLY province
    ADD CONSTRAINT province_country_fkey FOREIGN KEY (country) REFERENCES country(code);


--
-- Name: religion_country_fkey; Type: FK CONSTRAINT; Schema: public; Owner: olive
--

ALTER TABLE ONLY religion
    ADD CONSTRAINT religion_country_fkey FOREIGN KEY (country) REFERENCES country(code);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

