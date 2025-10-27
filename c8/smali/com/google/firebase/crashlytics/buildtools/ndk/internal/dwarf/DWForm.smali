.class public final enum Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;
.super Ljava/lang/Enum;
.source "DWForm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum ADDR:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum ADDRX:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum ADDRX1:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum ADDRX2:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum ADDRX3:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum ADDRX4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum BLOCK:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum BLOCK1:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum BLOCK2:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum BLOCK4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum DATA1:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum DATA16:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum DATA2:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum DATA4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum DATA8:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum EXPRLOC:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum FLAG:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum FLAG_PRESENT:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum IMPLICIT_CONST:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum INDIRECT:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum LINE_STRP:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum LOCLISTX:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFIX:Ljava/lang/String; = "DW_FORM_"

.field public static final enum REF1:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum REF2:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum REF4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum REF8:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum REF_ADDR:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum REF_SIG8:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum REF_SUP4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum REF_SUP8:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum REF_UDATA:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum RNGLISTX:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum SDATA:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum SEC_OFFSET:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum STRING:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum STRP:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum STRP_SUP:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum STRX:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum STRX1:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum STRX2:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum STRX3:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum STRX4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

.field public static final enum UDATA:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;


# instance fields
.field private final _fullName:Ljava/lang/String;

.field private final _name:Ljava/lang/String;

.field private final _value:I


