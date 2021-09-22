.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel entity_free_static_data
/* A7EDC 801117DC 27BDFFE0 */  addiu     $sp, $sp, -0x20
/* A7EE0 801117E0 0080382D */  daddu     $a3, $a0, $zero
/* A7EE4 801117E4 0000182D */  daddu     $v1, $zero, $zero
/* A7EE8 801117E8 3C068015 */  lui       $a2, %hi(wStaticEntityData)
/* A7EEC 801117EC 24C61668 */  addiu     $a2, $a2, %lo(wStaticEntityData)
/* A7EF0 801117F0 00C0282D */  daddu     $a1, $a2, $zero
/* A7EF4 801117F4 AFBF0018 */  sw        $ra, 0x18($sp)
/* A7EF8 801117F8 AFB10014 */  sw        $s1, 0x14($sp)
/* A7EFC 801117FC AFB00010 */  sw        $s0, 0x10($sp)
.L80111800:
/* A7F00 80111800 8CA40000 */  lw        $a0, ($a1)
/* A7F04 80111804 10800006 */  beqz      $a0, .L80111820
/* A7F08 80111808 2862001E */   slti     $v0, $v1, 0x1e
/* A7F0C 8011180C 24630001 */  addiu     $v1, $v1, 1
/* A7F10 80111810 2862001E */  slti      $v0, $v1, 0x1e
/* A7F14 80111814 1440FFFA */  bnez      $v0, .L80111800
/* A7F18 80111818 24A50004 */   addiu    $a1, $a1, 4
/* A7F1C 8011181C 2862001E */  slti      $v0, $v1, 0x1e
.L80111820:
/* A7F20 80111820 10400023 */  beqz      $v0, .L801118B0
/* A7F24 80111824 2462FFFF */   addiu    $v0, $v1, -1
/* A7F28 80111828 00021080 */  sll       $v0, $v0, 2
/* A7F2C 8011182C 00468821 */  addu      $s1, $v0, $a2
/* A7F30 80111830 8E240000 */  lw        $a0, ($s1)
/* A7F34 80111834 1487001E */  bne       $a0, $a3, .L801118B0
/* A7F38 80111838 00000000 */   nop
/* A7F3C 8011183C 94820000 */  lhu       $v0, ($a0)
/* A7F40 80111840 30420008 */  andi      $v0, $v0, 8
/* A7F44 80111844 1040000C */  beqz      $v0, .L80111878
/* A7F48 80111848 00000000 */   nop
/* A7F4C 8011184C 8C830018 */  lw        $v1, 0x18($a0)
/* A7F50 80111850 8C650004 */  lw        $a1, 4($v1)
/* A7F54 80111854 8C620000 */  lw        $v0, ($v1)
/* A7F58 80111858 00A22823 */  subu      $a1, $a1, $v0
/* A7F5C 8011185C 8C62000C */  lw        $v0, 0xc($v1)
/* A7F60 80111860 8C630008 */  lw        $v1, 8($v1)
/* A7F64 80111864 00058083 */  sra       $s0, $a1, 2
/* A7F68 80111868 00431023 */  subu      $v0, $v0, $v1
/* A7F6C 8011186C 00021083 */  sra       $v0, $v0, 2
/* A7F70 80111870 08044622 */  j         .L80111888
/* A7F74 80111874 02028021 */   addu     $s0, $s0, $v0
.L80111878:
/* A7F78 80111878 8C82001C */  lw        $v0, 0x1c($a0)
/* A7F7C 8011187C 8C830018 */  lw        $v1, 0x18($a0)
/* A7F80 80111880 00431023 */  subu      $v0, $v0, $v1
/* A7F84 80111884 00028083 */  sra       $s0, $v0, 2
.L80111888:
/* A7F88 80111888 0C0445E4 */  jal       func_80111790
/* A7F8C 8011188C 00000000 */   nop
/* A7F90 80111890 14400007 */  bnez      $v0, .L801118B0
/* A7F94 80111894 00000000 */   nop
/* A7F98 80111898 3C038015 */  lui       $v1, %hi(wStaticEntityDataSize)
/* A7F9C 8011189C 2463165C */  addiu     $v1, $v1, %lo(wStaticEntityDataSize)
/* A7FA0 801118A0 8C620000 */  lw        $v0, ($v1)
/* A7FA4 801118A4 AE200000 */  sw        $zero, ($s1)
/* A7FA8 801118A8 00501023 */  subu      $v0, $v0, $s0
/* A7FAC 801118AC AC620000 */  sw        $v0, ($v1)
.L801118B0:
/* A7FB0 801118B0 8FBF0018 */  lw        $ra, 0x18($sp)
/* A7FB4 801118B4 8FB10014 */  lw        $s1, 0x14($sp)
/* A7FB8 801118B8 8FB00010 */  lw        $s0, 0x10($sp)
/* A7FBC 801118BC 03E00008 */  jr        $ra
/* A7FC0 801118C0 27BD0020 */   addiu    $sp, $sp, 0x20
