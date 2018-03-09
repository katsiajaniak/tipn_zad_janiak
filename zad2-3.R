for (year in 1800:2018){
  if (((year %% 4) == 0) & ((year %% 100) != 0) | ((year %% 400) == 0))
    print(year)
}