.class interface abstract Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/SortedMultisetBridge;
.super Ljava/lang/Object;
.source "SortedMultisetBridge.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/Multiset<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    .line 29
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/SortedMultisetBridge;->elementSet()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public abstract elementSet()Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end method
