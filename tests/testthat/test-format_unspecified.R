test_that("smoke test", {
  expect_snapshot({
    pillar(unspecified(3), width = 10)
  })
})
