DOSBox v0.73-DK


======
NOTAT: 
======

Selvom Vi h�ber at DOSBOX en dag vil kunne k�re alle programmer der
nogensinde er lavet til PCen, er vi der ikke endnu. Lige nu er
DOSBox, der k�rer p� en high-end maskine nogenlunde lig med en 486
PC. DOSBox Kan indstilles til at k�re en bred vifte af DOS spil, fra
CGA/Tandy/PCjr klassikere til spil fra Quake �raen.



======
INDEX:
======
1. Hurtigstart
2. FAQ (Ofte Stillede Sp�rgsm�l)
3. Brug
4. Interne Programmer
5. Specielle taster
6. Mapper (Tastatur og joystick indstillinger)
7. Keyboard Layout
8. Serial Multiplayer feature
9. Hvordan resource-kr�vende spil k�res
10. Probleml�sning
11. Config-filen (indstillingsfilen)
12. Sprog-filen
13. Hvordan du bygger din egen version af DOSBox
14. Special thanks
15. Contact



===============
1. Hurtigstart:
===============

 For en hurtig introduktion, skriv INTRO i DOSBox.
Det er vigtigt at du bliver dus med det at montere(mount-kommandoen),
DOSBox g�r ikke selv automatisk drev(ene) (eller dele af drev(ene)), 
tilg�ngelige for emuleringen. 
Se FAQ : "Jeg har et Z istedet for C ved prompten", 
og beskrivelsen af Mount kommandoen (sektion 4).



=======
2. FAQ:
=======

Nogle ofte Stillede Sp�rgsm�l: (Q:= sp�rgsm�l A:=svar)

Q: Jeg har et Z istedet for C ved prompten.
Q: Skal jeg altid udf�re disse kommandoer? Automatisering?
Q: Hvordan �ndrer jeg til fuldsk�rm modus?
Q: Min CD-ROM virker ikke.
Q: Spillet/Programmet kan ikke finde sin CD-ROM
Q: Musen virker ikke.
Q: Der er ingen lyd.
Q: Lyden hakker eller lyder m�rkelig.
Q: Jeg kan ikke skrive \ eller : i DOSBox.
Q: Keyboardet/tastaturet forsinkes.
Q: Cursoren/mark�ren bev�ger sig altid i een retning!
Q: Spillet/programmetgamet k�rer meget langsomt!
Q: Spillet/Programmet k�rer slet ikke/crasher!
Q: Kan DOSBox skade min computer?
Q: Jeg vil gerne �ndre Hukommelses-m�ngde/Cpu hastighed/ems/soundblaster IRQ.
Q: Hvilken lyd-hardware emuler DOSBOX lige nu?
Q: DOSBox g�r ned under opstart, og jeg k�rer arts
Q: Mit Build spil(Duke3D/Blood/Shadow Warrior)virker ikke som det skal.
Q: Storartet README, men jeg forst�r det stadig ikke.




Q: Jeg har et Z istedet for C ved prompten.
A: Du kan g�re dine mapper/directories/biblioteker brugbare som drev i DOSBox
   ved hj�lp af "mount" kommandoen. F. eks. vil, i Windows, kommandoen 
   "mount C D:\GAMES" give dig et C drev i DOSBox som peger mod dit Windows 
   D:\GAMES directory.
   I Linux, vil "mount c /home/username" give dig et C drev i DOSBox som
   peger mod /home/username i Linux.
   Skriv "C:" for at skifte til det f�rn�vnte monterede drev. Hvis Alting gik godt,
   vil DOSBox will vise the prompten "C:\>".


Q: Skal jeg altid udf�re disse kommandoer? Automatisering?
A: Der er i DOSBox's config-fil en [autoexec] sektion. Kommandoerne som er skrevet der
   k�res n�r DOSBox startes, s� du kan bruge denne sektion til at montere.


Q: Hvordan �ndrer jeg til fuldsk�rm modus?
A: Tast alt-enter. Alternativt: Ret DOSBox's config-fil og �ndr muligheden   
   fullscreen=false til fullscreen=true. Leg med muligheden : fullresolution hvis
   fuldsk�rms modus ser forkert ud efter din mening. Tryl alt-enter igen for at 
   komme tilbage fra fuldsk�rms modus.


Q: Min CD-ROM virker ikke.
A: For at montere din CD-ROM i DOSBox Skal du specificere yderligere nogle mulig-
   heder n�r du monterer. 
   For at muligg�re den mest grundl�ggende CD-ROM underst�ttelse :
     - mount d f:\ -t cdrom (Windows)
     - mount d /media/cdrom -t cdrom (Linux)

   M�ske �nsker du m�ske at bruge et andet CD-ROM interface,
   f.eks hvis CD audio ikke virker:      
   For SDL-underst�ttelse(inkluderer ikke lav-niveau CD adgang)
     - mount d f:\ -t cdrom -usecd 0 -noioctl
   For underst�ttelse af ioctl med digital audio extraction for CD audio
   (kun Windows, nyttigt for Vista):
     - mount d f:\ -t cdrom -ioctl_dx
   For underst�ttelse af ioctl med MCI for CD audio(kun Windows):
     - mount d f:\ -t cdrom -ioctl_mci
   For at tvinge brug af ioctl-only(kun Windows):
     - mount d f:\ -t cdrom -ioctl_dio
   For at muligg�re lav-niveau aspi-underst�ttelse(win98 med aspi-lag installeret) :
     - mount d f:\ -t cdrom -usecd 0 -aspi
   
   Kommandoerne :   - d   drevbogstav du f�r i DOSBox
                    - f:\ placering af cdrom i din PC.
                    - 0   Nummeret af �CD-ROM drevet, findes med mount -cD   
                          (bem�rk at denne v�rdi er kun n�dvendig n�r du bruger SDL
                           for CD audio, ellers ignoreres den)
   Se ogs� n�ste sp�rgsm�l : Spillet/Programmet kan ikke finde sin CD-ROM.


Q: Spillet/programmetgamet kan ikke finde sin CD-ROM.
A: V�r sikker p� at montere din CD-ROM med -t cdrom switchen, dette vil starte
   MSCDEX fladen som DOS spil kr�ver for at give adgang til CD-ROM.
   Pr�v ogs� at tilf�je korrekt label/etik�t (-label LABEL) til mount kommandoen. 
   hvor LABEL er CD-ROMens CD-label(volume ID).
   Under Windows kan du specificere -ioctl -aspi eller -noioctl. Se beskrivelse 
   i sektion 4 om deres betydning og deres audio-relaterede mulugheder -ioctl_dx,
   ioctl_mci, ioctl_dio.
  
   Pr�v at lave et CD-ROM image(helst CUE/BIN), og brug DOSBox's interne 
   IMGMOUNT kommando til at montere imaget. Dette muligg�r meger god lav-niveau
   CD-ROM support p� alle operativ systemer.


Q: Musen virker ikke.
A: Normalt finder DOSBox ud af om et spil bruger Mus.N�r du klikker p� sk�rmen
   (DOSBox vinduet)skulle den l�se/bindes, og virke. 
   Ved nogle spil virker dette ikke, s� du m� selv l�se/binde musen, ved at taste
   CTRL-F10.


