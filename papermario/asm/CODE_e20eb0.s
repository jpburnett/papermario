
.section .text002B7000, "ax"

func_002B7000:
/* E20EB0 002B7000 3C014387 */  li    $1, 0x43870000 # 270.000000
/* E20EB4 002B7004 44810000 */  mtc1  $1, $f0
/* E20EB8 002B7008 00000000 */  nop   
/* E20EBC 002B700C 460C003E */  c.le.s $f0, $f12
/* E20EC0 002B7010 00000000 */  nop   
/* E20EC4 002B7014 45000009 */  .byte 0x45,0x00,0x00,0x09 /* Because of invalid n64 opcode bc1f */
/* E20EC8 002B7018 240200FF */  .byte 0x24,0x02,0x00,0xFF
/* E20ECC 002B701C 3C0143B4 */  li    $1, 0x43B40000 # 360.000000
/* E20ED0 002B7020 44810000 */  mtc1  $1, $f0
/* E20ED4 002B7024 00000000 */  nop   
/* E20ED8 002B7028 460C0001 */  sub.s $f0, $f0, $f12
/* E20EDC 002B702C 4600010D */  trunc.w.s $f4, $f0
/* E20EE0 002B7030 44032000 */  mfc1  $3, $f4
/* E20EE4 002B7034 080ADC2B */  j     func_002B70AC
/* E20EE8 002B7038 00431023 */   subu  $2, $2, $3

.L002B703C:
/* E20EEC 002B703C 3C014334 */  li    $1, 0x43340000 # 180.000000
/* E20EF0 002B7040 44811000 */  mtc1  $1, $f2
/* E20EF4 002B7044 00000000 */  nop   
/* E20EF8 002B7048 460C103E */  c.le.s $f2, $f12
/* E20EFC 002B704C 00000000 */  nop   
/* E20F00 002B7050 45000006 */  .byte 0x45,0x00,0x00,0x06 /* Because of invalid n64 opcode bc1f */
/* E20F04 002B7054 00000000 */  nop
/* E20F08 002B7058 46026001 */  sub.s $f0, $f12, $f2
/* E20F0C 002B705C 4600010D */  trunc.w.s $f4, $f0
/* E20F10 002B7060 44032000 */  mfc1  $3, $f4
/* E20F14 002B7064 080ADC2B */  j     func_002B70AC
/* E20F18 002B7068 00431023 */   subu  $2, $2, $3

.L002B706C:
/* E20F1C 002B706C 3C0142B4 */  li    $1, 0x42B40000 # 90.000000
/* E20F20 002B7070 44810000 */  mtc1  $1, $f0
/* E20F24 002B7074 00000000 */  nop   
/* E20F28 002B7078 460C003E */  c.le.s $f0, $f12
/* E20F2C 002B707C 00000000 */  nop   
/* E20F30 002B7080 45000006 */  .byte 0x45,0x00,0x00,0x06 /* Because of invalid n64 opcode bc1f */
/* E20F34 002B7084 240200FF */  /* E20F38 002B7088 460C1001 */  sub.s $f0, $f2, $f12
/* E20F3C 002B708C 4600010D */  trunc.w.s $f4, $f0
/* E20F40 002B7090 44032000 */  mfc1  $3, $f4
/* E20F44 002B7094 080ADC2B */  j     func_002B70AC
/* E20F48 002B7098 00431023 */   subu  $2, $2, $3

.L002B709C:
/* E20F4C 002B709C 4600610D */  trunc.w.s $f4, $f12
/* E20F50 002B70A0 44032000 */  mfc1  $3, $f4
/* E20F54 002B70A4 00000000 */  nop   
/* E20F58 002B70A8 00431023 */  subu  $2, $2, $3
func_002B70AC:
/* E20F5C 002B70AC 03E00008 */  jr    $31
/* E20F60 002B70B0 00431023 */   subu  $2, $2, $3

