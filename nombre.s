section .text
global _start

_start:
    xor     edi, edi         ; Initialiser le compteur à 0

boucle_principale:
    mov     eax, edi         ; Charger le nombre à afficher
    call    afficher_nombre
    push    0x0A             ; Ajouter un saut de ligne (ASCII 10)
    mov     ecx, esp
    mov     eax, 4           ; sys_write
    mov     ebx, 1           ; stdout
    mov     edx, 1           ; longueur
    int     0x80
    add     esp, 4           ; Nettoyer la pile
    inc     edi              ; Incrémenter le compteur
    cmp     edi, 10000
    jle     boucle_principale

    mov     eax, 1           ; sys_exit
    xor     ebx, ebx
    int     0x80

afficher_nombre:
    xor     esi, esi         ; Compteur de chiffres
    mov     ebx, 10          ; Diviseur

division:
    xor     edx, edx
    div     ebx              ; EDX = reste, EAX = quotient
    add     dl, '0'          ; Convertir en ASCII
    push    edx              ; Stocker sur la pile
    inc     esi
    test    eax, eax
    jnz     division

affichage:
    dec     esi
    mov     eax, 4           ; sys_write
    mov     ebx, 1
    mov     ecx, esp         ; Pointeur vers le chiffre
    mov     edx, 1
    int     0x80
    add     esp, 4           ; Dépiler le chiffre
    test    esi, esi
    jnz     affichage
    ret