Q: Der er ingen lyd.
A: V�r sikker p� at lyden er korrekt indstillet i spillet. Dette g�res under 
   installationen eller med et setup/setsound program som f�lger med spillet. 
   Se f�rst om der er auto-detektion. Hvis der ikker er det, s� pr�v at v�lge
   soundblaster eller soundblaster16 med default settings : "address=220 irq=7 
   dma=1". Du �nsker m�ske ogs� at v�lge midi p� address 330 som musik enhed.
   Parametrene til de emulerede lydkort kan �ndres i DOSBox's config-fil.
   Hvis du stadig ikke f�r nogen lyd kan du s�tte core til normal og bruge nogle 
   lavere valgte cycles v�rdier (F.eks. cycles=2000). V�r ogs� sikker p� at din
   lydenhed leverer lyd.
   I visse tilf�lde kan det v�re godt at bruge en anden emuleret lydenhed
   f.eks soundblaster pro(sbtype=sbpro1 i DOSBox's config fil) eller
   gravis ultrasound(gus=true).


Q: Lyden hakker eller lyder m�rkelig.
A: Du bruger for meget cpu kraft til at holde DOSBox k�rende ved den aktuelle 
   hastighed. Du kan neds�tte cycles, skippe frames reducere sampling raten p�
   den p�g�ldende lydenhed (se DOSBox's config-fil) eller mixer-enheden.
   Du kan ogs� for�ge prebufferen i config-filen. 
   Hvis du bruger cycles=max eller =auto , s� v�r sikker p� at der ingen baggrundspro-
   cesser er, som forstyrrer! (s�rligt hvis de bruger harddisken)


Q: Jeg kan ikke skrive \ eller : i DOSBox.
A: Dette er et kendt problem. Det opst�r hvis dit keyboard/tastatur layout 
   ikke er har et tilsvarende DOS layout (eller ikke blev genkendt korrekt),
   eller tasterne er forkert tildelt.
   Nogle mulige l�sninger:
     1. Brug / istedet for, eller Alt-58 istedet for : og Alt-92 istedet for \.
     2. Lav om p� dit DOS tastatur layout (se sektion 7 : Keyboard layout).
     3. Tilf�j de kommandoer(extra) som du vil k�re i [autoexec]-sektionen 
        i DOSBox's "config-fil".
     4. �bn config-filen og lav usescancodes=false om til usescancodes=true.
     5. Skift keyboard layout i dit operativsystem.

    Bem�rk at hvis v�rtslayoutet ikke kan genkendes, eller keyboardlayout er 
    sat til none i DOSBox's config-fil, bruges standard US layout.
    Pr�v i s�fald tasterne omkring "enter" for \ og pr�v shift og tasterne 
    imellem "enter" and "l" for ":" . 


Q: Keyboardet/tastaturet forsinkes.
   S�nk prioritetssindstillingen i DOSBox's config-fil, pr�v f.eks. :
   "priority=normal,normal". Du kan ogs� s�tte et lavere antan cycles
   (brug fast antal cycles under start f.eks cycles=10000).  


Q: Cursoren/mark�ren bev�ger sig altid i een retning!
   Se om det stadig sker hvis du sl�r joystick emuleringen fra,
   s�t joysticktype=none i [joystick] sektionen i DOSBox's config-fil.
   Du skal m�sk� ogs� pr�ve at tr�kke stik(ene) ud p� dit/dine joystick(s).
   Hvis du �nsker at bruge joystick i spillet, pr�v s� at s�tte timed=false,
   calibr�r joysticket(b�de dit OS og i spillet eller dit spils setup).


Q: Spillet/programmetgamet k�rer meget langsomt!
A: Se i sektionen "Hvordan man k�rer resource-kr�vende spil" for mere 
   information.


Q: Spillet/Programmet k�rer slet ikke/crasher!
A: Se sektion 10: Probleml�sning.


Q: Kan DOSBox skade min computer?
A: DOSBox kan ikke skade din computer mere et hvilket som helst andet resource
   kr�vende program. for�gelse af cycles overclocker ikke din fysiske CPU.
   for h�jt sat cycles har en negativ ydelses effekt p� software der k�re i DOSBox.


Q: Jeg vil gerne �ndre Hukommelses-m�ngde/Cpu hastighed/ems/soundblaster IRQ.
A: Dette er muligt! Du skal bare lave en config-fil: config -writeconf configfile.
   Start din favorit editor og gennemse indstillingerne. For at starte DOSBox
   med dine nye indstillinger: dosbox -conf config-fil
   Se flere beskrivelsen af config kommandoen i Sektion 4.


Q: Hvilken lyd-hardware emuler DOSBox lige nu?
A: DOSBox emulerer fleres lydenheder:
   - Intern PC speaker/h�jtaler
     Denne emulering inklud�rer b�de tonegenerator og flere former af digitalt 
     lydoutput gennem den interne speaker/h�jtaler.
   - Creative CMS/Gameblaster
     Dette er det f�rste kort lavet af Creative Labs(R). Default 
     indstillinger er sat til port 0x220.  Det b�r bem�rkes at det kan give pro-
     blemer at bruge det sammen med Adlib emulering.
   - Tandy 3 voice 
     Emuleringen af denne lyd hardware er komplet med undtagelse af st�jkanalen.
     St�jkanalen er ikke s�rlig godt dokumenteret  og er som s�dan kun et bedste 
     g�t p� lydens n�jagtighed.
   - Tandy DAC
     Emuleringen af Tandy DAC bruger soundblaster emulatering, derfor 
     v�r sikker p� at soundblaster ikke er sl�et fra i DOSBox's config-fil.
     Tandy DAC er kun emuleret p� bios-niveau.
   - Adlib
     Denne emulering er n�sten perfekt og indeholder Adlib's evne
     til n�sten at kunne spille digitalliseret lyd.
   - SoundBlaster 16/ SoundBlaster Pro I & II /SoundBlaster I & II
     Default leverer DOSBox Soundblaster 16 niveau 16-bit stereo sound. 
     Du kan v�lge en anden SoundBlaster version i DOSBox'sconfig-fil (Se Interne
     kommandoer: CONFIG).
   - Disney Soundsource
     Som bruger af printer porten, kan denne lydenhed kun udsende digital lyd.
   - Gravis Ultrasound
     Emuleringen af denne hardware er n�sten komplet, selvom midimuligheden er
     udeladt, siden en MPU-401 er emuleret in anden kode.
   - MPU-401
     En  MIDI gennemgangs flade er ogs� emuleret.  Denne type lydudgang virker
     kun brugt sammen med en General Midi eller MT-32 enhed.


Q: DOSBox g�r ned under opstart, og jeg k�rer arts
A: Dette er i virkeligheden ikke et DOSBox problem, men l�sningen er at s�tte 
   environment variable SDL_AUDIODRIVER til alsa or oss.

Q: Mit Build spil(Duke3D/Blood/Shadow Warrior)virker ikke som det skal.
A: Pr�v f�rst at finde en �ndret udgave af spillet. disse giver en
   en bedre oplevelse. For at l�se grafik-problemerne som forekommer med
   DOSBox i h�jere opl�sninger. �bn DOSBox's config-fil find machine=svga_s3
   lav svga_s3 om til vesa_nolfb.


Q: Storartet README, men jeg forst�r det stadig ikke.
A: Et kig p� "The Newbie's pictorial guide to DOSBox" lokaliseret p� 
   http://vogons.zetafleet.com/viewforum.php?f=39 kan m�sk� hj�lpe dig.
   Pr�v ogs� the wiki of dosbox:
   http://dosbox.sourceforge.net/wiki/


For flere sp�rgsm�l, l�s denne README's reminder og/eller check 
site/forum:
http://dosbox.com




========
3. Brug:
========

Et overblik over kommandolinie options/mulighederne du kan bruge med DOSBox.
Windows  brugere m� �bne cmd.exe eller command.com eller rette i
Genvej/shortcut til DOSBox.exe for dette.
Mulighederne er brugbare for alle operativ systemer medmindre der st�r andet
i options beskrivelsen:

dosbox [navn] [-exit] [-c command] [-fullscreen] [-conf congfigfile] 
       [-lang sprog-fil] [-machine maskinetype] [-noconsole]
       [-startmapper] [-noautoexec] [-securemode] 
       [-scaler scaler | -forcescaler scaler]
       [-version]
       
dosbox -version
dosbox -editconf program
dosbox -opencaptures program
dosbox -printconf
dosbox -eraseconf

  name   
        Hvis "navn" er et directory/en mappe/et bibliotek, bliver det/den/det 
        monteret som C: drevet.
        Hvis "navn" er en eksekverbar fil, bliver "navn"s directory/mappe/bibliotek
        monteret som C: drevet og "navn" eksekveret.
    
  -exit  
        DOSBox lukker sig selv n�r programmet "navn" afsluttes.

  -c command
        K�rer den specificerede kommando f�r "navn" k�res. Der kan specificeres flere 
        kommandoer. Hver kommando starter dog med "-c".
        En kommando kan v�re et internt program, en DOS kommando eller en eksekverbar
        fil p� et monteret drev.

  -fullscreen
        Starter DOSBox i fuldsk�rm modus.

  -conf config-fil
        Starer DOSBox med options/muligheder specificeret i "config-fil".
        Der kan v�re flere -conf options.
        Se kapitel 11 for flere detaljer.

  -lang sprog-fil 
        Start DOSBox med sproget specificeret i "sprog-fil".

  -machine maskinetype
        S�t DOSBox til at emulere en speciel typemaskine. brugbare valg er:
        hercules, cga, pcjr, tandy, svga_s3 (default) s�vel de andre
        svga chipsets der er n�vnt i the DOSBox's config-fil-hj�lp.
        b�de grafikkort og tilg�ngelige lydkort. svga_s3 tilf�jer ogs� vesa-emulering.
        For nogle specielle vga-effekter, kan v�lges machine typen vgaonly, bem�rk
        at dette fjerner svga muligheder og kan v�re (betydelig) langsommere p� grund
        af den meget st�rre emuleringsprecission.
        Valget af maskinetype anf�gter b�de grafikkort og tilg�ngelige lydkort.
        

  -noconsole (Windows Only)
        Start DOSBox uden at vise konsol-vinduet. Output bliver omstillet til
        stdout.txt and stderr.txt
	
  -startmapper
        F� direkte adgang til keymapperen ved opstart. Brugbar hvis du har 
        keyboard/tastatur problemer.

  -noautoexec
        Skipper [autoexec] sektionen af den indl�ste config-fil.

  -securemode
        Samme som -noautoexec, men tilf�jer config.com -securemode i 
        bunden af AUTOEXEC.BAT (hvilket fjerner �ndringer i forhold  til hvordan 
        drevene monteres i selve DOSBox).

  -scaler scaler
        Bruger scaleren angivet med "scaler". Se i DOSBox's config-fil
        hvilke scalere du kan bruge.

  -forcescaler scaler
        Ligesom -scaler parameteren, men pr�ver at tvinge brugen af
        den specificerede scaler selvom den m�sk� ikke passer.

  -version
        Skriver version information og afslutter. Brugbart for Frontends.

  -editconf program
        Kalder program med config-filen som f�rste parameter.
        Man kan skrive denne kommando mere end en gang. Hvis man g�r det
        �bnes andet program, hvis det f�rste fejler.

  -opencaptures program
        Kalder program med captures folderen/directoryet/biblioteket som
        f�rste parameter.
  
  -printconf
        Skriver placeringen af default config-fil.

  -eraseconf
        Fjerner default config-fil.

Note: S�t hele navn/kommando/config-fil/sprogfil i "" anf�relsestegn hvis
      navn/kommando/config-fil/sprogfil indeholder et eller flere mellemrum.
      ("kommando eller fil navn"). Hvis du har brug for at bruge anf�relsestegn
      indeni anf�ressestegn (mest sandsynlig med -C og mount). 
      Windows og OS/2 brugere kan bruge 'enkelte anf�relsestegn' indeni alm.
      anf�relsestegn. Andre skulle kunne bruge escaped alm. anf�relsestegn indeni
      alm. anf�relsestegn.
      win -c "mount c 'c:\program files\'" 
      linux -c "mount c \"/tmp/navn med mellemrum\""

For eksempel(Windows):

dosbox c:\atlantis\atlantis.exe -c "MOUNT D C:\SAVES"
  Denne kommando monterer c:\atlantis som c:\ og k�rer atlantis.exe.
  efter at have monteret C:\SAVES som D drevet.

Under Windows kan du ogs� "tr�kke og slippe" /directories/mapper/biblioteker og 
eksekverbare filer p� DOSBox.exe og genveje til samme.



=======================
4. Interne Programmmer:
=======================

DOSBox underst�tter de fleste DOS kommandoer der bruges i command.com.
Du kan skrive "HELP" ved prompten(efterfulgt af enter) for at f� en liste over 
de interne kommandoer.

Desuden er de f�lgende kommandoer tilg�ngelige: 

MOUNT "Emuleret Drev bogstav" "Rigtige Drev eller Directory" 
      [-t type] [-aspi] [-ioctl] [-usecd nummer] [-size drevst�rrelse] 
      [-label drevlabel] [-freesize st�rrelse_i_mb]
      [-freesize size_in_kb (floppies)]  
MOUNT -cd
MOUNT -u "Emuleret Drev Bogstav"

  Program til at montere lokale directories/mapper/biblioteker som drev i DOSBox.

  "Emuleret Drev Bogstav"
        Drev Bogstavet i DOSBox (f.eks. C).

  "Rigtige Drev bogstav (normalt for CD-ROMMer i Windows) or Directory"
        Det/den lokale directory/mappe/bibliotek du �nsker at tilg�ngeligt i DOSBox.

  -t type
        Type af monteret directory. f�lgende kan bruges: dir (default),
        floppy, cdrom.

  -size drevst�rrelse     
        S�tter st�rrelsen p� drevet, hvor drevst�rrelse er angivet i :
        "bps,spc,tcl,fcl":
           bps: bytes pr sektor, default 512 for regul�re drev og
                2048 for CD-ROM drev
           spc: sektorer pr klynge, normalt mellem 1 and 127
           tcl: total klynger, mellem 1 and 65534
           fcl: total frie klynger, mellem 1 og tcl

  -freesize st�rrelse_i_mb
        S�tter m�ngden af fri plads p� drev i megabytes.
        (regul�re drev) eller kilobytes  (floppy drev).
        Dette er en simplere version af -size.	

  -label drevlabel
        S�tter navnet p� drevet til "drevlabel". Er n�dvendigt p� nogle systemer
        hvis CD'ens label ikke bliver l�st korrekt (V�rdifuldt n�r et program ikke 
        kan finde sin CDROM). Hvis du ikke specificerer en/et label og der er valgt
        lav-niveau underst�ttelse (-usecd # og/eller -ioctl/aspi): 
          For Windows: label bliver hentet fra "Rigtige Drev".
          For Linux: label bliver sat til NO_LABEL.

        Hvis du specificerer en/et label, vil den/dette label vare lige s� l�nge
        som drevet er monteret. Det vil ikke blive opdateret !!

  -aspi
        Tvinger brugen af aspi-lag. Kun brugbar hvis cdrom monteres under 
        Windows systemer med ASPI-Lag.

  -ioctl (automatisk valg af CD audio interface)
  -ioctl_dx (brug digital audio extraction for CD audio)
  -ioctl_dio (ioctl kald bruges for CD audio)
  -ioctl_mci (MCI bruges for CD audio)

  -noioctl   
        Tvinger brug af ioctl Kommandoer. Kun brugbar hvis CD-ROM monteres under 
        et Windows OS som underst�tter dem (Win2000/XP/NT).
        Valgene er kun forskellige i m�den audio bliver behandlet.
        Det foretr�kkes at bruge -ioctl_dio(f�rrest resourcer), men virker det ikke
        kan -ioctl_dx(eller -ioctl_mci) bruges.  

  -usecd nummer
        Kan bruges p� alle systemer, under Windows skal -noioctl switchen v�re tilstede 
        for at kunne bruge -usecd switchen. 
        G�r det muligt at v�lge drevet, SDL skal bruge. Brug det hvis det forkerte 
        eller ingen CDROM-drev bliver monteret n�r du bruger SDL CDROM interfacet.
        "nummer" kan findes med kommandoen "MOUNT -cd". 
      
  -cd
        Viser alle SDL-fundne cdrom drev og deres numre Bruges sammen med -usecd.
        Se informationen under -usecd ovenover. 
  -u
        Fjerner monteringen. Virker ikke for Z:\.

  Note: Det er muligt at montere lokalt directory/mappe/bibliotek som cdrom drev. 
        S� er der ingen Hardware Underst�ttelse.

  I bund og grund tillader MOUNT dig at montere reel hardware til DOSBox's emu-
  leret PC.
  S� MOUNT C C:\GAMES f�r DOSBox til at bruge dit  C:\GAMES directory som C:
  i DOSBox. MOUNT tillader dig ogs� ogs� at �ndre drev-bogstavs-identifikation 
  for programmer som kr�ver specielle drev-bogstaver.
  
  For example: Touche: Adventures of The Fifth Musketeer skal k�res p� dit C:
  drev. N�r du bruger DOSBox og mount ommandoen, kan du snyde programmet til at
  tro at det er p� C drevet, og i virkeligheden placere det hvor du har lyst. For
  eksempelkan du hvis spillet er i D:\OLDGAMES\TOUCHE,vil kommandoen
  MOUNT C D:\OLDGAMES tillade dig at k�re Touche D drevet.

  Det er ikke anbefalet at Montere hele C drevet med MOUNT C C:\ Det samme g�lder
  for at montere roden et andet drev, bortset fra CD-ROMer (grundet af deres ikke 
  skrivebare natur). Ellers kan du eller DOSBox lave fejl - s� du risikerer at 
  miste alle dine filer.
  Det anbefales at du placerer alle dine programmer/spil i et/en
  underdirectory/undermappe/underbibliotek og monterer det/den.

  Generelle MOUNT Eksempler:
  1. At montere c:\DirX som diskette : 
     mount a c:\DirX -t floppy
  2. At montere system cdrom drev E som cdrom drev D i DOSBox:
     mount d e:\ -t cdrom
  3. At montere system cdrom drev p� mountpoint /media/cdrom as cdrom drive D 
     i DOSBox:
     mount d /media/cdrom -t cdrom -usecd 0
  4. At montere et drev med 870 mb fri diskplads (simpel version):
     mount c d:\ -freesize 870
  5. At montere et drev med 870 mb free diskspace (kun eksperter, fuld kontrol):
     mount c d:\ -size 4025,127,16513,1700
  6. At montere /home/user/dirY som drev C in DOSBox:
     mount c /home/user/dirY
  7. At montere directory hvor DOSBox blev startet som D i DOSBox:
     mount d .
     (l�g m�rke til . som repr�senter mappen hvor DOSBox blev startet)  


MEM
  Program til at vise st�rrelsen p� fri hukommelse.


VER
VER set hoved_version [under_version]
  Viser nuv�rende DOSBox version og raporteret DOS version
  (uden parameter).
  �ndrer den raporterede DOS version med "set" parameteren,
  f.eks: "VER set 6 22" for at f� DOSBox til at raportere DOS 6.22
  som version nummer.


CONFIG -writeconf lokal-fil
CONFIG -writelang lokal-fil
CONFIG -securemode
CONFIG -set "sektion egenskab=v�rdi"
CONFIG -get "sektion egenskab"

  CONFIG kan bruges til at �ndre eller foresp�rge forskellige indstillinger i 
  DOSBox under brug. CONFIG kan gemme "nuv�rende indstillinger" og "sprogstrenge"
  til disken(f.eks generere en dansk dosbox.conf). CONFIG Information om alle 
  mulige sektioner kan findes i sektion 11 (CONFIG-filen).

  -writeconf lokal-fil
       Skriver de nuv�rende indstillinger til fil "lokal-fil" er lokaliseret p� 
       det lokale drev ikke p� et monteret drev i DOSBox. 
       CONFIG-filen kontrollerer forskellige DOSBox-indstillinger : 
       st�rrelsen p� emuleret hukommelse, de emulerede lydkortog mange andre ting
       CONFIG-filen giver dig ogs� adgang til AUTOEXEC.BAT.
       Se sektion 11 (Config-Filen) for mere information.

  -writelang lokal-fil
       Skriver de nuv�rende sprog-indstillinger til fil. "lokal-fil" er lokali-
       seret p� det lokale drev ikke p� et monteret drev i DOSBox. 
       Sprog-filen kontrolerer alle synlige output fra de interne kommandoer og
       den interne DOS.

  -securemode
       Skifter DOSBox til mere sikker modus. I dette modus virker de interne
       kommandoer MOUNT, IMGMOUNT and BOOT ikke. Det er heller ikke muligt at 
       kreere en ny config-fil eller language-fil i dette modus.
       (Advarsel: du kan kun afslutte dette modus ved at genstarte DOSBox.)

  -set "sektion egenskab=v�rdi"
       CONFIG vil pr�ve at s�tte p�g�ldende egenskab til en ny v�rdi. Lige nu
       kan CONFIG ikke fort�lle om kommandoen lykkedes eller ikke.

  -get "sektion egenskab"
       Nuv�rende v�rdi af p�g�ldende egenskab skrives og gemmes i milj�-variablen 
       %CONFIG%.Denne kan bruges til at gemme v�rdien n�r man bruger batch filer.

  B�de "-set" og "-get" virker fra batch filer og kan bruges til at generere egne
  indstillinger for hvert spil.
  
  Eksempler:
  1. At lave  en configfil i nuv�rende directory/mappe/bibliotek:
      config -writeconf dosbox.conf
  2. At s�tte cpu cycles til 10000:
      config -set "cpu cycles=10000"
  3. At afbryde ems hukommelses emulering:
      config -set "dos ems=off"
  4. At se hvilken cpu core/kerne der bruges.
      config -get "cpu core"


LOADFIX [-size] [program] [program-parameters]
LOADFIX -f
  Program til at reducere m�ngden af fri hukommelse. Brugbar til gamle
  programmer der ikke forventer meget fri hukommelse. 

  -size	        
        antal kilobytes to "�de op", default = 64kb
  
  -f
        frig�r alt tidligere allokeret hukommelse
  

Eksempler:
  1. At starte mm2.exe og allokere 64kb hukommelse 
     (mm2 will have 64 kb less available) :
     loadfix mm2
  2. At starte mm2.exe og allokere 32kb hukommelse :
     loadfix -32 mm2
  3. At frig�re tidligere allokeret hukommelse :
     loadfix -f


RESCAN
  F�r DOSBox til at genindl�se directory/mappe/biblioteks strukturen. Brugbar 
  hvis du har �ndret noget, p� et monteret drev, udenfor DOSBox. (CTRL - F4 
  g�r ogs� dette!)
  

MIXER
  F�r DOSBox til at vise nuv�rende lydindstillinger. 
  Herer mulighederne for at �ndre dem:
  
  mixer channel left:right [/NOSHOW] [/LISTMIDI]
  
  channel
      Kan v�re : MASTER, DISNEY, SPKR, GUS, SB, FM,  [CDAUDIO].
      CDAUDIO er kun tilg�ngeligt hvis et CDROM interface med volume  kontrol
      er muliggjort (CD image, ioctl_dx). 

  left:right
      Lydniveauet i procent. Hvis du s�tter D foran �ndres det til 
      deciBell (eksempel mixer gus d-10).
  
  /NOSHOW
      Forhindrer DOSBox  i at vise resultatet hvis du s�tter et lydniveau.

  /LISTMIDI
      Skriver en liste over tilg�ngelige midi enheder p� din pc (Windows). 
      Du kan v�lge en anden enhed end Windows default midi-mapper, ved at til-
      en linie 'config=id' til [midi] sektionen in the Config-filen, hvor 'id' 
      er nummeret p� enheden fra listen genereret af LISTMIDI.


IMGMOUNT
  Et program til am montere disk images og CD-ROM images i DOSBox (f.eks. en iso).
  
  IMGMOUNT DREV [imagefil] -t [image_type] -fs [image_format] 
            -size [sectorsbytesize, sectorsperhead, heads, cylinders]
  IMGMOUNT DRIVE [imagefile1, .. ,imagefileN] -t iso -fs iso 

  imagefil
      Placering af image-fil der skal monteres i DOSBox. Placeringen kan v�re p� 
      et monteret drev i DOSBox, eller p� din fysiske disk. Det er ogs� muligt at
      montere CD-ROM images (ISOer eller CUE/BIN), Hvis du har brug for at kunne 
      "skifte cd" skal du skrive alle images i r�kkef�lge 
      (se n�ste indgang)
   
      CUE/BIN s�t, er de foretrukne CD-ROM images da de kan indeholde lydspor,
      modsat ISOer (som kun kan indeholde data-spor). N�r du skal 
      montere CUE/BIN, skal du altid bruge .CUE-filen

  imagefile1, .. ,imagefileN
      Placeringen af image-filer der skal monteres i DOSBox. At specificere et 
      antal image-filer er kun tilladt for CD-ROM images. CD'erne kan 
      skiftes med CTRL-F4 til enhver tid. Dette er n�dvendigt med spil som bruger
      flere CD-ROMS og kr�ver at CD'en bliver skiftet undervejs i spillet.
   
  -t 
      F�lgende er godkendte image typer:
        floppy: Specificerer et eller flere floppy image(s).  DOSBox finder selv 
        diskens geometri( 360K, 1.2MB, 720K, 1.44MB, osv.).
        iso:    Specificerer et CD-ROM iso image.  Geometrien bliver sat automatisk
                sat. Kan v�re en iso eller cue/bin.
        hdd:    Specificerer et harddisk image. Den brugelige CHS geometri skal
                skrives for at det virker.

  -fs 
      F�lgende er brugbare filsystem formater:
        iso:  Specificerer ISO 9660 CD-ROM formatet.
        fat:  Specificerer at imaget bruger FAT filsystemet. DOSBox vil fors�ge
              at montere dette image som et drev i DOSBox og g�re filerne tilg�ngelige 
              i DOSBox.
        none: DOSBox G�r ikke noget fors�g p� at l�se filsystemet p� disken.
              Dette bruges hvis hvis du skal formatere den eller starte den med med 
              BOOT kommandoen.  N�r du bruger "none" filsystem, er det bedre at
              specificere drevnummer (2 eller 3, 
               2 = master, 3 = slave) end et drevbogstav.  
              For eksempel monteres et 70MB image som slave drev, 
              s�dan:
                "imgmount 3 d:\test.img -size 512,63,16,142 -fs none" 
                (uden anf�relsestegn)  sammenlignet med en montering for at l�se 
                drevet i DOSBox, som ser s�dan ud: 
                "imgmount e: d:\test.img -size 512,63,16,142"

  -size 
     Specificering af drevets Cylindre, Heads og Sektorer.
     Er n�dvendigt for at montere drev images.
     
  Et eksempel p� hvordan man monterer CD-ROM images:
    1a. mount c /tmp
    1b. imgmount d c:\miniso.iso -t iso
  eller (som ogs� virker):
    2. imgmount d /tmp/miniso.iso -t iso


BOOT
  Boot starter floppy images eller hard disk images uafh�ngigt af operativ-
  systemes emuleringen DOSBox tilbyder. Dette tillader dig at spille starter disketter
  eller starte andre operativsystemer.
  Hvis det valgte emulerede system er PCjr (machine=pcjr) kan boot kommandoen
  bruges til at indl�se PCjr magasiner (.jrc). 

  BOOT [diskimg1.img diskimg2.img .. diskimgN.img] [-l drevbogstav]
  BOOT [cart.jrc]  (PCjr only)

  diskimgN.img 
     Kan v�re et relativt nummer p� diskette/floppy -images der �nskes,monteret
     efter at DOSBox starter(boots) det specificerede drevbogstav.
     du kan taste CTRL-F4 for at skifte fra nuv�rende disk til n�ste disk
     p� listen. Listen starter forfra efter sidst disk image.

  [-l drevbogstav]
     Denne parameter tillader dig at specificere drevet du vil starte fra.  
     Default er A drevet, floppy drevet. Du kan ogs� starte et harddisk image 
     monteret som master ved at specificere "-l C" uden anf�relsestegn, eller
     drevet som slave ved at specificere "-l D"
     
   cart.jrc (PCjr only)
     N�r emulering af PCjr er sl�et til, kan man indl�se magasiner med 
     BOOT kommandoen. Der er stadig begr�nset underst�ttelse.


IPX

  Det er n�dvendigt at muligg�re IPX netv�rk i DOSBox's Config-fil.

  Al IPX-netv�rk bliver styret gennem det interne DOSBox program IPXNET. 
  For hj�lp til IPX netv�rk i DOSBox, tast "IPXNET HELP" (uden anf�relsestegn),
  s� f�r du en liste over kommandoer og relevant dokumentation. 

  Hvad ang�r at s�tte et netv�rk op, skal den ene PC v�re server. Dette sker med 
  kommandoen : "IPXNET STARTSERVER" (uden anf�relsestegn) i en k�rende DOSBox. 
  Server DOSBox'en tilf�jer automatisk sig selv til det virtuelle IPX netv�rk.
  Du skal taste "IPXNET CONNECT <computer v�rts name eller IP>" for hver eneste 
  computer som tilf�jes det virtuelle IPX netv�rk, 
  For eksempel, hvis din server er p� bob.dosbox.com, skal du taste 
  "IPXNET CONNECT bob.dosbox.com" p� hver eneste ikke-server maskine. 
  
  At spille spil der kr�ver Netbios skal du bruge en fil som hedder NETBIOS.EXE 
  fra Novell. Opret IPX forbindelsen som forklaret ovenover og k�r s� "netbios.exe". 

  F�lgende er en IPXNET kommando reference: 

  IPXNET CONNECT 

     IPXNET CONNECT  �bner forbindelsen til en IPX kanaliseret server, som k�rer
     p� en anden DOSBox maskine. "addresse" parameteren specificerer IP adressen
     eller v�rtsnavnet p� server-PC'en. Du kan ogs� specificere hvilken UDP port
     du vil bruge. Default bruger IPXNET port 213 - den til IPX kanaliseret 
     tildelte IANA port - til sin forbindelse. 

     Syntaxen for IPXNET CONNECT er: 
     IPXNET CONNECT addresse <port> 

  IPXNET DISCONNECT 

     IPXNET DISCONNECT lukker forbindelsen til den IPX kanaliserende server. 

     Syntaxen for IPXNET DISCONNECT er: 
     IPXNET DISCONNECT 

  IPXNET STARTSERVER 

     IPXNET STARTSERVER starter en IPX kanaliserende server p� den k�rende DOSBox. 
     Default, vil serveren acceptere forbindelser p� UDP port 213, selvom dette kan 
     �ndres. DOSBox opretter automatisk en klient-forbindelse til IPX 
     kanaliseringsserveren n�r denne er startet.

     Syntaxen for IPXNET STARTSERVER er:
     IPXNET STARTSERVER <port>

    Hvis serveren er bag en router skal UDP port <port> videresendes til den computer.

     P� Linux/Unix-based systemer kan port numbers lavere end 1023 kun bruges med 
     root privilegier. Brug porte h�jere end 1023 p� disse systemer.

  IPXNET STOPSERVER

     IPXNET STOPSERVER stopper IPX kanaliserings-serveren som er k�rer p� nuv�rende
     DOSBox. Man b�r forsikre sig om at alle andre forbindelser til ogs� er af-
     sluttet, da nedlukning af serveren kan v�re skyld i lockups/frysninge p� andre 
     maskiner som stadig benytter IPX kanaliserings-serveren. 

     Syntax for IPXNET STOPSERVER is: 
     IPXNET STOPSERVER 

  IPXNET PING

     IPXNET PING rundsender en ping foresp�rgsel p� det IPX kanaliserede netv�rk.
     Til svar vil alle de tilsluttede computere rapportere tiden det tog at sende 
     og modtage ping foresp�rgslen. 

     Syntaxen for IPXNET PING is: 
     IPXNET PING

  IPXNET STATUS

     IPXNET STATUS rapporterer status p� nuv�rende DOSBox's IPX kanaliserede 
     netv�rk. Hvis du vil have en liste over alle computere tilsluttet netv�rket,
     brug IPXNET PING kommandoen. 

     Syntaxen for IPXNET STATUS er: 
     IPXNET STATUS 


KEYB [Sprogkode [kodeside [kodesidefil]]]
  �ndrer keyboard layoutet.V�r venlig at se sektion 7, hvis du �nsker detaljeret 
  information om tastatur layouts.

  [Sprogkode] er en streng best�ende af 2 bogstaver (i specielle tilf�lde flere),
  nogle eksempler er : GK (Greece),  IT (Italy) eller DK (Danmark). Den specificerer
  hvilket keyboard/tastatur layout der skal bruges.

  [kodeside] er nummeret p� kodesiden der skal bruges. Keyboard/tastatur layoutet 
  skal give underst�ttelse for den specificerede kodeside, ellers kan layoutet ikke 
  indl�ses. Hvis der ikke er angivet nogen kodeside, bliver der automatisk valgt 
  en passende kodeside for det �nskede layout.

  [kodesidefil] kan bruges til at indl�se kodesider som endnu ikke er indbyggede i 
   DOSBox. Det bruges kun n�r DOSBox ikke kan finde kodesiden.


  Eksempler:
  1) At indl�se det tyske Keyboard/tastatur layout (bruger automatisk kodeside 858):
       keyb gr
  2) At indl�se det russiske Keyboard/tastatur layout med kodeside 866:
       keyb ru 866
     For at kunne skrive russiske bogstaver tast ALT+RIGHT-SHIFT.
  3) At indl�se det franske Keyboard/tastatur layout med kodeside 850 (hvor kode-
      siden er defineret i filen EGACPI.DAT):
       keyb fr 850 EGACPI.DAT
  4) At indl�se kodeside 858 (uden keyboard/tastatur layout):
       keyb none 858
     Dette kan bruges til at �ndre kodesiden for freedos's keyb2 program.
  5) For at vise nuv�rende kodeside og, hvis indl�st, tastatur layoutet
     keyb (efterfulgt af Enter/Return) 