/* E20F64 002B70B4 27BDFFE8 */  addiu $29, $29, -0x18
/* E20F68 002B70B8 AFB00010 */  sw    $16, 0x10($29)
/* E20F6C 002B70BC 3C10802B */  lui   $16, %hi(D_802B79A8) # $16, 0x802b
/* E20F70 002B70C0 261079A8 */  addiu $16, %lo(D_802B79A8) # addiu $16, $16, 0x79a8
/* E20F74 002B70C4 AFBF0014 */  sw    $31, 0x14($29)
/* E20F78 002B70C8 8E040000 */  lw    $4, ($16)
/* E20F7C 002B70CC 0C00A580 */  jal   func_00029600
/* E20F80 002B70D0 2405002C */   li    $5, 44
/* E20F84 002B70D4 3C058011 */  lui   $5, %hi(D_8010EFC8) # $5, 0x8011
/* E20F88 002B70D8 24A5EFC8 */  addiu $5, %lo(D_8010EFC8) # addiu $5, $5, -0x1038
/* E20F8C 002B70DC 8CA400C8 */  lw    $4, 0xc8($5)
/* E20F90 002B70E0 8E020000 */  lw    $2, ($16)
/* E20F94 002B70E4 AC440000 */  sw    $4, ($2)
/* E20F98 002B70E8 848300A8 */  lh    $3, 0xa8($4)
/* E20F9C 002B70EC C480003C */  lwc1  $f0, 0x3c($4)
/* E20FA0 002B70F0 44831000 */  mtc1  $3, $f2
/* E20FA4 002B70F4 00000000 */  nop   
/* E20FA8 002B70F8 468010A0 */  cvt.s.w $f2, $f2
/* E20FAC 002B70FC 46020000 */  add.s $f0, $f0, $f2
/* E20FB0 002B7100 3C014100 */  li    $1, 0x41000000 # 8.000000
/* E20FB4 002B7104 44811000 */  mtc1  $1, $f2
/* E20FB8 002B7108 00000000 */  nop   
/* E20FBC 002B710C 46020000 */  add.s $f0, $f0, $f2
/* E20FC0 002B7110 E440001C */  swc1  $f0, 0x1c($2)
/* E20FC4 002B7114 E4400008 */  swc1  $f0, 8($2)
/* E20FC8 002B7118 C4800038 */  lwc1  $f0, 0x38($4)
/* E20FCC 002B711C E4400004 */  swc1  $f0, 4($2)
/* E20FD0 002B7120 C4820040 */  lwc1  $f2, 0x40($4)
/* E20FD4 002B7124 A040002A */  sb    $0, 0x2a($2)
/* E20FD8 002B7128 8E040000 */  lw    $4, ($16)
/* E20FDC 002B712C 3C013DCC */  li    $1, 0x3DCC0000 # 0.099609
/* E20FE0 002B7130 3421CCCD */  ori   $1, (0x3DCCCCCD & 0xFFFF) # ori $1, $1, 0xcccd
/* E20FE4 002B7134 44810000 */  mtc1  $1, $f0
/* E20FE8 002B7138 3C03802B */  lui   $3, %hi(D_802B742C) # $3, 0x802b
/* E20FEC 002B713C 2463742C */  addiu $3, %lo(D_802B742C) # addiu $3, $3, 0x742c
/* E20FF0 002B7140 AC400018 */  sw    $0, 0x18($2)
/* E20FF4 002B7144 3C018011 */  lui   $1, %hi(D_8010C940) # $1, 0x8011
/* E20FF8 002B7148 AC23C940 */  sw    $3, %lo(D_8010C940)($1)
/* E20FFC 002B714C E442000C */  swc1  $f2, 0xc($2)
/* E21000 002B7150 E4800014 */  swc1  $f0, 0x14($4)
/* E21004 002B7154 8CA20004 */  lw    $2, 4($5)
/* E21008 002B7158 3C013ECC */  li    $1, 0x3ECC0000 # 0.398438
/* E2100C 002B715C 3421CCCD */  ori   $1, (0x3ECCCCCD & 0xFFFF) # ori $1, $1, 0xcccd
/* E21010 002B7160 44810000 */  mtc1  $1, $f0
/* E21014 002B7164 34420020 */  ori   $2, $2, 0x20
/* E21018 002B7168 ACA20004 */  sw    $2, 4($5)
/* E2101C 002B716C A080002A */  sb    $0, 0x2a($4)
/* E21020 002B7170 3C038007 */  lui   $3, %hi(D_80077410) # $3, 0x8007
/* E21024 002B7174 8C637410 */  lw    $3, %lo(D_80077410)($3)
/* E21028 002B7178 E4800014 */  swc1  $f0, 0x14($4)
/* E2102C 002B717C 00031080 */  sll   $2, $3, 2
/* E21030 002B7180 00431021 */  addu  $2, $2, $3
/* E21034 002B7184 00021080 */  sll   $2, $2, 2
/* E21038 002B7188 00431023 */  subu  $2, $2, $3
/* E2103C 002B718C 000218C0 */  sll   $3, $2, 3
/* E21040 002B7190 00431021 */  addu  $2, $2, $3
/* E21044 002B7194 000210C0 */  sll   $2, $2, 3
/* E21048 002B7198 3C01800B */  lui   $1, 0x800b
/* E2104C 002B719C 00220821 */  addu  $1, $1, $2
/* E21050 002B71A0 C4201DEC */  lwc1  $f0, 0x1dec($1)
/* E21054 002B71A4 240200FF */  li    $2, 255
/* E21058 002B71A8 8E030000 */  lw    $3, ($16)
/* E2105C 002B71AC 46000007 */  neg.s $f0, $f0
/* E21060 002B71B0 A062002B */  sb    $2, 0x2b($3)
/* E21064 002B71B4 E4600010 */  swc1  $f0, 0x10($3)
/* E21068 002B71B8 8FBF0014 */  lw    $31, 0x14($29)
/* E2106C 002B71BC 8FB00010 */  lw    $16, 0x10($29)
/* E21070 002B71C0 03E00008 */  jr    $31
/* E21074 002B71C4 27BD0018 */   addiu $29, $29, 0x18

