context("choroplethr")

test_that("state level choropleths return ggplots with discrete and continuous lods", {
  df = data.frame(region=state.abb, value=sample(100, 50))
  expect_equal(class(choroplethr(df, lod="state", num_buckets=1)), c("gg", "ggplot"))
  expect_equal(class(choroplethr(df, lod="state", num_buckets=9)), c("gg", "ggplot"))
})
                        
data(county.fips, package="maps")
test_that("county level choropleths return ggplots at discrete and continuous lods", {
  df = data.frame(region=county.fips$fips, value=sample(100, nrow(county.fips), replace=T))
  expect_equal(class(choroplethr(df, lod="county", num_buckets=1)), c("gg", "ggplot"))
  expect_equal(class(choroplethr(df, lod="county", num_buckets=9)), c("gg", "ggplot"))
})

data(zipcode, package="zipcode")
test_that("zip level choropleths return ggplots at discrete and continuous lods", {  
  df = data.frame(region=zipcode$zip, value = sample(100, nrow(zipcode), replace=T))
  expect_equal(class(choroplethr(df, lod="zip", num_buckets=1)), c("gg", "ggplot"))
  expect_equal(class(choroplethr(df, lod="zip", num_buckets=9)), c("gg", "ggplot"))
})
