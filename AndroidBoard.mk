#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

RECOVERY_KMOD_TARGETS += \
    bq2597x_mmi.ko \
    mmi_parallel_charger.ko \
    mmi_parallel_charger_qc3p.ko \
    stmicro_mmi.ko \

-include device/motorola/sm8250-common/AndroidBoardCommon.mk
