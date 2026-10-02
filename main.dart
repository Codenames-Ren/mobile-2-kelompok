enum vehicle {motorcycle, car}

int parkingRates(vehicle vehicleType, int time) {
    int hours = time ~/ 60;
    int minute = time % 60;

    if (minute > 0) {hours += 1;}
    if (hours == 0) {hours = 1;}

    int rate = 0;

    switch (vehicleType) {
        case vehicle.motorcycle:
            rate = 2000 + (hours - 1) * 1000;
        case vehicle.car:
            rate = 5000 + (hours - 1) * 3000;
    }

    return rate;
}

void main() {
    print("Parkir motor 30 menit : Rp.${parkingRates(vehicle.motorcycle, 30)}");
    print("Parkir motor 150 menit : Rp.${parkingRates(vehicle.motorcycle, 150)}");
    print("Parkir mobil 60 menit : Rp.${parkingRates(vehicle.car, 60)}");
    print("Parkir mobil 181 menit : Rp.${parkingRates(vehicle.car, 181)}");
}