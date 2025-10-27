.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;
.super Ljava/lang/Object;
.source "DefaultNamedRangesResolver.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/NamedRangesResolver;


# instance fields
.field private final addressSize:I

.field private final byteReader:Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;

.field private final rangesSectionOffset:J


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;IJ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->byteReader:Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;

    .line 24
    iput p2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->addressSize:I

    .line 25
    iput-wide p3, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->rangesSectionOffset:J

    return-void
.end method


# virtual methods
.method public resolveNamedRanges(JLjava/lang/String;J)Ljava/util/List;
    .locals 8
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

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->byteReader:Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->getCurrentOffset()J

    move-result-wide v1

    .line 46
    iget-object v3, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->byteReader:Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;

    iget-wide v4, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->rangesSectionOffset:J

    add-long/2addr v4, p1

    invoke-virtual {v3, v4, v5}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->seek(J)V

    .line 52
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->byteReader:Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;

    iget p2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->addressSize:I

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readLong(I)J

    move-result-wide p1

    .line 53
    iget-object v3, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->byteReader:Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;

    iget v4, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->addressSize:I

    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, p1, v5

    if-nez v7, :cond_0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    .line 87
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/DefaultNamedRangesResolver;->byteReader:Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->seek(J)V

    return-object v0

    :cond_0
    const-wide/16 v5, -0x1

    cmp-long v5, p1, v5

    if-nez v5, :cond_1

    move-wide p4, v3

    goto :goto_0

    :cond_1
    cmp-long v5, p1, v3

    if-ltz v5, :cond_2

    goto :goto_0

    :cond_2
    add-long/2addr p1, p4

    add-long/2addr v3, p4

    .line 84
    new-instance v5, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {v5, p3, p1, p2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/NamedRange;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Could not properly resolve range entries"

    .line 89
    invoke-static {p1, p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