Hvis du vil vide mere, brug /? efter (program)kommandoen.




====================
5. Specielle taster:
====================

ALT-ENTER     Fuldsk�rm til/fra.
ALT-PAUSE     Pause DOSBox.
CTRL-F1       Starter keymapper.
CTRL-F4       Skifter imellem monterede disk-images. Opdaterer 
              directory-/mappe-/bibliotek-lageret for alle drev!
CTRL-ALT-F5   Starter/Stopper optagelse af film af sk�rmbillede. (avi video optagelse)
CTRL-F5       Gemmer et sk�rmbillede. (png type)
CTRL-F6       Starter/Stopper optagelse af lyd til en wave file.
CTRL-ALT-F7   Starter/Stopper optagelse af OPL kommandoer (DRO format).
CTRL-ALT-F8   Starter/Stopper optagelse af r� MIDI kommandoer.
CTRL-F7       Formindske tab af frames/rammer.
CTRL-F8       Forst�rre tab af frames/rammer.
CTRL-F9       Lukke for DOSBox.
CTRL-F10      Binde/frig�re musen.
CTRL-F11      Sl�ve emularingen (Neds�tte DOSBox Cycles).
CTRL-F12      S�tte mere fart p� emuleringen (�ge DOSBox Cycles).
ALT-F12       Frig�re hastighed (turbo knap).

