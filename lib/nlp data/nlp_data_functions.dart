import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'nlp_data.dart';

/// for main page dashboard.
int g_main = 0, b_main = 0, n_main = 0, good = 0, bad = 0, neutral = 0;
void main_data() {
  for (int i = 0; i < good_array.length; i++) {
    if (good_array[i] == 1) g_main = g_main + 1;
    if (bad_array[i] == 1) b_main = b_main + 1;
    if (neutral_array[i] == 1) n_main = n_main + 1;
  }
  good = g_main;
  bad = b_main;
  neutral = n_main;
  g_main = 0;
  b_main = 0;
  n_main = 0;
}

/// for Service Kinds
int service_gkinds = 0,
    service_bkinds = 0,
    service_nkinds = 0,
    s_gkinds = 0,
    s_bkinds = 0,
    s_nkinds = 0;
void service_kinds() {
  for (int i = 0; i < services_array.length; i++) {
    if (services_array[i] == 1 && good_array[i] == 1) {
      service_gkinds = service_gkinds + 1;
    }
    if (services_array[i] == 1 && bad_array[i] == 1) {
      service_bkinds = service_bkinds + 1;
    }
    if (services_array[i] == 1 && neutral_array[i] == 1) {
      service_nkinds = service_nkinds + 1;
    }
  }
  s_gkinds = service_gkinds;
  s_bkinds = service_bkinds;
  s_nkinds = service_nkinds;
  service_gkinds = 0;
  service_bkinds = 0;
  service_nkinds = 0;
}

/// for UI Kinds
int ui_gkinds = 0,
    ui_bkinds = 0,
    ui_nkinds = 0,
    u_gkinds = 0,
    u_bkinds = 0,
    u_nkinds = 0;
void ui_kinds() {
  for (int i = 0; i < ui_array.length; i++) {
    if (ui_array[i] == 1 && good_array[i] == 1) {
      ui_gkinds = ui_gkinds + 1;
    }
    if (ui_array[i] == 1 && bad_array[i] == 1) {
      ui_bkinds = ui_bkinds + 1;
    }
    if (ui_array[i] == 1 && neutral_array[i] == 1) {
      ui_nkinds = ui_nkinds + 1;
    }
  }
  u_gkinds = ui_gkinds;
  u_bkinds = ui_bkinds;
  u_nkinds = ui_nkinds;
  ui_gkinds = 0;
  ui_bkinds = 0;
  ui_nkinds = 0;
}

/// for IOT Kinds
int Iot_gkinds = 0,
    Iot_bkinds = 0,
    Iot_nkinds = 0,
    i_gkinds = 0,
    i_bkinds = 0,
    i_nkinds = 0;
void Iot_kinds() {
  for (int i = 0; i < iot_array.length; i++) {
    if (iot_array[i] == 1 && good_array[i] == 1) {
      Iot_gkinds = Iot_gkinds + 1;
    }
    if (iot_array[i] == 1 && bad_array[i] == 1) {
      Iot_bkinds = Iot_bkinds + 1;
    }
    if (iot_array[i] == 1 && neutral_array[i] == 1) {
      Iot_nkinds = Iot_nkinds + 1;
    }
  }
  i_gkinds = Iot_gkinds;
  i_bkinds = Iot_bkinds;
  i_nkinds = Iot_nkinds;
  Iot_gkinds = 0;
  Iot_bkinds = 0;
  Iot_nkinds = 0;
}

/// for IOT Kinds
int solar_gkinds = 0,
    solar_bkinds = 0,
    solar_nkinds = 0,
    so_gkinds = 0,
    so_bkinds = 0,
    so_nkinds = 0;
void solar_kinds() {
  for (int i = 0; i < solar_array.length; i++) {
    if (solar_array[i] == 1 && good_array[i] == 1) {
      solar_gkinds = solar_gkinds + 1;
    }
    if (solar_array[i] == 1 && bad_array[i] == 1) {
      solar_bkinds = solar_bkinds + 1;
    }
    if (iot_array[i] == 1 && neutral_array[i] == 1) {
      solar_nkinds = solar_nkinds + 1;
    }
  }
  so_gkinds = solar_gkinds;
  so_bkinds = solar_bkinds;
  so_nkinds = solar_nkinds;
  solar_gkinds = 0;
  solar_bkinds = 0;
  solar_nkinds = 0;
}

