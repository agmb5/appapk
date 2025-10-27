.class Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$1;
.super Ljava/lang/Object;
.source "ElfDataParser.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser;->getGnuBuildId(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeaders;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Function<",
        "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$ElfNote;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$1;->this$0:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$ElfNote;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$1;->apply(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$ElfNote;)[B

    move-result-object p0

    return-object p0
.end method

.method public apply(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$ElfNote;)[B
    .locals 0

    .line 176
    iget-object p0, p1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$ElfNote;->desc:[B

    return-object p0
.end method
