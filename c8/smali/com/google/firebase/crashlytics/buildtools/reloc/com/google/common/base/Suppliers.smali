.class public final Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$SupplierFunctionImpl;,
        Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$SupplierFunction;,
        Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$ThreadSafeSupplier;,
        Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$SupplierOfInstance;,
        Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$ExpiringMemoizingSupplier;,
        Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;,
        Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$MemoizingSupplier;,
        Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$SupplierComposition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Function;Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Function<",
            "-TF;TT;>;",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier<",
            "TF;>;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$SupplierComposition;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$SupplierComposition;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Function;Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static memoize(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier<",
            "TT;>;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 101
    instance-of v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$MemoizingSupplier;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$MemoizingSupplier;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$MemoizingSupplier;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static memoizeWithExpiration(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 205
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$ExpiringMemoizingSupplier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$ExpiringMemoizingSupplier;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static ofInstance(Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/google/firebase/crashlytics/buildtools/reloc/org/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 260
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$SupplierOfInstance;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$SupplierOfInstance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static supplierFunction()Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Function<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 337
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$SupplierFunctionImpl;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$SupplierFunctionImpl;

    return-object v0
.end method

.method public static synchronizedSupplier(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;)Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier<",
            "TT;>;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 302
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$ThreadSafeSupplier;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Suppliers$ThreadSafeSupplier;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Supplier;)V

    return-object v0
.end method