(NOTAT: Hvis du for�ger DOSBox's cycles over din computers maximum ydeevne,
vil det give samme effekt som at sl�ve emuleringen.
Dette maximum vil variere fra computer til computer.)


S�dan er default tastebindinger. De kan �ndres med keymapper
(se Sektion 6: Mapper).

Gemte indspillede filer kan findes i nuv�rende_directory/capture 
(dette kan �ndres i DOSBox's Config-fil). 
Hvis Directoriet/mappen/biblioteket ikke eksisterer inden du starter DOSBox, 
bliver der ikke gemt/optaget noget!



===============================================
6. Mapper (Tastatur og joystick indstillinger):
===============================================

N�r du starter DOSBox mapper (enten med CTRL-F1 eller med -startmapper
som kommandolinieargument) bliver du presenteret for et virtuelt 
keyboard/tastatur og et virtualt joystick.

Disse virtuelle enheder reagere p� tasterne/knapperne som DOSBox videresender til
DOS programmer. Hvis du klikker p� en tast/knap med din mus, kan du se nederst
i venstre hj�rne, hvilken funktion den er bundet til (EVENT) og hvilke funktioner
der lige nu er bundet.

Event: EVENT
BIND: BIND
                        Add   Del
mod1  hold                    Next
mod2
mod3


EVENT
    Tasten eller joystick akse/knap/hat DOSBox videresender til DOS program/spil.
BIND
    Knappen p� dir fyssike keyboard/tastatur eller akse/knap/hat p� dit/dine fy-
    siske joystick(s) (som meddelt af SDL) som er bundet til EVENT(en).
mod1,2,3 
    Modfiers. Dette er taster du skal have nedtrykkede imens du taster BIND. 
    mod1 = CTRL og mod2 = ALT. Disse bliver generelt kun brugt n�r du �nsker at 
    �ndre DOSBox's specielle taster.
Add 
    Tilf�jer en ny BIND til denne EVENT. Tilf�jer grundl�ggende en tast fra dit 
    keyboard/tastatur eller en funktion joysticket (trykket knap, akse/hat bev�-
    gelse) dette skaber en EVENT(handling) i DOSBox.
Del 
    Sletter denne  EVENT's BIND. Hvis en EVENT ingen BINDS har, er det ikke muligt 
    at udl�se den i DOSBox (man kan ikke udl�se tasten eller joystick-funktionen).
Next
    Gennemg� listen over bindinger som leder til denne EVENT.


Eksempel:
Q1. Du �nsker at X'et p� dit keyboard/tastatur skriver Z i DOSBox.
    A. Klik p� Z'et i keyboard mapper. klik "Add". 
       tryk nu x tasten p� dit keyboard/tastatur. 

Q2. Hvis du klikker "Next" et par gange, vil du bem�rke es, at Z'et p� dit 
    keyboard/tastatur ogs� laver et Z i DOSBox.
    A. Derfor skal du v�lge Z igen, og v�lge "Next" til du har Z p� dit
    keyboard. V�lg nu "Del".

Q3. Hvis du pr�ver det i DOSBox, vil du bem�rke at n�r du taster X kommer ZX
    frem.
     A. X'et p� dit keyboard/tastatur er ogs� stadig kortlagt til X! Klik p�
        X'et i keyboard mapper og s�g med "Next" til du finder den kortlagte
        X tast. Klik "Del".


Eksempler p� at omprogramere joysticket:
  Du har et joystick tilsluttet, det virker fint i DOSBox og du �nsker at spille
  et kun-for-keyboard/tastatur spil med joysticket (det formodes at spillet
  kontrolleres med piletasterne p� keyboardet/tastaturet):
    1) Start mapper, klik s� p� en af pilene i midten af venstre side af sk�rmen
       (lige over Mod1/Mod2 knapperne).
       EVENT skal v�re key_left. Klik nu p� Add og flyt dit joystick i samme ret-
       ning(som pilen peger), dette skulle tilf�je en handling til BIND.
    2) Gentag ovenst�ende for de sidste 3 retninger, i tilf�jelse kan knapperne
       p� joysticket ogs� omprogrameres (fire/jump).
    3) Kilk p� Save, s� p� Exit og test det med et spil.

  Hvis du �nsker at �ndre y-aksen p� joysticket fordi nogle flysimulatorer bruger
  joystickens op/ned  bev�gelse p� en m�dedu ikke kan lide, og det ikke kan ind-
  stilles i selve spillet:
    1) Start mapper og klik p� Y- i det �vre joystick felt (dette er for det f�rste 
       joystick hvis du har to joysticks tilsluttet) eller det nedre joystick 
       felt (andet joystick eller, hvis du kun har et joystick tilsluttet, anden akses kryds).
       EVENT skulle v�re jaxis_0_1- (eller jaxis_1_1-).
    2) Klik p� Del for at fjerne nuv�rende binding, klik s� p� Add og flyt dit
       joystick nedad. der skulle nu v�re  skabt et nyt bind.
    3) Gentag dette for Y+, gem layoutet og test det til slut i et spil.



