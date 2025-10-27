.class public Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/HttpResponseException;
.super Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ClientProtocolException;
.source "HttpResponseException.java"


# static fields
.field private static final serialVersionUID:J = -0x63bc080fd5942acdL


# instance fields
.field private final statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    .line 42
    iput p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/HttpResponseException;->statusCode:I

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/HttpResponseException;->statusCode:I

    return p0
.end method
