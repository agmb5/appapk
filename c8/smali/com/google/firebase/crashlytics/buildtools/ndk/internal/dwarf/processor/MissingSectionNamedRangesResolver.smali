.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/MissingSectionNamedRangesResolver;
.super Ljava/lang/Object;
.source "MissingSectionNamedRangesResolver.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/NamedRangesResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveNamedRanges(JLjava/lang/String;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;",
            ">;"
        }
    .end annotation

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
