; Cours d'assembleur
;
; MCU : PIC16F84A   Horloge : 4 MHz
;
; Auteur : Alexandre Gonçalves   Date : juin 2025
;

    list p=16f84A                           ;microcontr�leur utilis� PIC16F84A

; --- Fichiers inclus dans le projet ---
    #include<pic16f84a.inc>                 ;inclut le fichier du PIC16F84A

; --- Bits de configuration (FUSE) ---

; Oscillateur � cristal externe 4 MHz, sans minuterie de surveillance (watchdog), avec minuterie de d�marrage (power-up), sans protection du code
    __config _XT_OSC & _WDT_OFF & _PWRTE_ON & _CP_OFF


; --- Pagination m�moire ---
                            ;bcf - bit clear file - efface le bit (le met � 0)
    #define     bank0       bcf STATUS,RP0      ;Cr�e un mn�monique pour la banque 0 de m�moire
                            ;bsf - bit set file - active le bit (le met � 1)
    #define     bank1       bsf STATUS,RP0      ;Cr�e un mn�monique pour la banque 1 de m�moire

; --- Entr�es ---
    #define     bouton1     PORTB,RB0           ;Bouton 1 connect� � RB0

; --- Sorties ---
    #define     led1        PORTB,RB7           ;DEL 1 connect�e � RB7

; --- Vecteur de R�INITIALISATION ---
                org         H'0000'             ;Origine � l'adresse 0000h de la m�moire
                goto        debut               ;Saut � partir du vecteur d�interruption

; --- Vecteur d�interruption ---
                org         H'0004'             ;Toutes les interruptions pointent vers cette adresse
                retfie                          ;Retour de l�interruption


; --- Programme principal ---
debut:
                bank1                           ;S�lectionne la banque 1 de m�moire
                movlw       H'FF'               ;W = B'11111111'
                movwf       TRISA               ;TRISA = H'FF' (tous les bits sont des entr�es)
                movlw       h'7F'               ;W = B'01111111'
                movwf       TRISB               ;TRISB = H'7F' (seulement RB7 est une sortie)
                bank0                           ;S�lectionne la banque 0 de m�moire
                movlw       H'FF'               ;W = B'11111111'
                movwf       PORTB               ;RB7 (configur� comme sortie) commence � HIGH

                goto        $                   ;Boucle infinie � cette ligne

                end