# direct methods
.method static constructor <clinit>()V
    .locals 47

    .line 7
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v1, "ADDR"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "addr"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->ADDR:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 8
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v4, "BLOCK2"

    const/4 v5, 0x3

    const-string v6, "block2"

    invoke-direct {v1, v4, v3, v5, v6}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->BLOCK2:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 9
    new-instance v4, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v6, "BLOCK4"

    const/4 v7, 0x2

    const/4 v8, 0x4

    const-string v9, "block4"

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->BLOCK4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 10
    new-instance v6, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v7, "DATA2"

    const/4 v9, 0x5

    const-string v10, "data2"

    invoke-direct {v6, v7, v5, v9, v10}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->DATA2:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 11
    new-instance v7, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v10, "DATA4"

    const/4 v11, 0x6

    const-string v12, "data4"

    invoke-direct {v7, v10, v8, v11, v12}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->DATA4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 12
    new-instance v10, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v12, "DATA8"

    const/4 v13, 0x7

    const-string v14, "data8"

    invoke-direct {v10, v12, v9, v13, v14}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->DATA8:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 13
    new-instance v12, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v14, "STRING"

    const/16 v15, 0x8

    const-string v9, "string"

    invoke-direct {v12, v14, v11, v15, v9}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->STRING:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 14
    new-instance v9, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v14, "BLOCK"

    const/16 v11, 0x9

    const-string v8, "block"

    invoke-direct {v9, v14, v13, v11, v8}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->BLOCK:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 15
    new-instance v8, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v14, "BLOCK1"

    const/16 v13, 0xa

    const-string v5, "block1"

    invoke-direct {v8, v14, v15, v13, v5}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->BLOCK1:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 16
    new-instance v5, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v14, "DATA1"

    const/16 v15, 0xb

    const-string v3, "data1"

    invoke-direct {v5, v14, v11, v15, v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->DATA1:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 17
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v14, "FLAG"

    const/16 v11, 0xc

    const-string v2, "flag"

    invoke-direct {v3, v14, v13, v11, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->FLAG:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 18
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v14, "SDATA"

    const/16 v13, 0xd

    const-string v11, "sdata"

    invoke-direct {v2, v14, v15, v13, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->SDATA:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 19
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v14, "STRP"

    const/16 v15, 0xe

    const-string v13, "strp"

    move-object/from16 v16, v2

    const/16 v2, 0xc

    invoke-direct {v11, v14, v2, v15, v13}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->STRP:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 20
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "UDATA"

    const/16 v14, 0xf

    const-string v15, "udata"

    move-object/from16 v17, v11

    const/16 v11, 0xd

    invoke-direct {v2, v13, v11, v14, v15}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->UDATA:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 21
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "REF_ADDR"

    const/16 v15, 0x10

    const-string v14, "ref_addr"

    move-object/from16 v18, v2

    const/16 v2, 0xe

    invoke-direct {v11, v13, v2, v15, v14}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->REF_ADDR:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 22
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "REF1"

    const/16 v14, 0x11

    const-string v15, "ref1"

    move-object/from16 v19, v11

    const/16 v11, 0xf

    invoke-direct {v2, v13, v11, v14, v15}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->REF1:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 23
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "REF2"

    const/16 v15, 0x12

    const-string v14, "ref2"

    move-object/from16 v20, v2

    const/16 v2, 0x10

    invoke-direct {v11, v13, v2, v15, v14}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->REF2:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 24
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "REF4"

    const/16 v14, 0x13

    const-string v15, "ref4"

    move-object/from16 v21, v11

    const/16 v11, 0x11

    invoke-direct {v2, v13, v11, v14, v15}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->REF4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 25
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "REF8"

    const/16 v15, 0x14

    const-string v14, "ref8"

    move-object/from16 v22, v2

    const/16 v2, 0x12

    invoke-direct {v11, v13, v2, v15, v14}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->REF8:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 26
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "REF_UDATA"

    const/16 v14, 0x15

    const-string v15, "ref_udata"

    move-object/from16 v23, v11

    const/16 v11, 0x13

    invoke-direct {v2, v13, v11, v14, v15}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->REF_UDATA:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 27
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "INDIRECT"

    const/16 v15, 0x16

    const-string v14, "indirect"

    move-object/from16 v24, v2

    const/16 v2, 0x14

    invoke-direct {v11, v13, v2, v15, v14}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->INDIRECT:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 28
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "SEC_OFFSET"

    const/16 v14, 0x17

    const-string v15, "sec_offset"

    move-object/from16 v25, v11

    const/16 v11, 0x15

    invoke-direct {v2, v13, v11, v14, v15}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->SEC_OFFSET:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 29
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "EXPRLOC"

    const/16 v14, 0x18

    const-string v15, "exprloc"

    move-object/from16 v26, v2

    const/16 v2, 0x16

    invoke-direct {v11, v13, v2, v14, v15}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->EXPRLOC:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 30
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "FLAG_PRESENT"

    const/16 v14, 0x17

    const/16 v15, 0x19

    move-object/from16 v27, v11

    const-string v11, "flag_present"

    invoke-direct {v2, v13, v14, v15, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->FLAG_PRESENT:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 31
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "STRX"

    const/16 v14, 0x18

    const/16 v15, 0x1a

    move-object/from16 v28, v2

    const-string v2, "strx"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->STRX:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 32
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "ADDRX"

    const/16 v14, 0x19

    const/16 v15, 0x1b

    move-object/from16 v29, v11

    const-string v11, "addrx"

    invoke-direct {v2, v13, v14, v15, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->ADDRX:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 33
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "REF_SUP4"

    const/16 v14, 0x1a

    const/16 v15, 0x1c

    move-object/from16 v30, v2

    const-string v2, "ref_sup4"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->REF_SUP4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 34
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "STRP_SUP"

    const/16 v14, 0x1b

    const/16 v15, 0x1d

    move-object/from16 v31, v11

    const-string v11, "strp_sup"

    invoke-direct {v2, v13, v14, v15, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->STRP_SUP:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 35
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "DATA16"

    const/16 v14, 0x1c

    const/16 v15, 0x1e

    move-object/from16 v32, v2

    const-string v2, "data16"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->DATA16:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 36
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "LINE_STRP"

    const/16 v14, 0x1d

    const/16 v15, 0x1f

    move-object/from16 v33, v11

    const-string v11, "line_strp"

    invoke-direct {v2, v13, v14, v15, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->LINE_STRP:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 37
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "REF_SIG8"

    const/16 v14, 0x1e

    const/16 v15, 0x20

    move-object/from16 v34, v2

    const-string v2, "ref_sig8"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->REF_SIG8:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 38
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "IMPLICIT_CONST"

    const/16 v14, 0x1f

    const/16 v15, 0x21

    move-object/from16 v35, v11

    const-string v11, "implicit_const"

    invoke-direct {v2, v13, v14, v15, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->IMPLICIT_CONST:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 39
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "LOCLISTX"

    const/16 v14, 0x20

    const/16 v15, 0x22

    move-object/from16 v36, v2

    const-string v2, "loclistx"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->LOCLISTX:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 40
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "RNGLISTX"

    const/16 v14, 0x21

    const/16 v15, 0x23

    move-object/from16 v37, v11

    const-string v11, "rnglistx"

    invoke-direct {v2, v13, v14, v15, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->RNGLISTX:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 41
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "REF_SUP8"

    const/16 v14, 0x22

    const/16 v15, 0x24

    move-object/from16 v38, v2

    const-string v2, "ref_sup8"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->REF_SUP8:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 42
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "STRX1"

    const/16 v14, 0x23

    const/16 v15, 0x25

    move-object/from16 v39, v11

    const-string v11, "strx1"

    invoke-direct {v2, v13, v14, v15, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->STRX1:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 43
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "STRX2"

    const/16 v14, 0x24

    const/16 v15, 0x26

    move-object/from16 v40, v2

    const-string v2, "strx2"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->STRX2:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 44
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "STRX3"

    const/16 v14, 0x25

    const/16 v15, 0x27

    move-object/from16 v41, v11

    const-string v11, "strx3"

    invoke-direct {v2, v13, v14, v15, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->STRX3:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 45
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "STRX4"

    const/16 v14, 0x26

    const/16 v15, 0x28

    move-object/from16 v42, v2

    const-string v2, "strx4"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->STRX4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 46
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "ADDRX1"

    const/16 v14, 0x27

    const/16 v15, 0x29

    move-object/from16 v43, v11

    const-string v11, "addrx1"

    invoke-direct {v2, v13, v14, v15, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->ADDRX1:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 47
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "ADDRX2"

    const/16 v14, 0x28

    const/16 v15, 0x2a

    move-object/from16 v44, v2

    const-string v2, "addrx2"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->ADDRX2:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 48
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "ADDRX3"

    const/16 v14, 0x29

    const/16 v15, 0x2b

    move-object/from16 v45, v11

    const-string v11, "addrx3"

    invoke-direct {v2, v13, v14, v15, v11}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->ADDRX3:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 49
    new-instance v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const-string v13, "ADDRX4"

    const/16 v14, 0x2a

    const/16 v15, 0x2c

    move-object/from16 v46, v2

    const-string v2, "addrx4"

    invoke-direct {v11, v13, v14, v15, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->ADDRX4:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const/16 v2, 0x2b

    new-array v2, v2, [Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v6, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v10, v2, v0

    const/4 v0, 0x6

    aput-object v12, v2, v0

    const/4 v0, 0x7

    aput-object v9, v2, v0

    const/16 v0, 0x8

    aput-object v8, v2, v0

    const/16 v0, 0x9

    aput-object v5, v2, v0

    const/16 v0, 0xa

    aput-object v3, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    const/16 v0, 0x10

    aput-object v21, v2, v0

    const/16 v0, 0x11

    aput-object v22, v2, v0

    const/16 v0, 0x12

    aput-object v23, v2, v0

    const/16 v0, 0x13

    aput-object v24, v2, v0

    const/16 v0, 0x14

    aput-object v25, v2, v0

    const/16 v0, 0x15

    aput-object v26, v2, v0

    const/16 v0, 0x16

    aput-object v27, v2, v0

    const/16 v0, 0x17

    aput-object v28, v2, v0

    const/16 v0, 0x18

    aput-object v29, v2, v0

    const/16 v0, 0x19

    aput-object v30, v2, v0

    const/16 v0, 0x1a

    aput-object v31, v2, v0

    const/16 v0, 0x1b

    aput-object v32, v2, v0

    const/16 v0, 0x1c

    aput-object v33, v2, v0

    const/16 v0, 0x1d

    aput-object v34, v2, v0

    const/16 v0, 0x1e

    aput-object v35, v2, v0

    const/16 v0, 0x1f

    aput-object v36, v2, v0

    const/16 v0, 0x20

    aput-object v37, v2, v0

    const/16 v0, 0x21

    aput-object v38, v2, v0

    const/16 v0, 0x22

    aput-object v39, v2, v0

    const/16 v0, 0x23

    aput-object v40, v2, v0

    const/16 v0, 0x24

    aput-object v41, v2, v0

    const/16 v0, 0x25

    aput-object v42, v2, v0

    const/16 v0, 0x26

    aput-object v43, v2, v0

    const/16 v0, 0x27

    aput-object v44, v2, v0

    const/16 v0, 0x28

    aput-object v45, v2, v0

    const/16 v0, 0x29

    aput-object v46, v2, v0

    const/16 v0, 0x2a

    aput-object v11, v2, v0

    .line 6
    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->LOOKUP:Ljava/util/Map;

    .line 55
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->values()[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    move-result-object v0

    array-length v1, v0

    move v2, v13

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 56
    sget-object v4, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->LOOKUP:Ljava/util/Map;

    iget v5, v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->_value:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->_value:I

    .line 66
    iput-object p4, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->_name:Ljava/lang/String;

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DW_FORM_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->_fullName:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(I)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;
    .locals 1

    .line 76
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->LOOKUP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;
    .locals 1

    .line 6
    const-class v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;->_fullName:Ljava/lang/String;

    return-object p0
.end method
