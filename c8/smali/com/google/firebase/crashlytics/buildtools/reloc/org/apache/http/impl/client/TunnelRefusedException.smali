.class public Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/TunnelRefusedException;
.super Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpException;
.source "TunnelRefusedException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x77ff549cf91bbbabL


# instance fields
.field private final response:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponse;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p2, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/TunnelRefusedException;->response:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponse;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/TunnelRefusedException;->response:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponse;

    return-object p0
.end method
