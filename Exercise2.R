#Überblick über die esoph Daten
# Erkenntnise:
# - Daten sind sehr heterogen, lediglich bei der Altersverteilung fällt auf, dass 75+ weniger (11) Personen untersucht wurden als in den anderen Gruppen
summary(esoph)
head (esoph, n=10)

# Krebsfälle pro Altersgruppe
# Erkenntnise:
# - die geringsten Quoten liegt in den Zwei Altersgruppen zwischen 25 und 44 Jahren
# - due durchschnittlich häufigsten Fällen tretten zwischen 55-64 auf
# - ab 75 sind die Anzahl der Fälle wieder (allerdings gibt es hier auch zwei Versuchspersonen weniger)
tapply(esoph$ncases, esoph$agegp, mean)

# Durchschnittliche Anzahl an Kontrollen
# Erkenntnise:
# - durchschnitt. ca. 9 Kontrollen
median (esoph$ncontrols)

# Kontrollen pro Altersgruppe
# Erkenntnise:
# - sehr unerwartet verteilt: zwischen 35-44 finden die meisten Kotrnollen statt,, dann nimmt die Anzahl ab, ab 65 erreichen sie einen tiefpunkt
tapply(esoph$ncontrols, esoph$agegp, mean)

# Durchschnittliche Fälle bei den Rauchern der höchsten Kategorie (30+) vs. tiefste (0--9gm/day)
# Ergebnis: höchste 1.55, tiefste 3.25
# Erkenntnis:
# - kein erkennbarer Zusammenhang zwischen den Krebsfällen und Rauchen
mean(subset(esoph$ncases, esoph$tobgp == "30+"))
mean(subset(esoph$ncases, esoph$tobgp == "0-9g/day"))

# Durchschnittliche Fälle bei Alkoholkonsumenten der höchsten Kategorie (120+) vs. tiefste (0-39gm/day)
# Ergebnis: höchste 2.14, tiefste 1.27
# Erkenntnis:
# - auf den esten Blick scheint ein Zusammenhang zwischen den Krebsfällen und Alkohol zu bestehen (je mehr, desto höher die Gefahr)
mean(subset(esoph$ncases, esoph$alcgp == "120+"))
mean(subset(esoph$ncases, esoph$alcgp == "0--39 gm/day"))

# Durschnittliche Anzahl an Krebsfällen pro Alkoholkonsum
# Erkenntnis:
# - vorangehende Erkenntnis lässt sich hier teilweise bestätigen: geringste Alkoholkonsum Kategorie zeigt auch die geringsten Fälle im gesamtvergleich, die zweit niedrigste Kategorie 40-79 zeigt hedohc die höchste Anzahl an Fällen
tapply(esoph$ncases, esoph$alcgp, mean)