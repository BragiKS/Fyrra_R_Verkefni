
# Bragi Kristófer Sturluson, Sandesh Kunwar, Sigurjón Þorri Þórmundarson og Svavar Tómas Gestsson

install.packages("tidyverse")

# a)
bsss <- read_csv2("https://ahj.hi.is/kaupskra.csv", locale = locale(encoding = "ISO8859-1"))

# b)
bsss <- filter(bsss, tegund == "Serbyli" | tegund == "Fjolbyli")

# c)
bsss <- bsss %>% mutate(fermetraverd = kaupverd / einflm)

# d)
bsss <- bsss %>% mutate(ar = year(thinglystdags))
