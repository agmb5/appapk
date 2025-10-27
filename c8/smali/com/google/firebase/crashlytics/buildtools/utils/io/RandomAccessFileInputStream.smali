.class public Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;
.super Lcom/google/firebase/crashlytics/buildtools/utils/io/SeekableInputStream;
.source "RandomAccessFileInputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private _buffer:[B

.field private _bufferCount:I

.field private _bufferPos:I

.field private _file:Ljava/io/RandomAccessFile;

.field private _filePointer:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/SeekableInputStream;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    .line 24
    iput v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    .line 27
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_file:Ljava/io/RandomAccessFile;

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 28
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_buffer:[B

    .line 29
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_filePointer:J

    return-void
.end method

.method private fillBuffer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    iput v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    .line 174
    iput v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    .line 175
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_buffer:[B

    array-length v2, v1

    invoke-direct {p0, v1, v0, v2}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->readFromFile([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    iput v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    :cond_0
    return-void
.end method

.method private readFromFile([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    .line 183
    iget-object p2, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_filePointer:J

    return p1
.end method

.method private readOnce([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    iget v1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_buffer:[B

    array-length v0, v0

    if-lt p3, v0, :cond_0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->readFromFile([BII)I

    move-result p0

    return p0

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->fillBuffer()V

    .line 159
    iget v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    iget v1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-ge v0, p3, :cond_2

    move p3, v0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_buffer:[B

    iget v1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget p1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    return p3
.end method

.method private validateOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_buffer:[B

    if-eqz p0, :cond_0

    return-void

    .line 189
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Stream closed."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_file:Ljava/io/RandomAccessFile;

    .line 148
    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_buffer:[B

    return-void
.end method

.method public getCurrentOffset()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->validateOpen()V

    .line 56
    iget v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    iget v1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    sub-int/2addr v0, v1

    .line 57
    iget-wide v1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_filePointer:J

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-long v3, p0

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->validateOpen()V

    .line 76
    iget v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    iget v1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    if-lt v0, v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->fillBuffer()V

    .line 78
    iget v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    iget v1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_buffer:[B

    iget v1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->validateOpen()V

    .line 88
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_4

    .line 93
    array-length v0, p1

    if-gt p2, v0, :cond_4

    if-ltz p3, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_4

    if-ltz v0, :cond_4

    if-nez p3, :cond_0

    return p3

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->validateOpen()V

    const/4 v0, 0x0

    :cond_1
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 103
    invoke-direct {p0, p1, v1, v2}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->readOnce([BII)I

    move-result v1

    if-gtz v1, :cond_3

    if-nez v0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    add-int/2addr v0, v1

    if-lt v0, p3, :cond_1

    return v0

    .line 94
    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public readFully([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->validateOpen()V

    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    .line 65
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    return-void

    .line 67
    :cond_1
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public seek(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->validateOpen()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 39
    iget-wide v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_filePointer:J

    iget v2, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    int-to-long v2, v2

    sub-long v2, v0, v2

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    sub-long/2addr p1, v2

    long-to-int p1, p1

    .line 44
    iput p1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    .line 50
    iget-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_filePointer:J

    return-void

    .line 36
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Seek offset must be greater than 0"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->validateOpen()V

    .line 124
    iget v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferCount:I

    iget v1, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    sub-int/2addr v0, v1

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    int-to-long v0, v1

    add-long/2addr v0, p1

    long-to-int v0, v0

    .line 128
    iput v0, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_bufferPos:I

    return-wide p1

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->getCurrentOffset()J

    move-result-wide v0

    .line 133
    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->_file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    add-long/2addr p1, v0

    cmp-long v4, p1, v2

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    move-wide v2, p1

    .line 140
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/crashlytics/buildtools/utils/io/RandomAccessFileInputStream;->seek(J)V

    sub-long/2addr v2, v0

    return-wide v2
.end method
