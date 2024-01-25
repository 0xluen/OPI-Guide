# OPI-LC Node Kurulum Rehberi

## Sistem Gereksinimleri

* CPU 4+ Cores
* 1GB+ RAM
* 200GB SSD
* 10+ MBit/sec Internet service

** Sunucu için Hetzner AX41 2TB öneriyoruz.  **

<a href="https://www.hetzner.com/dedicated-rootserver/matrix-ax"> Hetzner AX41 </a>

Öncelikle sunucumuza "ssh kullanici@ipadresi" şeklinde bağlandıktan sonra , screen -S opi yazıyoruz.
<br>
screen not found hatası alanlar "sudo apt install screen" komutunu yazdıktan sonra tekrar denesin.

1. Kurulum scriptini çalıştıralım : 

<pre class="notranslate"><code>wget -O setup.sh https://raw.githubusercontent.com/Whale-Alpha/Opi-Guide/main/setup.sh && chmod +x setup.sh && ./setup.sh
</code></pre>

<br>
 
 2. (Opsiyonel) Api scriptini çalıştıralım : 

<pre class="notranslate"><code>wget -O setup-api.sh https://raw.githubusercontent.com/Whale-Alpha/Opi-Guide/main/setup-api.sh && chmod +x setup-api.sh && ./setup-api.sh
</code></pre>

<br>