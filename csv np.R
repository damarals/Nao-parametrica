


# teste binomial atributo A

binom.test(sum(csv_np$`atributo A`), length(csv_np$`atributo A`), 0.5)

# teste binomial atributo B

binom.test(sum(csv_np$`atributo B`), length(csv_np$`atributo B`), 0.5)

# teste binomial atributo A quando B está

b_esta = csv_np[csv_np$`atributo B` == 1,]
binom.test(sum(b_esta$`atributo A`), length(b_esta$`atributo A`), 0.5)

# teste binomial atributo B quando A está

a_esta = csv_np[csv_np$`atributo A` == 1,]
binom.test(sum(a_esta$`atributo B`), length(a_esta$`atributo B`), 0.5)

# teste de independencia fisher

tbl = table(csv_np$`atributo A`, csv_np$`atributo B`)
chisq.test(tbl)