/* E21078 002B71C8 3C028011 */  lui   $2, %hi(D_8010EFCC) # $2, 0x8011
/* E2107C 002B71CC 8C42EFCC */  lw    $2, %lo(D_8010EFCC)($2)
/* E21080 002B71D0 27BDFF28 */  addiu $29, $29, -0xd8
/* E21084 002B71D4 AFBF00D0 */  sw    $31, 0xd0($29)
/* E21088 002B71D8 AFB500CC */  sw    $21, 0xcc($29)
/* E2108C 002B71DC AFB400C8 */  sw    $20, 0xc8($29)
/* E21090 002B71E0 AFB300C4 */  sw    $19, 0xc4($29)
/* E21094 002B71E4 AFB200C0 */  sw    $18, 0xc0($29)
/* E21098 002B71E8 AFB100BC */  sw    $17, 0xbc($29)
/* E2109C 002B71EC 30420020 */  andi  $2, $2, 0x20
/* E210A0 002B71F0 10400085 */  beqz  $2, .L002B7408
/* E210A4 002B71F4 AFB000B8 */   sw    $16, 0xb8($29)
/* E210A8 002B71F8 27B00038 */  addiu $16, $29, 0x38
/* E210AC 002B71FC 3C14802B */  lui   $20, %hi(D_802B79A8) # $20, 0x802b
/* E210B0 002B7200 269479A8 */  addiu $20, %lo(D_802B79A8) # addiu $20, $20, 0x79a8
/* E210B4 002B7204 8E820000 */  lw    $2, ($20)
/* E210B8 002B7208 0200202D */  move  $4, $16
/* E210BC 002B720C 8C450014 */  lw    $5, 0x14($2)
/* E210C0 002B7210 3C150001 */  lui   $21, (0x00011630 >> 16) # lui $21, 1
/* E210C4 002B7214 00A0302D */  move  $6, $5
/* E210C8 002B7218 0C019DF0 */  jal   func_000677C0
/* E210CC 002B721C 00A0382D */   move  $7, $5
/* E210D0 002B7220 3C038007 */  lui   $3, %hi(D_80077410) # $3, 0x8007
/* E210D4 002B7224 8C637410 */  lw    $3, %lo(D_80077410)($3)
/* E210D8 002B7228 27B10078 */  addiu $17, $29, 0x78
/* E210DC 002B722C 00031080 */  sll   $2, $3, 2
/* E210E0 002B7230 00431021 */  addu  $2, $2, $3
/* E210E4 002B7234 00021080 */  sll   $2, $2, 2
/* E210E8 002B7238 00431023 */  subu  $2, $2, $3
/* E210EC 002B723C 000218C0 */  sll   $3, $2, 3
/* E210F0 002B7240 00431021 */  addu  $2, $2, $3
/* E210F4 002B7244 000210C0 */  sll   $2, $2, 3
/* E210F8 002B7248 8E830000 */  lw    $3, ($20)
/* E210FC 002B724C 3C01800B */  lui   $1, 0x800b
/* E21100 002B7250 00220821 */  addu  $1, $1, $2
/* E21104 002B7254 C4221DEC */  lwc1  $f2, 0x1dec($1)
/* E21108 002B7258 C4640010 */  lwc1  $f4, 0x10($3)
/* E2110C 002B725C 44800000 */  mtc1  $0, $f0
/* E21110 002B7260 46022101 */  sub.s $f4, $f4, $f2
/* E21114 002B7264 3C073F80 */  lui   $7, 0x3f80
/* E21118 002B7268 44060000 */  mfc1  $6, $f0
/* E2111C 002B726C 44052000 */  mfc1  $5, $f4
/* E21120 002B7270 0220202D */  move  $4, $17
/* E21124 002B7274 0C019EC8 */  jal   func_00067B20
/* E21128 002B7278 AFA60010 */   sw    $6, 0x10($29)
/* E2112C 002B727C 0200202D */  move  $4, $16
/* E21130 002B7280 0220282D */  move  $5, $17
/* E21134 002B7284 0C019D80 */  jal   func_00067600
/* E21138 002B7288 0200302D */   move  $6, $16
/* E2113C 002B728C 8E820000 */  lw    $2, ($20)
/* E21140 002B7290 36B51630 */  ori   $21, (0x00011630 & 0xFFFF) # ori $21, $21, 0x1630
/* E21144 002B7294 8C450004 */  lw    $5, 4($2)
/* E21148 002B7298 8C460008 */  lw    $6, 8($2)
/* E2114C 002B729C 8C47000C */  lw    $7, 0xc($2)
/* E21150 002B72A0 0C019E40 */  jal   func_00067900
/* E21154 002B72A4 0220202D */   move  $4, $17
/* E21158 002B72A8 0200202D */  move  $4, $16
/* E2115C 002B72AC 0220282D */  move  $5, $17
/* E21160 002B72B0 0C019D80 */  jal   func_00067600
/* E21164 002B72B4 0220302D */   move  $6, $17
/* E21168 002B72B8 0220202D */  move  $4, $17
/* E2116C 002B72BC 3C108007 */  lui   $16, %hi(D_800741F0) # $16, 0x8007
/* E21170 002B72C0 261041F0 */  addiu $16, %lo(D_800741F0) # addiu $16, $16, 0x41f0
/* E21174 002B72C4 3C13800A */  lui   $19, %hi(D_8009A674) # $19, 0x800a
/* E21178 002B72C8 2673A674 */  addiu $19, %lo(D_8009A674) # addiu $19, $19, -0x598c
/* E2117C 002B72CC 96050000 */  lhu   $5, ($16)
/* E21180 002B72D0 8E620000 */  lw    $2, ($19)
/* E21184 002B72D4 00052980 */  sll   $5, $5, 6
/* E21188 002B72D8 00B52821 */  addu  $5, $5, $21
/* E2118C 002B72DC 0C019D40 */  jal   func_00067500
/* E21190 002B72E0 00452821 */   addu  $5, $2, $5
/* E21194 002B72E4 3C03DA38 */  lui   $3, (0xDA380002 >> 16) # lui $3, 0xda38
/* E21198 002B72E8 34630002 */  ori   $3, (0xDA380002 & 0xFFFF) # ori $3, $3, 2
/* E2119C 002B72EC 0000202D */  move  $4, $0
/* E211A0 002B72F0 0080282D */  move  $5, $4
/* E211A4 002B72F4 0080302D */  move  $6, $4
/* E211A8 002B72F8 3C12800A */  lui   $18, %hi(D_8009A66C) # $18, 0x800a
/* E211AC 002B72FC 2652A66C */  addiu $18, %lo(D_8009A66C) # addiu $18, $18, -0x5994
/* E211B0 002B7300 0080382D */  move  $7, $4
/* E211B4 002B7304 8E480000 */  lw    $8, ($18)
/* E211B8 002B7308 96020000 */  lhu   $2, ($16)
/* E211BC 002B730C 0100482D */  move  $9, $8
/* E211C0 002B7310 25080008 */  addiu $8, $8, 8
/* E211C4 002B7314 AE480000 */  sw    $8, ($18)
/* E211C8 002B7318 AD230000 */  sw    $3, ($9)
/* E211CC 002B731C 24430001 */  addiu $3, $2, 1
/* E211D0 002B7320 3042FFFF */  andi  $2, $2, 0xffff
/* E211D4 002B7324 00021180 */  sll   $2, $2, 6
/* E211D8 002B7328 00551021 */  addu  $2, $2, $21
/* E211DC 002B732C A6030000 */  sh    $3, ($16)
/* E211E0 002B7330 8E630000 */  lw    $3, ($19)
/* E211E4 002B7334 24100440 */  li    $16, 1088
/* E211E8 002B7338 00621821 */  addu  $3, $3, $2
/* E211EC 002B733C 25020008 */  addiu $2, $8, 8
/* E211F0 002B7340 AD230004 */  sw    $3, 4($9)
/* E211F4 002B7344 AE420000 */  sw    $2, ($18)
/* E211F8 002B7348 3C02DE00 */  lui   $2, 0xde00
/* E211FC 002B734C AD020000 */  sw    $2, ($8)
/* E21200 002B7350 3C02802B */  lui   $2, %hi(D_802B7930) # $2, 0x802b
/* E21204 002B7354 24427930 */  addiu $2, %lo(D_802B7930) # addiu $2, $2, 0x7930
/* E21208 002B7358 AD020004 */  sw    $2, 4($8)
/* E2120C 002B735C 3C02802B */  lui   $2, %hi(D_802B7710) # $2, 0x802b
/* E21210 002B7360 24427710 */  addiu $2, %lo(D_802B7710) # addiu $2, $2, 0x7710
/* E21214 002B7364 AFA20020 */  sw    $2, 0x20($29)
/* E21218 002B7368 3C02802B */  lui   $2, %hi(D_802B7910) # $2, 0x802b
/* E2121C 002B736C 24427910 */  addiu $2, %lo(D_802B7910) # addiu $2, $2, 0x7910
/* E21220 002B7370 AFA20024 */  sw    $2, 0x24($29)
/* E21224 002B7374 24020020 */  li    $2, 32
/* E21228 002B7378 A7A20028 */  sh    $2, 0x28($29)
/* E2122C 002B737C A7A2002A */  sh    $2, 0x2a($29)
/* E21230 002B7380 2402FFF0 */  li    $2, -16
/* E21234 002B7384 A7A2002C */  sh    $2, 0x2c($29)
/* E21238 002B7388 2402001A */  li    $2, 26
/* E2123C 002B738C A7A2002E */  sh    $2, 0x2e($29)
/* E21240 002B7390 240200FF */  li    $2, 255
/* E21244 002B7394 A3A20030 */  sb    $2, 0x30($29)
/* E21248 002B7398 AFA00010 */  sw    $0, 0x10($29)
/* E2124C 002B739C AFA00014 */  sw    $0, 0x14($29)
/* E21250 002B73A0 0C04EAA7 */  jal   func_0013AA9C
/* E21254 002B73A4 AFB00018 */   sw    $16, 0x18($29)
/* E21258 002B73A8 0000202D */  move  $4, $0
/* E2125C 002B73AC 8E820000 */  lw    $2, ($20)
/* E21260 002B73B0 24050006 */  li    $5, 6
/* E21264 002B73B4 9046002B */  lbu   $6, 0x2b($2)
/* E21268 002B73B8 240200FF */  li    $2, 255
/* E2126C 002B73BC AFA20014 */  sw    $2, 0x14($29)
/* E21270 002B73C0 AFB00018 */  sw    $16, 0x18($29)
/* E21274 002B73C4 00C0382D */  move  $7, $6
/* E21278 002B73C8 0C04EAA7 */  jal   func_0013AA9C
/* E2127C 002B73CC AFA60010 */   sw    $6, 0x10($29)
/* E21280 002B73D0 0000202D */  move  $4, $0
/* E21284 002B73D4 27A50020 */  addiu $5, $29, 0x20
/* E21288 002B73D8 24060040 */  li    $6, 64
/* E2128C 002B73DC 0C04EBDC */  jal   func_0013AF70
/* E21290 002B73E0 0220382D */   move  $7, $17
/* E21294 002B73E4 3C04D838 */  lui   $4, (0xD8380002 >> 16) # lui $4, 0xd838
/* E21298 002B73E8 8E420000 */  lw    $2, ($18)
/* E2129C 002B73EC 34840002 */  ori   $4, (0xD8380002 & 0xFFFF) # ori $4, $4, 2
/* E212A0 002B73F0 0040182D */  move  $3, $2
/* E212A4 002B73F4 24420008 */  addiu $2, $2, 8
/* E212A8 002B73F8 AE420000 */  sw    $2, ($18)
/* E212AC 002B73FC 24020040 */  li    $2, 64
/* E212B0 002B7400 AC640000 */  sw    $4, ($3)
/* E212B4 002B7404 AC620004 */  sw    $2, 4($3)
.L002B7408:
/* E212B8 002B7408 8FBF00D0 */  lw    $31, 0xd0($29)
/* E212BC 002B740C 8FB500CC */  lw    $21, 0xcc($29)
/* E212C0 002B7410 8FB400C8 */  lw    $20, 0xc8($29)
/* E212C4 002B7414 8FB300C4 */  lw    $19, 0xc4($29)
/* E212C8 002B7418 8FB200C0 */  lw    $18, 0xc0($29)
/* E212CC 002B741C 8FB100BC */  lw    $17, 0xbc($29)
/* E212D0 002B7420 8FB000B8 */  lw    $16, 0xb8($29)
/* E212D4 002B7424 03E00008 */  jr    $31
/* E212D8 002B7428 27BD00D8 */   addiu $29, $29, 0xd8

