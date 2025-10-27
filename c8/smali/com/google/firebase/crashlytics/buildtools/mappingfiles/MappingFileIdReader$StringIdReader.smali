.class Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader$StringIdReader;
.super Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader;
.source "MappingFileIdReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringIdReader"
.end annotation


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/xml/parsers/DocumentBuilder;)V
    .locals 0

    .line 42
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader;-><init>(Ljavax/xml/parsers/DocumentBuilder;)V

    .line 43
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader$StringIdReader;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected parseXmlSource()Lorg/w3c/dom/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader$StringIdReader;->string:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader$StringIdReader;->string:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 52
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/mappingfiles/MappingFileIdReader$StringIdReader;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
