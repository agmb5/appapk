.class public Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateSchemeFactory;
.super Ljava/lang/Object;
.source "NegotiateSchemeFactory.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthSchemeFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final spengoGenerator:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SpnegoTokenGenerator;

.field private final stripPort:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateSchemeFactory;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SpnegoTokenGenerator;)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateSchemeFactory;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SpnegoTokenGenerator;Z)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateSchemeFactory;->spengoGenerator:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SpnegoTokenGenerator;

    .line 50
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateSchemeFactory;->stripPort:Z

    return-void
.end method


# virtual methods
.method public getSpengoGenerator()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SpnegoTokenGenerator;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateSchemeFactory;->spengoGenerator:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SpnegoTokenGenerator;

    return-object p0
.end method

.method public isStripPort()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateSchemeFactory;->stripPort:Z

    return p0
.end method

.method public newInstance(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/params/HttpParams;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthScheme;
    .locals 1

    .line 63
    new-instance p1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateScheme;

    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateSchemeFactory;->spengoGenerator:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SpnegoTokenGenerator;

    iget-boolean p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateSchemeFactory;->stripPort:Z

    invoke-direct {p1, v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NegotiateScheme;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SpnegoTokenGenerator;Z)V

    return-object p1
.end method