/* E212DC 002B742C 27BDFFE8 */  addiu $29, $29, -0x18
/* E212E0 002B7430 3C020204 */  lui   $2, (0x02040020 >> 16) # lui $2, 0x204
/* E212E4 002B7434 AFB00010 */  sw    $16, 0x10($29)
/* E212E8 002B7438 3C108011 */  lui   $16, %hi(D_8010EFC8) # $16, 0x8011
/* E212EC 002B743C 2610EFC8 */  addiu $16, %lo(D_8010EFC8) # addiu $16, $16, -0x1038
/* E212F0 002B7440 AFBF0014 */  sw    $31, 0x14($29)
/* E212F4 002B7444 8E030000 */  lw    $3, ($16)
/* E212F8 002B7448 34420020 */  ori   $2, (0x02040020 & 0xFFFF) # ori $2, $2, 0x20
/* E212FC 002B744C 00621824 */  and   $3, $3, $2
/* E21300 002B7450 3C020200 */  lui   $2, 0x200
/* E21304 002B7454 14620010 */  bne   $3, $2, .L002B7498
/* E21308 002B7458 240600FF */   li    $6, 255
/* E2130C 002B745C 3C03800A */  lui   $3, %hi(D_8009A600) # $3, 0x800a
/* E21310 002B7460 8C63A600 */  lw    $3, %lo(D_8009A600)($3)
/* E21314 002B7464 24020004 */  li    $2, 4
/* E21318 002B7468 1062000B */  beq   $3, $2, .L002B7498
/* E2131C 002B746C 00000000 */   nop   
/* E21320 002B7470 8E030004 */  lw    $3, 4($16)
/* E21324 002B7474 30620001 */  andi  $2, $3, 1
/* E21328 002B7478 14400007 */  bnez  $2, .L002B7498
/* E2132C 002B747C 00000000 */   nop   
/* E21330 002B7480 82020015 */  lb    $2, 0x15($16)
/* E21334 002B7484 14400004 */  bnez  $2, .L002B7498
/* E21338 002B7488 3C020001 */   lui   $2, %hi(D_00010001) # $2, 1
/* E2133C 002B748C 00621024 */  and   $2, $3, $2
/* E21340 002B7490 10400005 */  beqz  $2, .L002B74A8
/* E21344 002B7494 00000000 */   nop   
.L002B7498:
/* E21348 002B7498 3C03802B */  lui   $3, %hi(D_802B79A8) # $3, 0x802b
/* E2134C 002B749C 8C6379A8 */  lw    $3, %lo(D_802B79A8)($3)
/* E21350 002B74A0 24020003 */  li    $2, 3
/* E21354 002B74A4 A062002A */  sb    $2, 0x2a($3)
.L002B74A8:
/* E21358 002B74A8 3C03802B */  lui   $3, %hi(D_802B79A8) # $3, 0x802b
/* E2135C 002B74AC 246379A8 */  addiu $3, %lo(D_802B79A8) # addiu $3, $3, 0x79a8
/* E21360 002B74B0 8C640000 */  lw    $4, ($3)
/* E21364 002B74B4 9085002A */  lbu   $5, 0x2a($4)
/* E21368 002B74B8 24020001 */  li    $2, 1
/* E2136C 002B74BC 10A20026 */  beq   $5, $2, .L002B7558
/* E21370 002B74C0 28A20002 */   slti  $2, $5, 2
/* E21374 002B74C4 10400005 */  beqz  $2, .L002B74DC
/* E21378 002B74C8 24020002 */   li    $2, 2
/* E2137C 002B74CC 10A00009 */  beqz  $5, .L002B74F4
/* E21380 002B74D0 00000000 */   nop   
/* E21384 002B74D4 080ADDA0 */  j     func_002B7680
/* E21388 002B74D8 00000000 */   nop   

