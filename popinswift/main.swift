//
//  main.swift
//  popinswift
//
//  Created by Akbar Rizqullah on 03/12/24.
//

import Foundation

print("Hello, World!")

//task motion week 3 basic swift pop

// Protocol
protocol Kendaraan {
    var nama: String { get }
    var kecepatan: Double { get }
    func berjalan()
    func berhenti()
}

// Inheritance (Pewarisan)
protocol Mobil: Kendaraan {
    var tipeBahanBakar: String { get }
    func nyalakanMesin()
    func matikanMesin()
}

struct Sedan: Mobil {
    var nama: String
    var kecepatan: Double
    var tipeBahanBakar: String

    func berjalan() {
        print("\(nama) sedang berjalan dengan kecepatan \(kecepatan) km/jam.")
    }

    func berhenti() {
        print("\(nama) telah berhenti.")
    }

    func nyalakanMesin() {
        print("Mesin \(nama) dinyalakan.")
    }

    func matikanMesin() {
        print("Mesin \(nama) dimatikan.\n")
    }
}

struct Suv: Mobil {
    var nama: String
    var kecepatan: Double
    var tipeBahanBakar: String

    func berjalan() {
        print("\(nama) sedang berjalan dengan kecepatan \(kecepatan) km/jam.")
    }

    func berhenti() {
        print("\(nama) telah berhenti.")
    }

    func nyalakanMesin() {
        print("Mesin \(nama) dinyalakan.")
    }

    func matikanMesin() {
        print("Mesin \(nama) dimatikan.\n")
    }
}

struct Motor: Kendaraan {
    var nama: String
    var kecepatan: Double

    func berjalan() {
        print("\(nama) sedang berjalan dengan kecepatan \(kecepatan) km/jam.")
    }

    func berhenti() {
        print("\(nama) telah berhenti.\n")
    }
}

func aksiKendaraan(kendaraan: Kendaraan) {
    print("Informasi Kendaraan Motor:")
    print("kendaraan: \(kendaraan.nama)")
    print("Kecepatan: \(kendaraan.kecepatan) km/jam")
    kendaraan.berjalan()
    kendaraan.berhenti()
}

func aksiKendaraanMobil(mobil: Mobil, kendaraan:Kendaraan) {
    print("Informasi Kendaraan Mobil:")
    print("kendaraan: \(mobil.nama)")
    print("Kecepatan: \(mobil.kecepatan) km/jam")
    mobil.nyalakanMesin()
    kendaraan.berjalan()
    kendaraan.berhenti()
    mobil.matikanMesin()
}

// Contoh Penggunaan
let mobilSedan = Sedan(nama: "Honda Civic", kecepatan: 120.0, tipeBahanBakar: "Bensin")
let mobilSuv = Suv(nama: "Hyundai Palisade", kecepatan: 60.0, tipeBahanBakar: "Diesel")
let motor = Motor(nama: "Honda Vario", kecepatan: 40.0)

// informasi kendaraan
aksiKendaraan(kendaraan: motor)

aksiKendaraanMobil(mobil: mobilSedan, kendaraan: mobilSedan)
aksiKendaraanMobil(mobil: mobilSuv, kendaraan: mobilSuv)
