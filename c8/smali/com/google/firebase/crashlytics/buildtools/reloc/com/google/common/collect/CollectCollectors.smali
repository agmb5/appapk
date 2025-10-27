.class final Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors;
.super Ljava/lang/Object;
.source "CollectCollectors.java"


# static fields
.field private static final TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableList<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/Range<",
            "Ljava/lang/Comparable;",
            ">;*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableRangeSet<",
            "Ljava/lang/Comparable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TO_IMMUTABLE_SET:Ljava/util/stream/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Collector<",
            "Ljava/lang/Object;",
            "*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSet<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 43
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda18;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda18;

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda26;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda26;

    sget-object v2, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda31;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda31;

    sget-object v3, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda8;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda8;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 44
    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors;->TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;

    .line 66
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda21;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda21;

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda28;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda28;

    sget-object v2, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda4;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda4;

    sget-object v3, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda13;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda13;

    new-array v5, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 67
    invoke-static {v0, v1, v2, v3, v5}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors;->TO_IMMUTABLE_SET:Ljava/util/stream/Collector;

    .line 108
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda20;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda20;

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda27;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda27;

    sget-object v2, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda3;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda3;

    sget-object v3, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda12;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda12;

    new-array v4, v4, [Ljava/util/stream/Collector$Characteristics;

    .line 109
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors;->TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$toImmutableBiMap$0(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableBiMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 37
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableBiMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableMap$1(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 61
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableRangeMap$5(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableRangeMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 130
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/Range;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableRangeMap$Builder;->put(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableRangeMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSortedMap$2(Ljava/util/Comparator;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedMap$Builder;
    .locals 1

    .line 89
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toImmutableSortedMap$3(Ljava/util/function/Function;Ljava/util/function/Function;Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedMap$Builder;Ljava/lang/Object;)V
    .locals 0

    .line 90
    invoke-interface {p0, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedMap$Builder;

    return-void
.end method

.method static synthetic lambda$toImmutableSortedSet$4(Ljava/util/Comparator;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedSet$Builder;
    .locals 1

    .line 100
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static toImmutableBiMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableBiMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 33
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda23;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda23;

    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda30;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda30;

    sget-object p1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda7;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda7;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableList()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableList<",
            "TE;>;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors;->TO_IMMUTABLE_LIST:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 57
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda24;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda24;

    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda11;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda1;

    sget-object p1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda9;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda9;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableRangeMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/Range<",
            "TK;>;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 126
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda19;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda19;

    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda22;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda2;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda2;

    sget-object p1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda10;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda10;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, p0, p1, v2}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableRangeSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>()",
            "Ljava/util/stream/Collector<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/Range<",
            "TE;>;*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableRangeSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors;->TO_IMMUTABLE_RANGE_SET:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableSet()Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors;->TO_IMMUTABLE_SET:Ljava/util/stream/Collector;

    return-object v0
.end method

.method static toImmutableSortedMap(Ljava/util/Comparator;Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda16;-><init>(Ljava/util/Comparator;)V

    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda25;

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda25;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;)V

    sget-object p1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda5;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda5;

    sget-object p2, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda14;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda14;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/stream/Collector$Characteristics;

    sget-object v2, Ljava/util/stream/Collector$Characteristics;->UNORDERED:Ljava/util/stream/Collector$Characteristics;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, p0, p1, p2, v1}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method

.method static toImmutableSortedSet(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/stream/Collector<",
            "TE;*",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/ImmutableSortedSet<",
            "TE;>;>;"
        }
    .end annotation

    .line 98
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda17;-><init>(Ljava/util/Comparator;)V

    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda29;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda29;

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda6;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda6;

    sget-object v2, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda15;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/collect/CollectCollectors$$ExternalSyntheticLambda15;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/util/stream/Collector$Characteristics;

    invoke-static {v0, p0, v1, v2, v3}, Ljava/util/stream/Collector;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Ljava/util/stream/Collector$Characteristics;)Ljava/util/stream/Collector;

    move-result-object p0

    return-object p0
.end method