.L002B74DC:
/* E2138C 002B74DC 10A20027 */  beq   $5, $2, .L002B757C
/* E21390 002B74E0 24020003 */   li    $2, 3
/* E21394 002B74E4 10A20033 */  beq   $5, $2, .L002B75B4
/* E21398 002B74E8 00000000 */   nop   
/* E2139C 002B74EC 080ADDA0 */  j     func_002B7680
/* E213A0 002B74F0 00000000 */   nop   

.L002B74F4:
/* E213A4 002B74F4 C4800014 */  lwc1  $f0, 0x14($4)
/* E213A8 002B74F8 3C01802B */  lui   $1, 0x802b
/* E213AC 002B74FC D42279B0 */  ldc1  $f2, 0x79b0($1)
/* E213B0 002B7500 3C01802B */  lui   $1, 0x802b
/* E213B4 002B7504 D42479B8 */  ldc1  $f4, 0x79b8($1)
/* E213B8 002B7508 46000021 */  cvt.d.s $f0, $f0
/* E213BC 002B750C 46220000 */  add.d $f0, $f0, $f2
/* E213C0 002B7510 AC800010 */  sw    $0, 0x10($4)
/* E213C4 002B7514 46200020 */  cvt.s.d $f0, $f0
/* E213C8 002B7518 460000A1 */  cvt.d.s $f2, $f0
/* E213CC 002B751C 4622203E */  c.le.d $f4, $f2
/* E213D0 002B7520 00000000 */  nop   
/* E213D4 002B7524 45000056 */  .byte 0x45,0x00,0x00,0x56 /* Because of invalid n64 opcode bc1f */
/* E213D8 002B7528 E4800014 */  /* E213DC 002B752C 9082002A */  lbu   $2, 0x2a($4)
/* E213E0 002B7530 3C013F0C */  li    $1, 0x3F0C0000 # 0.546875
/* E213E4 002B7534 3421CCCD */  ori   $1, (0x3F0CCCCD & 0xFFFF) # ori $1, $1, 0xcccd
/* E213E8 002B7538 44810000 */  mtc1  $1, $f0
/* E213EC 002B753C 24420001 */  addiu $2, %lo(D_00010001) # addiu $2, $2, 1
/* E213F0 002B7540 E4800014 */  swc1  $f0, 0x14($4)
/* E213F4 002B7544 A082002A */  sb    $2, 0x2a($4)
/* E213F8 002B7548 8C630000 */  lw    $3, ($3)
/* E213FC 002B754C 2402000C */  li    $2, 12
/* E21400 002B7550 080ADDA0 */  j     func_002B7680
/* E21404 002B7554 AC620020 */   sw    $2, 0x20($3)

