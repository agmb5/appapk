.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRanges;
.super Ljava/lang/Object;
.source "NamedRanges.java"


# instance fields
.field public _byStartAddress:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRanges;->_byStartAddress:Ljava/util/TreeMap;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;

    .line 13
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRanges;->_byStartAddress:Ljava/util/TreeMap;

    iget-object v2, v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;->start:Ljava/lang/Long;

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static findClosest(Ljava/util/TreeMap;J)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/Long;",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;",
            ">;J)",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;"
        }
    .end annotation

    .line 32
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public rangeFor(J)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional<",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRanges;->_byStartAddress:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRanges;->_byStartAddress:Ljava/util/TreeMap;

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRanges;->_byStartAddress:Ljava/util/TreeMap;

    .line 20
    invoke-static {p0, p1, p2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRanges;->findClosest(Ljava/util/TreeMap;J)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    .line 23
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->absent()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    .line 26
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;->contains(J)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object p0

    goto :goto_1

    .line 28
    :cond_2
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->absent()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object p0

    :goto_1
    return-object p0
.end method
