.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/ReferenceBytesConverter;
.super Ljava/lang/Object;
.source "ReferenceBytesConverter.java"


# instance fields
.field private final byteOrder:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/ReferenceBytesConverter;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method

.method private static referenceBytesAsLong([BLjava/nio/ByteOrder;)J
    .locals 4

    .line 22
    array-length v0, p0

    const/16 v1, 0x8

    new-array v1, v1, [B

    .line 24
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x0

    if-ne p1, v2, :cond_0

    rsub-int/lit8 v2, v0, 0x8

    goto :goto_0

    :cond_0
    move v2, v3

    .line 25
    :goto_0
    invoke-static {p0, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public asLongValue([B)J
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/ReferenceBytesConverter;->byteOrder:Ljava/nio/ByteOrder;

    invoke-static {p1, p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/ReferenceBytesConverter;->referenceBytesAsLong([BLjava/nio/ByteOrder;)J

    move-result-wide p0

    return-wide p0
.end method
