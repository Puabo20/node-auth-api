import React from "react";
import { createNativeStackNavigator } from "@react-navigation/native-stack";
import HomeScreen from "../screens/HomeScreen";
import AuthScreen from "../screens/AuthScreen";
import VSuiteScreen from "../screens/VSuiteScreen";
import VHardwareScreen from "../screens/VHardwareScreen";
import PaymentsScreen from "../screens/PaymentsScreen";
import StreamingScreen from "../screens/StreamingScreen";

const Stack = createNativeStackNavigator();

const RootNavigator = () => (
  <Stack.Navigator initialRouteName="Auth">
    <Stack.Screen name="Auth" component={AuthScreen} options={{headerShown: false}} />
    <Stack.Screen name="Home" component={HomeScreen} />
    <Stack.Screen name="VSuite" component={VSuiteScreen} />
    <Stack.Screen name="VHardware" component={VHardwareScreen} />
    <Stack.Screen name="Payments" component={PaymentsScreen} />
    <Stack.Screen name="Streaming" component={StreamingScreen} />
  </Stack.Navigator>
);

export default RootNavigator;