Hvis du �ndrer default mapping, kan du gemme dine �ndringer ved at klikke p�
"Save". DOSBox gemmer din mapping til en lokalitet specificeret i config-filen
(mapperfile=mapper.txt). DOSBox indl�ser din mapperfile, hvis den er tilstede i
config-filen.



===================
7. Keyboard Layout:
===================

For at skifte til et andet keyboard/tastatur layout, kan bruges enten punktet
"keyboardlayout" i [dos]-sektionen i dosbox.conf, eller det interne DOSBox
program keyb.com. Begge dele accepterer dos-afpassede sprog koder (se nedenunder), 
men du kan kun indl�se en tilpasset sprogkode-fil med keyb.com.

Default keyboardlayout=auto, som lige nu kun virker under Windows, layoutet
bliver valgt i forhold til OS'ets layout.

Skiftning af Layout
  DOSBox underst�tter default et vist antal keyboard/tastatur layouts  og kode-
  sider,i disse tilf�lde er det kun n�dvendigt at specificere sprogkoden (som f.eks
  keyboardlayout=sv i DOSBox's config-fil, eller "keyb sv" ved DOSBox's kommando
  prompt).
  
  Nogle keyboard/tastatur layouts (f.eks sprogkode GK kodeside 869 og sprogkode RU
  kodeside 808) har underst�ttelse for dobbelt-layouts som kan aktiveres med
  tasterne LEFT-ALT+RIGHT-SHIFT og deaktiveres med tasterne LEFT-ALT+LEFT-SHIFT.

