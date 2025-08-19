import React from "react";
import { View, Text, Button, StyleSheet } from "react-native";
import { useAuth } from "../context/AuthContext";

export default function HomeScreen({ navigation }: any) {
  const { logout, user } = useAuth();
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Welcome to PUABO OS Mobile</Text>
      <Text style={styles.subtitle}>User: {user?.username}</Text>
      <Button title="V-Suite" onPress={() => navigation.navigate("VSuite")} />
      <Button title="V-Hardware" onPress={() => navigation.navigate("VHardware")} />
      <Button title="Payments" onPress={() => navigation.navigate("Payments")} />
      <Button title="Streaming" onPress={() => navigation.navigate("Streaming")} />
      <Button title="Logout" onPress={logout} color="red" />
    </View>
  );
}
const styles = StyleSheet.create({
  container: { flex: 1, alignItems: "center", justifyContent: "center" },
  title: { fontSize: 24, fontWeight: "bold" },
  subtitle: { fontSize: 16, marginBottom: 15 },
});