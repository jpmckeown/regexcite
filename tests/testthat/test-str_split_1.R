test_that("str_split_1() splits a string", {
  expect_equal(str_split_1("a,b,c", split = ","), c("a", "b", "c"))
})

test_that("str_split_1() errors if input length > 1", {
  expect_error(str_split_1(c("a,b","c,d"), ","))
})

test_that("str_split_1() exposes features of stringr::str_split()", {
  expect_equal(str_split_1("a,b,c", ",", n = 2), c("a", "b,c"))
  expect_equal(str_split_1("a.b", stringr::fixed(".")), c("a", "b"))
})
