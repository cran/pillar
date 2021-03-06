# obj_sum ----------------------------------------------------------------

test_that("forwards to vec_ptype_abbr() for S4", {
  x <- methods::setClass("A")
  expect_equal(obj_sum(x), vctrs::vec_ptype_abbr(x))
})

test_that("forwards to vec_ptype_abbr() for S3", {
  x <- structure(list(), class = c("a", "b", "c"))
  expect_equal(obj_sum(x), vctrs::vec_ptype_abbr(x))
})

test_that("NULL handled specially", {
  expect_equal(obj_sum(NULL), "NULL")
})

test_that("data frames and common data vectors have size summary", {
  local_override_size_sum()

  expect_obj_sum_is_ptype <- function(x) {
    obj_sum <- obj_sum(x)
    ptype <- vec_ptype_abbr(x, suffix_shape = FALSE)

    expect_equal(obj_sum, !!paste_with_space_if_needed(ptype, size_sum(x)))
  }

  expect_obj_sum_is_ptype(mtcars)
  expect_obj_sum_is_ptype(factor(1:3))
  expect_obj_sum_is_ptype(ordered(1:3))
  expect_obj_sum_is_ptype(Sys.Date() + 1:3)
  expect_obj_sum_is_ptype(Sys.time() + 1:3)
  expect_obj_sum_is_ptype(Sys.time() - Sys.time() + 1:3)
  expect_obj_sum_is_ptype(as.POSIXlt(Sys.time() + 1:3))
  expect_obj_sum_is_ptype(list(1, 2:3))
  expect_obj_sum_is_ptype(as_override_size_sum(1:3))
})


# type_sum ----------------------------------------------------------------

test_that("less common objects get abbreviations", {
  expect_equal(type_sum(environment()), "env")
  expect_equal(type_sum(environment), "fn")
  expect_equal(type_sum(list), "fn")
  expect_equal(type_sum(quote(foo)), "sym")
  expect_equal(type_sum(expr()), "missing")
})