Underst�ttede eksterne filer
  The freedos .kl filer er underst�ttede (freedos keyb2 keyboard layoutfiles) 
  ligesom the freedos keyboard.sys/keybrd2.sys/keybrd3.sys bibliotekerne som 
  best�r af alle tilg�ngelige .kl filer.
  Se p� http://projects.freedos.net/keyb/ for pr�kompilereded keyboard layouts
  hvis de DOSBosx-integrerede layouts, af en eller anden grund ikke virker, eller 
  efter opdaterede/nye tilg�ngelige. 

  B�de .CPI (MSDOS/kompatible kodeside filer) og .CPX (freedos UPX-komprimerede
  kodeside filer) kan bruges. Nogle kodesider er indbygget i DOSBox s� det for 
  det meste ikke er n�dvendigt at t�nke p� kodeside filer. Hvis du har brug for 
  en anden (eller en specielt tilpasset) kodeside fil, kan du kopiere den ind i
  Directoriet/mappen/biblioteket hvor DOSBox config-fil er s� DOSBox kan finde den.

  Yderligere layouts kan tilf�jes ved at kopiere de tilsvarende .kl-filer til
  dosbox.conf's directory/mappe/bibliotek og bruge f�rste del af fil-navnet som
  sprog-kode.
  Eksempel: For filen UZ.KL (keyboard/tastatur layout for Uzbekistan) specificeres
           "keyboardlayout=uz" i DOSBox's config-fil.
  Integreringen af keyboard layout pakker (som keybrd2.sys) virker p� samme m�de.


