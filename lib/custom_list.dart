class CustomList {
  static List<String> getCustomList(int age, int cigaretteCount, String destinationPage) {
    List<String> myList = [
      'Eğer 10-20 yaş aralığındaki genç bir birey bir hafta sigara içmezse, beyin gelişimi açısından olumlu bir adım atmış olur. Ancak bu kısa süreli bir durum olduğu için genel sağlık üzerinde belirgin bir etki görülmez.',
      'Bir ay sigara içmemek, genç yaşlardaki beyin gelişimi üzerinde daha belirgin olumlu etkiler yapabilir. Ancak bu süreçte, olası bağımlılık belirtileri ortaya çıkabilir ve genç bireyin sigarayı bırakma süreci zorlaşabilir.',
      'Bir yıl boyunca sigara içmeme, genç bir bireyin sağlığı üzerinde önemli olumlu değişikliklere neden olabilir. Beyin gelişimi daha sağlıklı bir şekilde devam eder ve gençlik dönemine özgü sağlık riskleri azalabilir.',
      'Beş yıl boyunca sigara içmemek, genç bir bireyin yaşamında kalıcı olumlu etkilere yol açabilir. Bu süre zarfında sağlıklı bir yaşam tarzına geçiş yapılabilir ve bağımlılık belirtileri hemen hemen tamamen ortadan kalkabilir.',
      'Sigara içmeyi bırakmak, 20-30 yaş aralığındaki bireylerde solunum sistemi üzerinde hızlı bir iyileşmeye yol açar. Bir hafta içmeme durumunda, nefes alma kapasitesi artar ve genel enerji seviyelerinde yükselme görülebilir.',
      'Bir ay sigara içmeme, dolaşım sistemi üzerindeki olumlu etkileri artırır. Kalp-damar sağlığı iyileşir ve kan basıncı normalleşir. Bu süre zarfında, sigaranın neden olduğu öksürük ve solunum problemleri de azalabilir.',
      'Bir yıl süresince sigara içmemek, kalp-damar sistemi üzerinde kalıcı olumlu etkilere neden olabilir. Kanser riski azalır, kan dolaşımı düzelir ve genel sağlık durumu iyileşir.',
      'Beş yıl boyunca sigara içmemek, 20-30 yaş aralığındaki bireyin yaşam beklentisini artırabilir. Akciğer fonksiyonları daha iyi hale gelir, kalp-damar sağlığı güçlenir ve genel sağlık durumu önemli ölçüde iyileşir.',
      '30-50 yaş arasındaki bir yetişkinin bir hafta sigara içmemesi, hemen olumlu etkiler göstermeyebilir, ancak bu kısa süre zarfında solunum sistemi üzerindeki baskı azalır ve enerji seviyeleri artabilir.',
      'Bir ay sigara içmeme durumu, bu yaş grubundaki bireyin dolaşım sistemine önemli faydalar sağlar. Kan basıncı düzelir, kalp ritmi normale döner ve genel enerji seviyeleri yükselir.',
      'Bir yıl boyunca sigara içmemek, 30-50 yaş arasındaki yetişkinin sağlığı üzerinde kalıcı iyileşmelere yol açar. Akciğer fonksiyonları artar, kalp-damar sistemi güçlenir ve genel yaşam kalitesi artar.',
      'Beş yıl boyunca sigara içmemek, 30-50 yaş arasındaki bireyin yaşam süresini uzatabilir. Akciğer kanseri riski önemli ölçüde azalır, solunum yeteneği iyileşir ve kalp-damar sağlığı güçlenir. Bu süre zarfında, genel sağlık durumu belirgin bir şekilde iyileşir.',
      'Sigara içmek, birçok sağlık sorununa neden olan zararlı bir alışkanlıktır. Sigara dumanındaki kimyasal maddeler, akciğer kanseri, kalp hastalıkları, solunum problemleri ve diğer birçok sağlık sorununa yol açabilir. Ayrıca, pasif içicilik yoluyla çevresindekileri de olumsuz etkileyebilir, bu nedenle sigara içmekten kaçınılması önerilir.'
    ];

    int index = 0;

    if (age >= 10 && age <= 20) {
      if (destinationPage == 'EmptyPage1') {
        index = 0;
      } else if (destinationPage == 'EmptyPage2') {
        index = 1;
      } else if (destinationPage == 'EmptyPage3') {
        index = 2;
      } else if (destinationPage == 'EmptyPage4') {
        index = 3;
      }
    } else if (age > 20 && age <= 30) {
      if (destinationPage == 'EmptyPage1') {
        index = 4;
      } else if (destinationPage == 'EmptyPage2') {
        index = 5;
      } else if (destinationPage == 'EmptyPage3') {
        index = 6;
      } else if (destinationPage == 'EmptyPage4') {
        index = 7;
      }
    } else if (age > 30 && age <= 50) {
      if (destinationPage == 'EmptyPage1') {
        index = 8;
      } else if (destinationPage == 'EmptyPage2') {
        index = 9;
      } else if (destinationPage == 'EmptyPage3') {
        index = 10;
      } else if (destinationPage == 'EmptyPage4') {
        index = 11;
      }

    }
    else if (age >= 50) {
      index = 12;
    }


    return [myList[index]];
  }
}
