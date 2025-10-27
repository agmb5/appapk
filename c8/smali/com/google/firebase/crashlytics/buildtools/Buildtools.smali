.class public Lcom/google/firebase/crashlytics/buildtools/Buildtools;
.super Ljava/lang/Object;
.source "Buildtools.java"


# static fields
.field protected static final BASE_API_URL_PROP:Ljava/lang/String; = "crashlytics.webApiUrl"

.field protected static final CODEMAPPING_API_URL_PROP:Ljava/lang/String; = "crashlytics.cmApiUrl"

.field public static final DUMMY_MAPPING_ID:Ljava/lang/String; = "00000000000000000000000000000000"

.field private static final UNSTRIPPED_NATIVE_LIBS_DIR_ERR_MSG:Ljava/lang/String; = "Either specify the correct unstrippedNativeLibsDir or disable Crashlytics symbol uploading."

.field private static instance:Lcom/google/firebase/crashlytics/buildtools/Buildtools;

.field private static logger:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

.field private static sharedWebApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/log/ConsoleLogger;

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->INFO:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/log/ConsoleLogger;-><init>(Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logger:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/crashlytics/buildtools/api/WebApi;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Crashlytics Buildtools initialized."

    .line 119
    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->setWebApi(Lcom/google/firebase/crashlytics/buildtools/api/WebApi;)V

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Package;->getImplementationTitle()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->setBuildtoolsClientInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createWebApi()Lcom/google/firebase/crashlytics/buildtools/api/WebApi;
    .locals 4

    const-string v0, "crashlytics.webApiUrl"

    const-string v1, "https://api.crashlytics.com"

    .line 57
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "crashlytics.cmApiUrl"

    const-string v2, "https://firebasecrashlyticssymbols.googleapis.com"

    .line 58
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/api/RestfulWebApi;

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/DefaultProxyFactory;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/DefaultProxyFactory;-><init>()V

    invoke-direct {v2, v0, v1, v3}, Lcom/google/firebase/crashlytics/buildtools/api/RestfulWebApi;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxyFactory;)V

    return-object v2
.end method

