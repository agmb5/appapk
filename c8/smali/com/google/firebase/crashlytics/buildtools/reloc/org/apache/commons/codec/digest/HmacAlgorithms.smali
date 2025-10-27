.class public final enum Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;
.super Ljava/lang/Enum;
.source "HmacAlgorithms.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_MD5:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_1:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_256:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_384:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

.field public static final enum HMAC_SHA_512:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;


# instance fields
.field private final algorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 41
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const-string v1, "HMAC_MD5"

    const/4 v2, 0x0

    const-string v3, "HmacMD5"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_MD5:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    .line 49
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const-string v3, "HMAC_SHA_1"

    const/4 v4, 0x1

    const-string v5, "HmacSHA1"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_1:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    .line 57
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const-string v5, "HMAC_SHA_256"

    const/4 v6, 0x2

    const-string v7, "HmacSHA256"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_256:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    .line 65
    new-instance v5, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const-string v7, "HMAC_SHA_384"

    const/4 v8, 0x3

    const-string v9, "HmacSHA384"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_384:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    .line 73
    new-instance v7, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const-string v9, "HMAC_SHA_512"

    const/4 v10, 0x4

    const-string v11, "HmacSHA512"

    invoke-direct {v7, v9, v10, v11}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->HMAC_SHA_512:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 33
    sput-object v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->algorithm:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;
    .locals 1

    .line 33
    const-class v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;
    .locals 1

    .line 33
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/digest/HmacAlgorithms;->algorithm:Ljava/lang/String;

    return-object p0
.end method
