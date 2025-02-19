- Apa saja pesan log yang dicetak pada panel Output?
> Platform initialized


- Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. 
Apa saja pesan log yang dicetak pada panel Output?
> Reached objective!

- Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
> Kalau BlueShip mentok ke scene ObjectiveArea, pesan log 'Reached objective!' akan muncul.

-Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
> Node sprite berfungsi untuk menyimpan dan menampilkan gambar yang menjadi representasi sebuah objek.

-Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. 
BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. 
Apa perbedaan dari masing-masing tipe node?
> RigidBody2D dapat digunakan untuk objek dinamis yang dipengaruhi oleh massa, gravitasi seperti player 
atau rintangan yang jatuh,
sementara StaticBody2D digunakan untuk objek yang relatif statis dan tidak dipengaruhi mass/gravity seperti platform.

-Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, 
lalu coba jalankan scene MainLevel. Apa yang terjadi?
> Saya mengubahnya menjadi 4 kg, dan gaya turun menjadi lebih lambat.

-Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, 
lalu coba jalankan scene MainLevel. Apa yang terjadi?
>  Kapal terbangnya jatuh dari platform ketika CollissionShapenya saya disable.

-Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. 
Apa yang terjadi pada visualisasi BlueShip di Viewport?
> Skala ukurannya bisa membesar dan mengecil, arah pesawat menjadi miring, dan posisi berubah. 
Ketika tidak di atas platform ia akan jatuh.

-Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. 
Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) 
namun visualisasinya berada di posisi yang tepat?
> Posisinya StonePlatform dan StonePlatform2 relatif ke parentnya,
sehingga nilai Position di Inspector tetap menampilkan posisi relatif, 
meskipun secara visual kedua platform posisinya benar di dalam scene.