.method public static generateMappingFileId()Ljava/lang/String;
    .locals 3

    .line 134
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/crashlytics/buildtools/Buildtools;
    .locals 3

    const-class v0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    monitor-enter v0

    .line 103
    :try_start_0
    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->instance:Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    if-nez v1, :cond_0

    .line 104
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->createWebApi()Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    move-result-object v1

    .line 105
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    invoke-direct {v2, v1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;-><init>(Lcom/google/firebase/crashlytics/buildtools/api/WebApi;)V

    sput-object v2, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->instance:Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    .line 107
    :cond_0
    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->instance:Lcom/google/firebase/crashlytics/buildtools/Buildtools;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLogger()Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;
    .locals 1

    .line 71
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logger:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    return-object v0
.end method

.method static getWebApi()Lcom/google/firebase/crashlytics/buildtools/api/WebApi;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->sharedWebApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    return-object v0
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1

    .line 81
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logger:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    invoke-interface {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 97
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logger:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    invoke-interface {v0, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .locals 1

    .line 85
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logger:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    invoke-interface {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;->logI(Ljava/lang/String;)V

    return-void
.end method

.method public static logV(Ljava/lang/String;)V
    .locals 1

    .line 77
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logger:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    invoke-interface {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;->logV(Ljava/lang/String;)V

    return-void
.end method

.method public static logW(Ljava/lang/String;)V
    .locals 2

    .line 89
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logger:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 93
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logger:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    invoke-interface {v0, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->main([Ljava/lang/String;)V

    return-void
.end method

.method public static setLogger(Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;)V
    .locals 0

    .line 67
    sput-object p0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logger:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    return-void
.end method

.method static setWebApi(Lcom/google/firebase/crashlytics/buildtools/api/WebApi;)V
    .locals 2

    .line 46
    invoke-interface {p0}, Lcom/google/firebase/crashlytics/buildtools/api/WebApi;->getBaseApiUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://api.crashlytics.com"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crashlytics API host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/firebase/crashlytics/buildtools/api/WebApi;->getBaseApiUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_0
    sput-object p0, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->sharedWebApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    return-void
.end method


# virtual methods
.method public generateNativeSymbolFiles(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/NdkCSymGenerator;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/NdkCSymGenerator;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->generateNativeSymbolFiles(Ljava/io/File;Ljava/io/File;Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;)V

    return-void
.end method

.method public generateNativeSymbolFiles(Ljava/io/File;Ljava/io/File;Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Cleaning up unzip target dir: "

    .line 229
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "Either specify the correct unstrippedNativeLibsDir or disable Crashlytics symbol uploading."

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 234
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->isZipFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    new-instance v1, Ljava/io/File;

    const-string v2, "unzippedLibsCache"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zipped input file detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; unzipping to temp location: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 238
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v2}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 243
    :try_start_0
    invoke-static {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 244
    invoke-static {v1}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->verifyDirectory(Ljava/io/File;)V

    .line 245
    invoke-static {p1, v1}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->unzipArchive(Ljava/io/File;Ljava/io/File;)V

    .line 247
    invoke-virtual {p0, v1, p2, p3}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->generateNativeSymbolFiles(Ljava/io/File;Ljava/io/File;Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 252
    invoke-static {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 249
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 252
    invoke-static {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 253
    throw p0

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Generating native symbol files for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "; writing output to: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 258
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 257
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;->SO_FILE_FILTER:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/filefilter/IOFileFilter;

    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/filefilter/IOFileFilter;

    .line 261
    invoke-static {p1, p0, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/FileUtils;->listFiles(Ljava/io/File;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/filefilter/IOFileFilter;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/io/filefilter/IOFileFilter;)Ljava/util/Collection;

    move-result-object p0

    goto :goto_1

    .line 263
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 265
    :goto_1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " native libraries found at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 270
    invoke-static {p2}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->verifyDirectory(Ljava/io/File;)V

    .line 272
    :try_start_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 273
    invoke-interface {p3, p1, p2}, Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;->generateSymbols(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Null symbol file generated for %s"

    new-array v1, v4, [Ljava/lang/Object;

    .line 275
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logW(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "Generated symbol file: %s (%,d bytes)"

    new-array v1, v3, [Ljava/lang/Object;

    .line 278
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v4

    .line 277
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/firebase/crashlytics/buildtools/ndk/internal/CodeMappingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :cond_3
    return-void

    :catch_1
    move-exception p0

    .line 282
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 266
    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-array p2, v3, [Ljava/lang/Object;

    .line 267
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v5

    aput-object v2, p2, v4

    const-string p1, "No native libraries found at %s. %s"

    .line 266
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 230
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-array p2, v3, [Ljava/lang/Object;

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v5

    aput-object v2, p2, v4

    const-string p1, "Unstripped native library path does not exist: %s. %s"

    .line 230
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public injectMappingFileIdIntoResource(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->generateMappingFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->injectMappingFileIdIntoResource(Ljava/io/File;Ljava/lang/String;)Z

    return-void
.end method

.method public injectMappingFileIdIntoResource(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    const/4 v1, 0x1

    aput-object p1, p0, v1

    const-string v2, "Injecting mappingFileId into file [mappingFileId: %1$s; file:  %2$s]"

    .line 148
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 151
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader;->create(Ljava/io/File;)Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader;

    move-result-object p0

    .line 152
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader;->getMappingFileId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "mappingFileId was NOT updated; correct value already present."

    .line 153
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    return v0

    .line 157
    :cond_0
    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdWriter;

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdWriter;-><init>(Ljava/io/File;)V

    .line 158
    invoke-virtual {p0, p2}, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdWriter;->writeMappingFileId(Ljava/lang/String;)V

    return v1
.end method

.method public setBuildtoolsClientInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 315
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getWebApi()Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/api/WebApi;->setClientType(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getWebApi()Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/google/firebase/crashlytics/buildtools/api/WebApi;->setClientVersion(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getWebApi()Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/api/WebApi;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method public uploadMappingFile(Ljava/io/File;Ljava/io/File;Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;Lcom/google/firebase/crashlytics/buildtools/Obfuscator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extracting mappingFileId from resource file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    invoke-static {p2}, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader;->create(Ljava/io/File;)Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader;->getMappingFileId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->uploadMappingFile(Ljava/io/File;Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;Lcom/google/firebase/crashlytics/buildtools/Obfuscator;)V

    return-void

    .line 193
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Resource file does not contain a valid mapping file id: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Resource file is not valid: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public uploadMappingFile(Ljava/io/File;Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;Lcom/google/firebase/crashlytics/buildtools/Obfuscator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    aput-object p2, p0, v0

    .line 205
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, p0, v3

    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->getGoogleAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, p0, v3

    const-string v2, "Uploading Mapping File [mappingFile: %1$s; mappingFileId: %2$s;packageName: %3$s; googleAppId: %4$s]"

    .line 203
    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 207
    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;

    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getWebApi()Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;-><init>(Lcom/google/firebase/crashlytics/buildtools/api/WebApi;)V

    .line 208
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/buildtools/api/MappingFileService;->uploadMappingFile(Ljava/io/File;Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;Lcom/google/firebase/crashlytics/buildtools/Obfuscator;)V

    new-array p0, v0, [Ljava/lang/Object;

    .line 211
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "Mapping file uploaded: %1$s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logI(Ljava/lang/String;)V

    return-void
.end method

.method public uploadNativeSymbolFiles(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/CsymSymbolFileService;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/CsymSymbolFileService;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->uploadNativeSymbolFiles(Ljava/io/File;Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/api/SymbolFileService;)V

    return-void
.end method

.method public uploadNativeSymbolFiles(Ljava/io/File;Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/api/SymbolFileService;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uploading native symbol files from directory: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 300
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p0, v0

    .line 301
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getWebApi()Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    move-result-object v2

    invoke-interface {p3, v2, v1, p2}, Lcom/google/firebase/crashlytics/buildtools/api/SymbolFileService;->uploadNativeSymbolFile(Lcom/google/firebase/crashlytics/buildtools/api/WebApi;Ljava/io/File;Ljava/lang/String;)V

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crashlytics symbol file uploaded successfully; deleting local file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-static {v2}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 296
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Crashlytics native symbol files directory does not exist: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 297
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
