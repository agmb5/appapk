.class final Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;
.super Ljava/lang/Object;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Referenced"
.end annotation


# instance fields
.field private final hashCode:I

.field private final reference:Ljava/lang/ref/WeakReference;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$WeakKey;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$WeakKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$1;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    .line 420
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getValue()Ljava/lang/Object;
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 434
    instance-of v0, p1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 435
    check-cast p1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 436
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 437
    invoke-direct {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 447
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode()I

    move-result p1

    if-ne p0, p1, :cond_2

    move v1, v0

    goto :goto_1

    .line 455
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    .line 425
    iget p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/WeakHashtable$Referenced;->hashCode:I

    return p0
.end method
