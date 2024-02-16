# Fyrra_R_Verkefni

# Um gögnin

Í verkefninu munuð þið vinna með Kaupskrá fasteigna en Kaupskrá fasteigna inniheldur upplýsingar sem Þjóðskrá skráir upp úr þinglýstum kaupsamningum. Þar má meðal annars finna upplýsingar um kaupverð, dagsetningu kaupsamnings og staðsetningu fasteignar. Kaupsamningar geta verið um íbúðarhúsnæði, sumarhús eða atvinnuhúsnæði. Við munum aðeins vinna með gögn um íbúðarhúsnæði í þessu verkefni.

Gögnin eru uppfærð mánaðarlega eftir skráningu og yfirferð. Útgáfa kaupskrár miðast við 22. hvers mánaðar eða fyrsta virka dag eftir það.

Hér má finna lýsingu á breytunum í safninu. 

Gögnin eru aðgengileg héðan: https://ahj.hi.is/kaupaskra.csv

# Skil

Verkefnið á að vinna í .Rmd skrá en skila á .html skrá.  .html skráin verður til í sömu möppu og .Rmd skráin þegar þið prjónið.

Verkefnið á að vinna í hópum, 2-3 saman. Merkja þarf lausnir með nafni og HÍ-notendanafni þeirra sem unnu lausnina. Hlaða skal .html skrá inn á Canvas ekki síðar en 1. mars klukkan 23:59. Ekki verður tekið við lausnum sem skila sér síðar. Nemandinn sem er fremstur í stafrófinu í hópnum á að hlaða upp lausn á Canvas, ekki hinir í hópnum, en gæta þarf að öll nöfn og notendanöfn koma fyrir í haus lausnarinnar.

Frágangur gildir 10% af einkunn fyrir verkefnið (merkja verkefni með nafni og notendanafni, uppsetning, merkingar á ásum, töflur, ...).

Þið eigið að sýna allan kóða í skýrslunni ásamt öllum úttökum/myndum/töflum. Þið þurfið ekki að skrifa langan texta við hvern lið, aðeins segja í mjög stuttu máli hvað verið er að gera.

Verkefnið
Búið til nýtt verkefni (e. project) fyrir verkefnið í vinnumöppunni ykkar. Skýrið verkefnið fyrra_r. Munið að hafa klump efst í .Rmd skránni ykkar með library() skipunum fyrir þá pakka sem þið ætlið að nota.

# Hluti 1 - Gagnamöndl (30 %)

Síðasti séns til að fá aðstoð við þennan hluta er 16. febrúar.

a) 
Lesið gagnasafnið inn í R/RStudio með skipuninni hér að neðan og geymið í hlut sem ber upphafsstafi þeirra sem verkefnið vinna (ef Gréta Halldórsdóttir og Sigurður Karl Jónsson eru að vinna saman skulu þau nefna hlutinn gs).

nafn_a_hlut <- read_csv2("https://ahj.hi.is/kaupskra.csv", locale = locale(encoding = "ISO8859-1"))

þar sem þið skiptið nafn_a_hlut út fyrir upphafsstafina (þó skal ekki nota íslenska stafi).

b)
Notið filter() skipunina til að velja fullbúnar eignir (sjá fullbuid breytuna) sem eru "Fjolbyli" og "Serbyli" og byggja á  samningum sem eru er nothæfir. Yfirskrifið stóra gagnaramman í a) lið með þessum eignum.

c)
Búið til nýja breytu í gagnarammanum ykkar sem inniheldur fermetraverð eignanna, nefnið breytuna fermetraverd.

d)
Búið til nýja breytu í gagnarammanum ykkar sem inniheldur árið sem eignin var seld, nefnið breytuna ar (t.d. með að nota year() fallið í lubridate pakkanum).

e)
Veljið ykkur þrjú póstnúmer til að vinna með. Það þurfa að vera a.m.k. 200 sérbýli í hverju póstúmeri fyrir sig. Yfirskrifið gagnaramman í b) lið með eignum úr þessum þremur póstnúmerum. Þið skulið nota þennan gagnaramma í verkefninu.

f)
Kannið gerð breytanna í gagnarammanum ykkar og breytið ef þarf.  

# Hluti 2 - Myndræn framsetning (30%)

Síðasti séns til að fá aðstoð við þennan hluta er 23. febrúar.

g)
Teiknið mynd sem sýnir stærð eignanna í rammanum ykkar (það eiga ekki að vera aðrar breytur á myndinni). Eru einhverjir gagnapunktar sem koma í ljós sem mögulega þarf að skoða sérstaklega? Ef svo er skulið þið gera það.

h)
Teiknið mynd sem sýnir fjölda eigna eftir póstnúmerum og tegundum eigna á sömu mynd (sérbýli eða fjölbýli).

i)
Teiknið mynd sem sýnir stærð eignanna eftir póstnúmeri. 

j)
Teiknið mynd sem sýnir samaband stærðar og kaupverðs fyrir hvert póstnúmer fyrir sig (notið t.d. facet_grid til að skipta myndinni upp eftir póstnúmerum). Notið mismunadi liti til að sýna hvaða ár eignirnar voru keyptar. Eru einhverjir gagnapunktar sem koma í ljós sem mögulega þarf að skoða sérstaklega? Ef svo er skulið þið gera það. 

# Hluti 3 - Töflur (20%)

Síðasti séns til að fá aðstoð við þennan hluta er 1. mars.

k)
Búið til töflu sem sýnir fjölda eigna í póstnúmerunum þremur eftir gerð eigna (sérbýli eða fjölbýli).

l)
Búið til töflu sem sýnir hlutfall sérbýla og fjölbýla í póstnúmerunum þremur. Það á s.s. að vera hægt að lesa hvert hlutfall sérbýla og fjölbýla er í hverju póstnúmeri fyrir sig. 

m)
Búið til töflu sem sýnir meðaltal, miðgildi og staðalfrávik fermetraverðs skipt upp eftir ári, póstnúmeri og tegund eigna (sérbýli eða fjölbýli). Sýnið einnig fjölda eigna sem lenda í hverjum flokki í töflunni. Það á t.d. að vera hægt að lesa hvert meðalfermetraverð eigna í sérbýli var árið 2021 í hverju póstnúmeri fyrir sig og hversu margir kaupsamingar eru að baki. 

# Hluti 4 - Líkindafræði (10%)

Síðasti séns til að fá aðstoð við þennan hluta er 1. mars.

Í liðunum hér að neðan eigið þið að reikna viðeigandi líkur eða annað sem beðið er um, geyma útkomuna í hlut og nota svo klumpakommur til að birta útkomurnar í texta. 

n) Gerum nú ráð fyrir að við séum að vinna með hverfi á stórreykjavíkursvæðinu þar sem 20% eigna eru einbýlishús. Hugsum okkur nú að við veljum 3 eignir í hverfinu af handahófi.
i) Hverjar eru líkurnar á að ein eignin sé einbýlishús? 
ii) Hverjar eru líkurnar á að fleiri en ein eign séu einbýlishús?

o) Gerum nú ráð fyrir að stærð einbýlishúsa í hverfinu fylgi normaldreifingu með meðaltal 170 fm og staðalfrávik 20 fm. 
i) Sé eign úr hverfinu valin af handahófi, hverjar eru líkurnar á að hún sé stærri en 180 fm?
ii) Jonni ætlar að byggja einbýlishús í hverfinu og vill endilega að það verði í hópi 5% stærstu einbýlishúsanna í hverfinu. Hvað þarf húsið að verða stórt?