.L002B7558:
/* E21408 002B7558 8C820020 */  lw    $2, 0x20($4)
/* E2140C 002B755C AC800010 */  sw    $0, 0x10($4)
/* E21410 002B7560 2442FFFF */  addiu $2, $2, -1
/* E21414 002B7564 1C400046 */  bgtz  $2, .L002B7680
/* E21418 002B7568 AC820020 */   sw    $2, 0x20($4)
/* E2141C 002B756C 9082002A */  lbu   $2, 0x2a($4)
/* E21420 002B7570 24420001 */  addiu $2, $2, 1
/* E21424 002B7574 080ADDA0 */  j     func_002B7680
/* E21428 002B7578 A082002A */   sb    $2, 0x2a($4)

.L002B757C:
/* E2142C 002B757C C48C0010 */  lwc1  $f12, 0x10($4)
/* E21430 002B7580 3C014120 */  li    $1, 0x41200000 # 10.000000
/* E21434 002B7584 44810000 */  mtc1  $1, $f0
/* E21438 002B7588 00000000 */  nop   
/* E2143C 002B758C 46006300 */  add.s $f12, $f12, $f0
/* E21440 002B7590 3C0143B4 */  li    $1, 0x43B40000 # 360.000000
/* E21444 002B7594 44810000 */  mtc1  $1, $f0
/* E21448 002B7598 00000000 */  nop   
/* E2144C 002B759C 460C003E */  c.le.s $f0, $f12
/* E21450 002B75A0 00000000 */  nop   
/* E21454 002B75A4 45030001 */  .byte 0x45,0x03,0x00,0x01 /* Because of invalid n64 opcode bc1tl */
/* E21458 002B75A8 46006301 */  .L002B75AC:
/* E2145C 002B75AC 080ADD9D */  j     func_002B7674
/* E21460 002B75B0 E48C0010 */   swc1  $f12, 0x10($4)

