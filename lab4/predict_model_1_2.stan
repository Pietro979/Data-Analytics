data {
    int n;
    int deaths[n];
}
parameters{
    real<lower=0> lambda;
}
model {
    lambda ~ normal(692,200);
    deaths ~ poisson(lambda);
}
generated quantities {
    int y = poisson_rng(lambda);
}
