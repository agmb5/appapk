.class public Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdWriter;
.super Ljava/lang/Object;
.source "MappingFileIdWriter.java"


# static fields
.field public static final MAPPING_FILE_ID_RESOURCE_FILENAME:Ljava/lang/String; = "com_google_firebase_crashlytics_mappingfileid.xml"


# instance fields
.field private final resourceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdWriter;->resourceFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public writeMappingFileId(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/XmlResourceUtils;->createResourceFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdWriter;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdWriter;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->verifyDirectory(Ljava/io/File;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdWriter;->resourceFile:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->writeInputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 40
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics could not create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdWriter;->resourceFile:Ljava/io/File;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
