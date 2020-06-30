data {
  int n;
  vector[n] miles;
  int deaths[n];
}

parameters {
  real beta;
}

transformed parameters {
  vector[n] lambda = miles*beta;
}

model {
  beta ~ beta(2,11);
  deaths ~ poisson(lambda);
}

generated quantities {
  real y[n];
  for (i in 1:n) {
    y[i] = poisson_rng(lambda[i]);
  }
}
