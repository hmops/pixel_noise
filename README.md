# pixel_noise
Pixel Noise - Music From Images


# Piksellerin Sesi

- Projede herhangi bir görüntünün piksellerinden nasıl bir ses elde edilebileceği hakkında araştırılmış ve minik bir demo gerçekleştirilmiştir.
- Proje kapsamında müzik ve görüntü arasında bir pattern düşünülmüştür. Çünkü hem müzik hem de görüntü kendilerine özgü patternlere sahipler.

## Gidişat
 
- Herhangi bir görüntünün pikselleri, kırmızı, yeşil ve mavi(R G B) olmak üzere üç kanaldan oluşmaktadır. Bu projede piksellerin RGB değerlerini kullanarak görüntüyü oluşturan her bir piksel için bir frekans oluşturmak ve daha sonra frekansları ses haline getirip çalmak hedeflenmektedir.
    - <img src="Pixel.jpg"/>

- RGB değerlerinin kullanım şekli aşağıda verilmiştir:
    - Kırmızı(R): frekans uzunluğu, başka bir deyişle ilgili notanın çalma süresi(note duration)
        - R değeri ne kadar büyük ise nota o kadar uzun çalacak. Eğer R değeri küçük ise notanın çalıacağı süre çok az olur hatta çalsa dahi farkedilmeyebilir. 
    - Yeşil(G): G değeri müzikte yükselme(jump to high) ve inme(sitting)
        - Eğer G değeri çok yüksek ise notanın birden yükseldiği elde edilir. G değeri küşük olması durumunda nota, ana notaya yakın bir seviyede çalacak. 
    - Mavi(B): B değeri ise Harmonik değerlerini belirler. Aşağıdaki gibi 12 kanala bölünmüştür
        <img src="harmonic.png"/>
    - Brightness of pixel: Genlik (Amplitude)

- Görüntüdeki Piksellerin Ele Alınışı:
    - <img src="piksel_okuma.png"/>