.L002B75B4:
/* E21464 002B75B4 C48C0010 */  lwc1  $f12, 0x10($4)
/* E21468 002B75B8 3C0141C8 */  li    $1, 0x41C80000 # 25.000000
/* E2146C 002B75BC 44810000 */  mtc1  $1, $f0
/* E21470 002B75C0 00000000 */  nop   
/* E21474 002B75C4 46006300 */  add.s $f12, $f12, $f0
/* E21478 002B75C8 3C0143B4 */  li    $1, 0x43B40000 # 360.000000
/* E2147C 002B75CC 44810000 */  mtc1  $1, $f0
/* E21480 002B75D0 00000000 */  nop   
/* E21484 002B75D4 460C003E */  c.le.s $f0, $f12
/* E21488 002B75D8 00000000 */  nop   
/* E2148C 002B75DC 45030001 */  .byte 0x45,0x03,0x00,0x01 /* Because of invalid n64 opcode bc1tl */
/* E21490 002B75E0 46006301 */  .L002B75E4:
/* E21494 002B75E4 3C01428C */  li    $1, 0x428C0000 # 70.000000
/* E21498 002B75E8 44810000 */  mtc1  $1, $f0
/* E2149C 002B75EC 00000000 */  nop   
/* E214A0 002B75F0 460C003E */  c.le.s $f0, $f12
/* E214A4 002B75F4 00000000 */  nop   
/* E214A8 002B75F8 45000008 */  .byte 0x45,0x00,0x00,0x08 /* Because of invalid n64 opcode bc1f */
/* E214AC 002B75FC E48C0010 */  /* E214B0 002B7600 3C0142DC */  li    $1, 0x42DC0000 # 110.000000
/* E214B4 002B7604 44810000 */  mtc1  $1, $f0
/* E214B8 002B7608 00000000 */  nop   
/* E214BC 002B760C 4600603E */  c.le.s $f12, $f0
/* E214C0 002B7610 00000000 */  nop   
/* E214C4 002B7614 4501000F */  .byte 0x45,0x01,0x00,0x0F /* Because of invalid n64 opcode bc1t */
/* E214C8 002B7618 00000000 */  .L002B761C:
/* E214CC 002B761C 3C01437A */  li    $1, 0x437A0000 # 250.000000
/* E214D0 002B7620 44810000 */  mtc1  $1, $f0
/* E214D4 002B7624 00000000 */  nop   
/* E214D8 002B7628 460C003E */  c.le.s $f0, $f12
/* E214DC 002B762C 00000000 */  nop   
/* E214E0 002B7630 45000010 */  .byte 0x45,0x00,0x00,0x10 /* Because of invalid n64 opcode bc1f */
/* E214E4 002B7634 00000000 */  /* E214E8 002B7638 3C014391 */  li    $1, 0x43910000 # 290.000000
/* E214EC 002B763C 44810000 */  mtc1  $1, $f0
/* E214F0 002B7640 00000000 */  nop   
/* E214F4 002B7644 4600603E */  c.le.s $f12, $f0
/* E214F8 002B7648 00000000 */  nop   
/* E214FC 002B764C 45000009 */  .byte 0x45,0x00,0x00,0x09 /* Because of invalid n64 opcode bc1f */
/* E21500 002B7650 00000000 */  .L002B7654:
/* E21504 002B7654 8E020004 */  lw    $2, 4($16)
/* E21508 002B7658 2403FFDF */  li    $3, -33
/* E2150C 002B765C 3C018011 */  lui   $1, %hi(D_8010C940) # $1, 0x8011
/* E21510 002B7660 AC20C940 */  sw    $0, %lo(D_8010C940)($1)
/* E21514 002B7664 AE0000C8 */  sw    $0, 0xc8($16)
/* E21518 002B7668 00431024 */  and   $2, $2, $3
/* E2151C 002B766C 080ADDBE */  j     func_002B76F8
/* E21520 002B7670 AE020004 */   sw    $2, 4($16)