L�g m�rke til at keyboard/tastatur layoutet tillader udenlandske karakt�rer at 
blive skrevet, men der er ikke underst�ttelse for dem i filnavne. Pr�v at undg� 
dem(tegnene) b�de i DOSBox og det v�rts operativ system som er tilg�ngeligt
fra DOSBox.



==============================
8. Serial Multiplayer feature:
==============================
 
DOSBox kan emulere et serialt nullmodem kabel over netv�rk og internet.
Dette kan konfigureres i [serialports] sektionen i DOSBox's Config-fil.

For at oprette en nullmodem forbindelse, skal �n v�re server og �n klient.

Serveren skal s�ttes s�dan op i DOSBox's config-fil:
   serial1=nullmodem

Klient:
   serial1=nullmodem server:<IP eller navn p� serveren>

Start nu spillet og v�lg nullmodem / serial cable / already connected
som multiplayer m�de p� COM1. Set same baudrate p� begge computere.

Desuden, kan der tilf�jes yderligere parametreametre for at kontrollere opf�r-
slen af nullmodem forbindelsen. Dette er alle parametrene:

 * port:         - TCP port nummer. Default: 23
 * rxdelay:      - hvor l�nge (millisekunder) de modtagne data skal forsinkes hvis
                   enheden ikke er klar. For�g denne v�rdi hvis du oplever
                   overrun errors i DOSBox's Status vindue. Default: 100
 * txdelay:      - hvor l�nge der skal samles data f�r der sendes en pakke. 
                   Default: 12 (reducerer Netv�rk overhovede)
 * server:       - Dette nullmodem vil v�re en klient som tilslutter til den spe-
                   cificerede server. (ingen server argument: v�r en server.)
 * transparent:1 - Sender kun de serielle data, ingen RTS/DTR handshake. Bruges
                   n�r der tilsluttes til alt andet end et nullmodem.
 * telnet:1      - Overs�tter Telnet data fra et andet sted(tilsluttet). G�res
                   automatisk gennemsigtigt.
 * usedtr:1      - Forbindelsen bliver ikke lavet f�r DTR bliver sl�et til af
                   DOS programmet. Bruges med modem terminaler.
                   G�res automatisk gennemsigtigt.
 * inhsocket:1   - Brug en sokkel sendt til DOSBox ad kommandolinien. G�res
                   automatisk gennemsigtigt. (Sockel Arv: Det bruges til at spille
                   gamle DOS door games p� ny BBS software.)

