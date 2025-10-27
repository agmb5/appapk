.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/DebugElfSectionHeaders;
.super Ljava/lang/Object;
.source "DebugElfSectionHeaders.java"


# instance fields
.field public final debugAbbrev:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

.field public final debugInfo:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

.field public final debugLine:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

.field public final debugRanges:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

.field public final debugStr:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/DebugElfSectionHeaders;->debugInfo:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

    .line 54
    iput-object p2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/DebugElfSectionHeaders;->debugAbbrev:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

    .line 55
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/DebugElfSectionHeaders;->debugStr:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

    .line 56
    iput-object p5, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/DebugElfSectionHeaders;->debugRanges:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

    .line 57
    iput-object p4, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/DebugElfSectionHeaders;->debugLine:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

    return-void
.end method

.method public static from(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeaders;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeaders;",
            ")",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional<",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/DebugElfSectionHeaders;",
            ">;"
        }
    .end annotation

    const-string v0, ".debug_info"

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeaders;->getHeaderByName(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object v0

    const-string v1, ".debug_abbrev"

    .line 23
    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeaders;->getHeaderByName(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object v1

    const-string v2, ".debug_str"

    .line 25
    invoke-virtual {p0, v2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeaders;->getHeaderByName(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object v2

    const-string v3, ".debug_ranges"

    .line 27
    invoke-virtual {p0, v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeaders;->getHeaderByName(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object v3

    const-string v4, ".debug_line"

    .line 29
    invoke-virtual {p0, v4}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeaders;->getHeaderByName(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object p0

    .line 31
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v4, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/DebugElfSectionHeaders;

    .line 39
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

    .line 40
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

    .line 41
    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

    .line 42
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

    .line 43
    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/DebugElfSectionHeaders;-><init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfSectionHeader;)V

    .line 38
    invoke-static {v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->absent()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method
