.class public Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;
.super Ljava/lang/Object;
.source "FirebaseMappingFileService.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/api/MappingFileService;


# static fields
.field private static final MAPPING_UPLOAD_REQUEST_FORMAT:Ljava/lang/String; = "%s/v1/project/-/app/%s/upload/java/%s"


# instance fields
.field private final webApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/buildtools/api/WebApi;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;->webApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    return-void
.end method

.method private static getMappingBuildDir(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, ".crashlytics-mappings-tmp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->verifyDirectory(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public uploadMappingFile(Ljava/io/File;Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;Lcom/google/firebase/crashlytics/buildtools/Obfuscator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 32
    new-instance p4, Ljava/io/File;

    .line 33
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->getBuildDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;->getMappingBuildDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".gz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zipping mapping file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 37
    invoke-static {p1, p4}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->gZipFile(Ljava/io/File;Ljava/io/File;)V

    .line 39
    new-instance p1, Ljava/net/URL;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;->webApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    .line 41
    invoke-interface {v3}, Lcom/google/firebase/crashlytics/buildtools/api/WebApi;->getCodeMappingApiUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 42
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->getGoogleAppId()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v0

    const/4 p3, 0x2

    aput-object p2, v2, p3

    const-string p2, "%s/v1/project/-/app/%s/upload/java/%s"

    .line 39
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/api/FirebaseMappingFileService;->webApi:Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    invoke-interface {p0, p1, p4}, Lcom/google/firebase/crashlytics/buildtools/api/WebApi;->uploadFile(Ljava/net/URL;Ljava/io/File;)V

    .line 46
    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    return-void

    .line 28
    :cond_0
    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/exception/ZeroByteFileException;

    new-array p2, v0, [Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Mapping file \'%s\' is zero bytes, skipping upload."

    .line 28
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/exception/ZeroByteFileException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
