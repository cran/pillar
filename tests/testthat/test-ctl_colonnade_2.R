test_that("strings with varying widths", {
  local_options(width = 80)

  # Generated by data-raw/create-chr-tests.R
  # nolint start
  expect_snapshot({
    ctl_colonnade(df_str[c(28L, 34L, 16L, 29L, 47L, 25L, 42L, 27L, 44L, 20L, 14L, 36L, 43L, 41L, 26L, 45L, 22L, 9L, 13L, 32L, 31L, 12L, 19L, 48L, 49L, 35L, 3L, 11L, 23L, 24L, 40L, 15L, 38L, 10L, 46L, 5L, 50L, 18L, 21L, 6L, 30L, 2L, 7L, 1L, 4L, 8L, 17L, 33L, 39L, 37L)], width = {
      options(width = 54); 516
    })

    ctl_colonnade(df_str[c(28L, 41L, 12L, 29L, 13L, 43L, 24L, 50L, 48L, 35L, 44L, 21L, 33L, 45L, 47L, 34L, 25L, 14L, 18L, 23L, 7L, 3L, 42L, 36L, 11L, 2L, 20L, 31L, 1L, 4L, 38L, 9L, 27L, 40L, 32L, 17L, 6L, 49L, 16L, 19L, 15L, 22L, 39L, 10L, 46L, 5L, 30L, 8L, 26L, 37L)], width = {
      options(width = 42); 1365
    })

    ctl_colonnade(df_str[c(40L, 17L, 13L, 23L, 22L, 2L, 18L, 3L, 29L, 45L, 14L, 19L, 33L, 37L, 47L, 43L, 44L, 10L, 31L, 27L, 34L, 35L, 41L, 21L, 4L, 25L, 38L, 48L, 9L, 24L, 26L, 39L, 20L, 36L, 42L, 16L, 6L, 11L, 7L, 12L, 1L, 46L, 15L, 5L, 8L, 50L, 32L, 30L, 49L, 28L)], width = {
      options(width = 39); 934
    })

    ctl_colonnade(df_str[c(11L, 36L, 17L, 14L, 31L, 35L, 23L, 13L, 6L, 44L, 45L, 22L, 21L, 18L, 33L, 10L, 43L, 2L, 46L, 34L, 3L, 19L, 1L, 38L, 9L, 37L, 5L, 8L, 25L, 49L, 27L, 29L, 15L, 39L, 24L, 40L, 48L, 26L, 47L, 42L, 41L, 12L, 28L, 30L, 7L, 16L, 4L, 50L, 20L, 32L)], width = {
      options(width = 32); 565
    })

    ctl_colonnade(df_str[c(18L, 46L, 11L, 43L, 31L, 47L, 48L, 44L, 50L, 15L, 28L, 33L, 13L, 4L, 22L, 3L, 37L, 32L, 40L, 9L, 25L, 16L, 45L, 23L, 21L, 6L, 49L, 36L, 27L, 38L, 14L, 34L, 8L, 24L, 29L, 1L, 12L, 2L, 20L, 17L, 35L, 5L, 19L, 30L, 7L, 26L, 42L, 41L, 39L, 10L)], width = {
      options(width = 35); 1121
    })

    ctl_colonnade(df_str[c(43L, 1L, 3L, 15L, 28L, 12L, 46L, 34L, 31L, 7L, 11L, 4L, 44L, 8L, 9L, 5L, 36L, 22L, 17L, 39L, 18L, 45L, 37L, 13L, 29L, 6L, 30L, 16L, 20L, 10L, 19L, 26L, 33L, 40L, 35L, 48L, 38L, 25L, 2L, 47L, 42L, 41L, 27L, 14L, 21L, 24L, 50L, 49L, 23L, 32L)], width = {
      options(width = 32); 446
    })

    ctl_colonnade(df_str[c(37L, 46L, 21L, 3L, 16L, 39L, 34L, 33L, 10L, 17L, 19L, 36L, 45L, 49L, 11L, 50L, 14L, 29L, 44L, 13L, 30L, 38L, 32L, 40L, 42L, 1L, 31L, 41L, 7L, 23L, 35L, 28L, 6L, 25L, 2L, 9L, 12L, 15L, 5L, 18L, 20L, 27L, 43L, 8L, 47L, 4L, 48L, 24L, 26L, 22L)], width = {
      options(width = 31); 1166
    })

    ctl_colonnade(df_str[c(31L, 39L, 40L, 30L, 10L, 21L, 9L, 16L, 46L, 25L, 15L, 24L, 3L, 50L, 35L, 1L, 12L, 34L, 48L, 4L, 29L, 23L, 37L, 36L, 28L, 43L, 11L, 17L, 32L, 8L, 41L, 13L, 44L, 7L, 38L, 26L, 33L, 20L, 19L, 2L, 18L, 49L, 27L, 47L, 22L, 14L, 6L, 5L, 45L, 42L)], width = {
      options(width = 58); 546
    })

    ctl_colonnade(df_str[c(43L, 21L, 41L, 48L, 22L, 25L, 2L, 8L, 1L, 24L, 6L, 39L, 38L, 20L, 49L, 45L, 47L, 12L, 9L, 13L, 36L, 26L, 44L, 11L, 46L, 28L, 7L, 18L, 50L, 16L, 29L, 30L, 4L, 23L, 17L, 40L, 33L, 14L, 27L, 19L, 34L, 32L, 3L, 37L, 15L, 10L, 5L, 35L, 31L, 42L)], width = {
      options(width = 57); 1035
    })

    ctl_colonnade(df_str[c(40L, 6L, 25L, 5L, 26L, 17L, 19L, 2L, 11L, 34L, 45L, 24L, 22L, 44L, 35L, 7L, 4L, 49L, 1L, 36L, 12L, 41L, 39L, 13L, 48L, 27L, 18L, 30L, 42L, 28L, 3L, 46L, 21L, 20L, 16L, 29L, 50L, 10L, 9L, 8L, 47L, 31L, 14L, 38L, 33L, 32L, 43L, 23L, 15L, 37L)], width = {
      options(width = 33); 1217
    })

    ctl_colonnade(df_str[c(43L, 23L, 22L, 11L, 6L, 26L, 48L, 17L, 7L, 42L, 36L, 21L, 35L, 50L, 13L, 19L, 29L, 8L, 15L, 4L, 2L, 27L, 49L, 47L, 30L, 31L, 25L, 28L, 46L, 12L, 32L, 39L, 24L, 10L, 45L, 5L, 37L, 14L, 40L, 20L, 41L, 44L, 33L, 18L, 38L, 3L, 1L, 34L, 16L, 9L)], width = {
      options(width = 32); 770
    })

    ctl_colonnade(df_str[c(5L, 24L, 43L, 46L, 35L, 39L, 18L, 26L, 8L, 27L, 2L, 50L, 6L, 14L, 29L, 47L, 9L, 16L, 36L, 4L, 13L, 41L, 3L, 28L, 37L, 33L, 38L, 31L, 34L, 19L, 42L, 32L, 1L, 45L, 15L, 7L, 11L, 49L, 23L, 12L, 48L, 20L, 21L, 44L, 25L, 10L, 22L, 30L, 40L, 17L)], width = {
      options(width = 46); 1439
    })

    ctl_colonnade(df_str[c(7L, 44L, 19L, 21L, 18L, 35L, 23L, 50L, 33L, 37L, 25L, 26L, 10L, 39L, 2L, 47L, 42L, 14L, 9L, 41L, 45L, 6L, 4L, 11L, 24L, 43L, 32L, 3L, 38L, 5L, 49L, 27L, 17L, 8L, 22L, 40L, 12L, 15L, 1L, 28L, 31L, 29L, 13L, 48L, 34L, 36L, 30L, 20L, 16L, 46L)], width = {
      options(width = 52); 1065
    })

    ctl_colonnade(df_str[c(38L, 18L, 23L, 36L, 35L, 20L, 44L, 19L, 13L, 41L, 31L, 7L, 11L, 29L, 2L, 14L, 26L, 46L, 40L, 45L, 9L, 34L, 33L, 22L, 1L, 17L, 28L, 10L, 21L, 30L, 47L, 49L, 6L, 12L, 4L, 25L, 32L, 15L, 43L, 24L, 48L, 3L, 37L, 50L, 42L, 39L, 16L, 8L, 27L, 5L)], width = {
      options(width = 35); 393
    })

    ctl_colonnade(df_str[c(22L, 9L, 11L, 26L, 19L, 16L, 32L, 25L, 1L, 30L, 31L, 6L, 24L, 10L, 39L, 21L, 50L, 7L, 29L, 12L, 46L, 43L, 15L, 35L, 20L, 40L, 49L, 38L, 36L, 48L, 34L, 3L, 8L, 4L, 27L, 42L, 44L, 33L, 45L, 18L, 5L, 2L, 13L, 47L, 28L, 17L, 37L, 14L, 41L, 23L)], width = {
      options(width = 41); 999
    })
  })
  # nolint end
})
