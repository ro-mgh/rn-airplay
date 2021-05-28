import React, { Component } from "react";
import {
  NativeModules,
  requireNativeComponent
} from "react-native";

const { RNAirplay } = NativeModules;
export const AirplayButton = requireNativeComponent("RNAirplayButton", null);