func_002B7674:
.L002B7674:
/* E21524 002B7674 0C0ADC00 */  jal   func_002B7000
/* E21528 002B7678 00000000 */   nop   
/* E2152C 002B767C 0040302D */  move  $6, $2
func_002B7680:
.L002B7680:
/* E21530 002B7680 3C04802B */  lui   $4, %hi(D_802B79A8) # $4, 0x802b
/* E21534 002B7684 248479A8 */  addiu $4, %lo(D_802B79A8) # addiu $4, $4, 0x79a8
/* E21538 002B7688 8C820000 */  lw    $2, ($4)
/* E2153C 002B768C A046002B */  sb    $6, 0x2b($2)
/* E21540 002B7690 8E0300C8 */  lw    $3, 0xc8($16)
/* E21544 002B7694 10600005 */  beqz  $3, .L002B76AC
/* E21548 002B7698 00000000 */   nop   
/* E2154C 002B769C 8C840000 */  lw    $4, ($4)
/* E21550 002B76A0 8C820000 */  lw    $2, ($4)
/* E21554 002B76A4 54620001 */  bnel  $3, $2, .L002B76AC
/* E21558 002B76A8 AC830000 */   sw    $3, ($4)
.L002B76AC:
/* E2155C 002B76AC 3C03802B */  lui   $3, %hi(D_802B79A8) # $3, 0x802b
/* E21560 002B76B0 8C6379A8 */  lw    $3, %lo(D_802B79A8)($3)
/* E21564 002B76B4 8C640000 */  lw    $4, ($3)
/* E21568 002B76B8 848200A8 */  lh    $2, 0xa8($4)
/* E2156C 002B76BC C480003C */  lwc1  $f0, 0x3c($4)
/* E21570 002B76C0 44821000 */  mtc1  $2, $f2
/* E21574 002B76C4 00000000 */  nop   
/* E21578 002B76C8 468010A0 */  cvt.s.w $f2, $f2
/* E2157C 002B76CC 46020000 */  add.s $f0, $f0, $f2
/* E21580 002B76D0 3C014100 */  li    $1, 0x41000000 # 8.000000
/* E21584 002B76D4 44811000 */  mtc1  $1, $f2
/* E21588 002B76D8 00000000 */  nop   
/* E2158C 002B76DC 46020000 */  add.s $f0, $f0, $f2
/* E21590 002B76E0 E460001C */  swc1  $f0, 0x1c($3)
/* E21594 002B76E4 E4600008 */  swc1  $f0, 8($3)
/* E21598 002B76E8 C4800038 */  lwc1  $f0, 0x38($4)
/* E2159C 002B76EC E4600004 */  swc1  $f0, 4($3)
/* E215A0 002B76F0 C4800040 */  lwc1  $f0, 0x40($4)
/* E215A4 002B76F4 E460000C */  swc1  $f0, 0xc($3)
func_002B76F8:
/* E215A8 002B76F8 8FBF0014 */  lw    $31, 0x14($29)
/* E215AC 002B76FC 8FB00010 */  lw    $16, 0x10($29)
/* E215B0 002B7700 03E00008 */  jr    $31
/* E215B4 002B7704 27BD0018 */   addiu $29, $29, 0x18

/* E215B8 002B7708 00000000 */  nop   
/* E215BC 002B770C 00000000 */  nop   
