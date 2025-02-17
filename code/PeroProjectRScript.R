Peromyscus_FMNH_FW <- read.csv("C:/Users/pmorr/OneDrive - Oregon State University/Analytical WorkFlows/AnalyticalWorkflowsProject-Morris/data/Peromyscus_FMNH_FW.csv")

library(dplyr)
library(ggplot2)

# Standardize subspecies names by keeping only the first two words (Genus + species)
Peromyscus_FMNH_FW$Taxon <- sub("^([A-Za-z]+\\s[A-Za-z]+).*", "\\1", Peromyscus_FMNH_FW$Taxon)


library(ggplot2)

# Standardize taxon names (Genus + species only)
Peromyscus_FMNH_FW$Taxon <- sub("^([A-Za-z]+\\s[A-Za-z]+).*", "\\1", Peromyscus_FMNH_FW$Taxon)

# Convert Taxon to a factor
Peromyscus_FMNH_FW$Taxon <- as.factor(Peromyscus_FMNH_FW$Taxon)

# Check if the conversion worked
str(Peromyscus_FMNH_FW$Taxon)  # This should now show "Factor" instead of "chr"

#test anova
ManM2anova <- aov(ManM2 ~ Taxon, data = Peromyscus_FMNH_FW)
summary(anova_result)

ManALanova <- aov(ManAlveolar ~ Taxon, data = Peromyscus_FMNH_FW)
summary(ManALanova)


#Upper Alveolar Length among 3 taxon
ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = MaxAlveolar, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Upper Alveolar") +
  theme_minimal() +
  theme(legend.position = "none")

#Upper Diastimal Length-- not great
ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = MaxDiastimal, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Upper Dias.") +
  theme_minimal() +
  theme(legend.position = "none")

#Upper M1
ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = MaxM1, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Upper M1") +
  theme_minimal() +
  theme(legend.position = "none")

#Upper M2
ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = MaxM2, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Upper M2") +
  theme_minimal() +
  theme(legend.position = "none")

#Upper M3
ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = MaxM3, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Upper M3") +
  theme_minimal() +
  theme(legend.position = "none")

#Premaxilla to frontal 
ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = Premaxilla.to.Frontal, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Premax to front") +
  theme_minimal() +
  theme(legend.position = "none")

ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = ManDiastimal, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Lower Diastema") +
  theme_minimal() +
  theme(legend.position = "none")

ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = ManAlveolar, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Lower Alveolar") +
  theme_minimal() +
  theme(legend.position = "none")

ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = ManM1, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Lower M1") +
  theme_minimal() +
  theme(legend.position = "none")

ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = ManM2, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Lower M2") +
  theme_minimal() +
  theme(legend.position = "none")

ggplot(Peromyscus_FMNH_FW, aes(x = Taxon, y = ManM3, fill = Taxon)) +
  geom_boxplot() +
  labs(x = "Taxon",
       y = "Lower M3") +
  theme_minimal() +
  theme(legend.position = "none")
