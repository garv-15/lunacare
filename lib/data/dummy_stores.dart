import '../models/medical_store.dart';

final List<MedicalStore> stores = [
  MedicalStore(
    name: "Apollo Pharmacy",
    address: "MG Road",
    isOpen: true,
    openTime: "22:00",
    closeTime: "06:00",
    distance: 0.6,
    rating: 4.6,
    tags: ["24x7", "Emergency"],
  ),
  MedicalStore(
    name: "Jan Aushadhi Kendra",
    address: "District Hospital",
    isOpen: true,
    openTime: "21:00",
    closeTime: "04:00",
    distance: 2.9,
    rating: 4.8,
    tags: ["Govt", "Emergency"],
  ),
  MedicalStore(
    name: "City Medico",
    address: "Station Road",
    isOpen: true,
    openTime: "21:00",
    closeTime: "05:00",
    distance: 1.2,
    rating: 4.2,
    tags: ["Emergency"],
  ),
  MedicalStore(
    name: "24x7 Medicos",
    address: "Ring Road",
    isOpen: true,
    openTime: "00:00",
    closeTime: "23:59",
    distance: 3.0,
    rating: 4.4,
    tags: ["24x7"],
  ),
];