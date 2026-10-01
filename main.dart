enum kendaraan {motor, mobil}

int tarifParkir{kendaraan tipeKendaaraan, int waktu} {
    int jam = waktu ~/ 60;
    int menit = waktu % 60;

    if (waktu > 0) {jam += 1}
    if (waktu == 0) {jam = 1}

    int tarif = 0;
}

/* masih on progress. akan dilanjut lagi nanti*/