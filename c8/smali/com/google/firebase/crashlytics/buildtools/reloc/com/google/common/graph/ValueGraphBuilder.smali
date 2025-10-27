.class public final Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;
.super Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/AbstractGraphBuilder;
.source "ValueGraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/AbstractGraphBuilder<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    return-void
.end method

.method private cast()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder<",
            "TN1;TV1;>;"
        }
    .end annotation

    return-object p0
.end method

.method public static directed()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static from(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraph;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;

    invoke-interface {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraph;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    .line 77
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;->allowsSelfLoops(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    .line 78
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraph;->nodeOrder()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ElementOrder;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;->nodeOrder(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ElementOrder;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static undirected()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allowsSelfLoops(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 87
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;->allowsSelfLoops:Z

    return-object p0
.end method

.method public build()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/MutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/MutableValueGraph<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ConfigurableMutableValueGraph;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ConfigurableMutableValueGraph;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/AbstractGraphBuilder;)V

    return-object v0
.end method

.method public expectedNodeCount(I)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 97
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;->expectedNodeCount:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Optional;

    return-object p0
.end method

.method public nodeOrder(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ElementOrder;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder<",
            "TN1;TV;>;"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;->cast()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;

    move-result-object p0

    .line 104
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ElementOrder;

    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ValueGraphBuilder;->nodeOrder:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/graph/ElementOrder;

    return-object p0
.end method
