.class Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$2;
.super Ljava/lang/Object;
.source "ElfDataParser.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser;->getTextSectionHash(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeaders;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Function<",
        "[B[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$2;->this$0:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 184
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$2;->apply([B)[B

    move-result-object p0

    return-object p0
.end method

.method public apply([B)[B
    .locals 4

    const/16 p0, 0x10

    new-array p0, p0, [B

    const/4 v0, 0x0

    .line 189
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 190
    rem-int/lit8 v1, v0, 0x10

    aget-byte v2, p0, v1

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
