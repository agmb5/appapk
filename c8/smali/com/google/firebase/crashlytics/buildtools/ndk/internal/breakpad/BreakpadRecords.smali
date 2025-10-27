.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;
.super Ljava/lang/Object;
.source "BreakpadRecords.java"


# instance fields
.field private final architecture:Ljava/lang/String;

.field private final codeId:Ljava/lang/String;

.field private final moduleId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final os:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;->os:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;->architecture:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;->moduleId:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;->name:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;->codeId:Ljava/lang/String;

    return-void
.end method

.method public static createFromBreakpadFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 28
    array-length v3, v1

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3

    const/4 v3, 0x0

    aget-object v4, v1, v3

    const-string v5, "MODULE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-array v3, v3, [Ljava/lang/String;

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v5, "INFO"

    .line 37
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 45
    array-length v0, v3

    const/4 v2, 0x2

    const/4 v4, 0x3

    if-lt v0, v4, :cond_2

    .line 46
    aget-object p0, v3, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or missing INFO line, no CODE_ID found for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logW(Ljava/lang/String;)V

    move-object p0, v0

    .line 52
    :goto_0
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;

    const/4 v3, 0x1

    aget-object v6, v1, v3

    aget-object v7, v1, v2

    aget-object v2, v1, v4

    .line 54
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x4

    aget-object v9, v1, v2

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 29
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find valid module record for Breakpad file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " Clean your build directory and try again. Contact Firebase support if the problem persists."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getArchitecture()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;->architecture:Ljava/lang/String;

    return-object p0
.end method

.method public getCodeId()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;->codeId:Ljava/lang/String;

    return-object p0
.end method

.method public getModuleId()Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;->moduleId:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOs()Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadRecords;->os:Ljava/lang/String;

    return-object p0
.end method
