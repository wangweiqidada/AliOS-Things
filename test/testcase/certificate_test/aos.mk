NAME := certificate_test

$(NAME)_MBINS_TYPE := app
$(NAME)_VERSION    := 1.0.0
$(NAME)_SUMMARY    := testcase for certificate
$(NAME)_SOURCES    := aos_test.c cutest/cut.c
$(NAME)_COMPONENTS := rhino
$(NAME)_COMPONENTS += kv

$(NAME)_CFLAGS += -Wall -Werror -Wno-unused-varible