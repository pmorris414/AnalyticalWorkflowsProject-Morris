Peromyscus_FMNH_FW <- read.csv("C:/Users/pmorr/OneDrive - Oregon State University/Projects/Peromyscus Measurements/PeroProjectFolder/Peromyscus_FMNH_FW.csv")

library(dplyr)
library(ggplot2)

# Standardize subspecies names by keeping only the first two words (Genus + species)
Peromyscus_FMNH_FW$Taxon <- sub("^([A-Za-z]+\\s[A-Za-z]+).*", "\\1", Peromyscus_FMNH_FW$Taxon)

#Upper Alveolar Length among 3 taxon
ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = ManAlveolar, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Upper Alveolar") +
  theme_minimal() +
  theme(legend.position = "none")

#Upper Diastimal Length-- not great
ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = ManDiastimal, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Upper Dias.") +
  theme_minimal() +
  theme(legend.position = "none")

#Upper M1
ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = ManM1, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Upper M1") +
  theme_minimal() +
  theme(legend.position = "none")

#Upper M2
ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = ManM2, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Upper M2") +
  theme_minimal() +
  theme(legend.position = "none")