/// for all Categories
int services_all = 0,
    s_all = 0,
    ui_all = 0,
    u_all = 0,
    iot_all = 0,
    i_all = 0,
    solar_all = 0,
    so_all = 0;
void all_categories() {
  for (int i = 0; i < services_array.length; i++) {
    if (services_array[i] == 1) {
      services_all = services_all + 1;
    }
    if (ui_array[i] == 1) {
      ui_all = ui_all + 1;
    }
    if (iot_array[i] == 1) {
      iot_all = iot_all + 1;
    }
    if (solar_array[i] == 1) {
      solar_all = solar_all + 1;
    }
  }
  s_all = services_all;
  u_all = ui_all;
  i_all = iot_all;
  so_all = solar_all;
  services_all = 0;
  ui_all = 0;
  iot_all = 0;
  solar_all = 0;
}

/// for good Categories
int services_good = 0,
    s_good = 0,
    ui_good = 0,
    u_good = 0,
    iot_good = 0,
    i_good = 0,
    solar_good = 0,
    so_good = 0;
void good_categories() {
  for (int i = 0; i < services_array.length; i++) {
    if (services_array[i] == 1 && good_array[i] == 1) {
      services_good = services_good + 1;
    }
    if (ui_array[i] == 1 && good_array[i] == 1) {
      ui_good = ui_good + 1;
    }
    if (iot_array[i] == 1 && good_array[i] == 1) {
      iot_good = iot_good + 1;
    }
    if (solar_array[i] == 1 && good_array[i] == 1) {
      solar_good = solar_good + 1;
    }
  }
  s_good = services_good;
  u_good = ui_good;
  i_good = iot_good;
  so_good = solar_good;
  services_good = 0;
  ui_good = 0;
  iot_good = 0;
  solar_good = 0;
}

/// for bad Categories
int services_bad = 0,
    s_bad = 0,
    ui_bad = 0,
    u_bad = 0,
    iot_bad = 0,
    i_bad = 0,
    solar_bad = 0,
    so_bad = 0;
void bad_categories() {
  for (int i = 0; i < services_array.length; i++) {
    if (services_array[i] == 1 && bad_array[i] == 1) {
      services_bad = services_bad + 1;
    }
    if (ui_array[i] == 1 && bad_array[i] == 1) {
      ui_bad = ui_bad + 1;
    }
    if (iot_array[i] == 1 && bad_array[i] == 1) {
      iot_bad = iot_bad + 1;
    }
    if (solar_array[i] == 1 && bad_array[i] == 1) {
      solar_bad = solar_bad + 1;
    }
  }
  s_bad = services_bad;
  u_bad = ui_bad;
  i_bad = iot_bad;
  so_bad = solar_bad;
  services_bad = 0;
  ui_bad = 0;
  iot_bad = 0;
  solar_bad = 0;
}

/// for neutral Categories
int services_neutral = 0,
    s_neutral = 0,
    ui_neutral = 0,
    u_neutral = 0,
    iot_neutral = 0,
    i_neutral = 0,
    solar_neutral = 0,
    so_neutral = 0;
void neutral_categories() {
  for (int i = 0; i < services_array.length; i++) {
    if (services_array[i] == 1 && neutral_array[i] == 1) {
      services_neutral = services_neutral + 1;
    }
    if (ui_array[i] == 1 && neutral_array[i] == 1) {
      ui_neutral = ui_neutral + 1;
    }
    if (iot_array[i] == 1 && neutral_array[i] == 1) {
      iot_neutral = iot_neutral + 1;
    }
    if (solar_array[i] == 1 && neutral_array[i] == 1) {
      solar_neutral = solar_neutral + 1;
    }
  }
  s_neutral = services_neutral;
  u_neutral = ui_neutral;
  i_neutral = iot_neutral;
  so_neutral = solar_neutral;
  services_neutral = 0;
  ui_neutral = 0;
  iot_neutral = 0;
  solar_neutral = 0;
}
