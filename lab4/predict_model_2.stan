data{
  int n;
  real miles[n];
}
generated quantities{
  real beta = beta_rng(2,11); //Observing rate in previous years we can see, that it oscilates around 0.15 value
  int y[n];
  for (i in 1:n){
    y[i] = poisson_rng(miles[i]*beta);
  }
}