Eksempel: V�r en server der lytter p� TCP port 5000.
   serial1=nullmodem server:<IP eller navn p� serveren> port:5000 rxdelay:1000



=======================================
9.Hvordan resource-kr�vende spil k�res: 
=======================================

DOSBox emulerer CPUen, lyd- og grafik- kort , og andre dele af PCen, det hele
p� samme tid. Hastigheden p� den emulerede DOS applikation afh�nger af hvor
mange instruktioner der kan emuleres, kan justeres(antal cycles).

CPU Cycles
  Default pr�ver DOSBox (cycles=auto) at detektere om et spil har brug for, at 
  blive k�rt med s� mange instruktioner emuleret per tids-interval som muligt.
  Man kan tvinge opf�rsel igennem ved at s�tte cycles=max i DOSBox's config-fil. 
  DOSBox's vindue viser i s� fald linien "Cpu Cyles: max", �verst. I denne tilstand 
  kan man mindske antallet af cycles p� procent-basis (tast CTRL-F11), eller h�v 
  dem igen (CTRL-F12).
  
  Sometider giver det bedre resultat at tilpasse antallet af cycles, i DOSBox's
  config-fil skriv for eksempel cycles=30000. N�r du k�rer et program/spil kan du 
  s� h�ve antallet af cycles med CTRL-F12 yderligere, men du er begr�nset af hvor 
  meget ledig tid din rigtige CPU har. Du kan se hvor meget fri tid din CPU har,
  i Task manager i Windows 2000/XP og System Monitor i Windows 95/98/ME. N�r
  Der er brugt 100% af din rigtige CPU tid, er der ikke yderligere muligheder for
  at h�ve hastigheden p� DOSBox, medmindre du reducerer den indl�sning som bliver 
  genereret af ikke-CPU delene af DOSBox. 

CPU Kerner(Cores)
  P� x86 architecturer kan du pr�ve at tvinge brugen af "dynamisk genindsamlings 
  kerne" (s�t core=dynamic i DOSBox's config-fil).
  Dette giver normalt bedre resultater, hvis auto genkendeklsen (core=auto) fejler.
  Indstillingen fungerer bedst sammen med cycles=max. Der kan dog v�re spil som 
  virker d�rligere med "dynamisk genindsamlings kerne" indstillingen, eller slet ikke!

Grafik emulering
  VGA emulering er en meget kr�vende del af DOSBox's reelle CPU forbrug. Du kan 
  forst�rre tabet af antal rammer/frames der skippes (for�ges med tallet et) ved
  at nedtrykke tasterne CTRL-F8. Dit CPU forbrug skulle formindskes n�r du bruger
  en fast "cycles" indstilling.
  G� et skridt tilbage og gentag dette indtil spillet k�rer hurtigt nok.
  L�g dog m�rke til at dette er et kompromis : du mister tilsvarende kvalitet i 
  billede som du vinder hastighed.

Lyd emulering
  Du kan ogs� pr�ve at sl� lyden fra i spillets setup program for at reducere
  CPU forbruget yderligere. indstillingen nosound=true sl�r IKKE emuleringen af 
  lydenhederfra, det er kun lyd-outputet der bliver sl�et fra.

Pr�v ogs� at lukke alle andre programmer for at reservere s� mange resourcer som
muligt til DOSBox.


Avanceret cycles indstillinger:
Cycles=auto og cycles=max indstillingerne kan s�ttes med andre parametre 
for forskellige start defaults. Syntaksen er
  cycles=auto ["realmode default"] ["protected mode default"%] 
              [limit "cycles begr�nsning"]
  cycles=max ["protected mode default"%] [limit "cycles begr�nsning"]
Eksempel:
  cycles=auto 1000 80% limit 20000
  bruger cycles=1000 for real mode spil, 80% cpu effekt for 
  protected mode spil sammen med en h�rd cycle begr�nsning p� 20000



====================
10. Probleml�sning:
====================

DOSBox d�r lige efter start:
  - brug andre v�rdier i output= indstillingen i din DOSBox
    config-fil
  - pr�v at opdatere grafikkort-driver og DirectX

N�r du k�rer et bestemt spil lukker DOSBox, med en/flere besked(er) eller h�nger:
  - se om det virker med default DOSBox installation
    (u�ndret config-fil)
  - pr�v uden lyd (brug det lydindstillingsprogram som er med spillet, endvidere
    kan du pr�ve sbtype=none og gus=false)
  - lav om p� nogle af indstillingerne i DOSBox's config-fil, pr�v specielt :
      core=normal
      faste cycles (for eksempel cycles=10000)
      ems=false
      xms=false
    eller en kombination af ovenst�ende
    funktionsm�ssigt:
      machine=vesa_nolfb
    eller
      machine=vgaonly
  - brug loadfix f�r du starter spillet 

Spillet g�r tilbage til DOSBox's kommandoprompt med fejlmeddelelse:
  - l�s fejlmeddelelsen koncentreret og pr�v at lokalisere fejlen
  - pr�v fiduserne i ovenn�vnte sektioner
  - monter anderledes da nogle spil er fintf�lende med lokaliteterne,
    pr�v for eksempel hvis du har monteret d d:\Gamlespil\spil"
    "mount c d:\Gamlespil\spil" istedet "mount c d:\Gamlespil"
  - hvis spillet kr�ver cdrom, v�r sikker p� at du skrev "-t cdrom" da du
    monterede og pr�v forskellige andre parametre
  - Tjek filerne til spillet's tilladelser (fjern read-only attributter,
    tilf�j skrivetilladelser og lignende.)
  - pr�v at geninstallerre spillet i selve DOSBox

=====================================
11. Config-filen (indstillingsfilen):
=====================================

Der kan genereres en config-fil med CONFIG.COM, som kan findes p� det interne
DOSBox Z: drev hvor du starter DOSBox. Se i sektionen om interne programmer
af denne readme hvordan du bruger CONFIG.COM.
Du kan tilrette den genererede config-fil til dit DOSBox behov.

Filen er inddelt i flere sektioner (der er [] om navnene). 
I nogle sektioner er der muligheder du kan indstille.
# og % indikerer kommentar-linier. 
DOSBox's config-fil indeholder de nuv�rende indstillinger. Du kan �ndre 
dem og starte DOSBox med -conf switchen for at indl�se filen og bruge de 
�ndrede indstillinger.

DOSBox bruger config-filer der er angivet med -conf. Hvis der ikke er
angivet en fil, s�ges efter "dosbox.conf" i det lokale directory/mappe/bibliotek.
Hvis der ingen er, vil DOSBox hente brugerens config-fil. 
Denne fil bliver skabt, hvis den ikke allerede eksisterer. Filen kan findes 
i ~/.dosboxrc (Linux),
~\dosbox.conf (Win32) eller "~/Library/Preferences" (MAc OS X).
Windows brugere kan bruge genvejene i startmenuen for at finde den(engelsk,
den danske skal(for standard) v�re i DOSBox's 0.73 mappen).




================
12. Sprog-filen:
================


Der kan genereres en Sprog-fil med CONFIG.COM. 
L�s den, s� forst�r du forh�bentligt hvordan man �ndrer den. 
Start med DOSBox -lang switchen og indl�s din sprog-fil.
Du kan alternativt indf�re filenavnet i config-filen i [dosbox] Sektionen. 
Der er en language= indstilling der kan �ndres med et filenavn.




=================================================
13. Hvordan du bygger din egen version af DOSBox:
=================================================


Hent/Download kildefilerne (source).
L�s INSTALL i  kilde-distributionen.





===================
14. Special thanks:
===================


Se THANKS filen.




============
15. Kontakt:
============


See the site: 
http://dosbox.sourceforge.net
for an email address (The Crew-page).
