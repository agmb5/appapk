.class public Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;
.super Ljava/lang/Object;
.source "SPNegoSchemeFactory.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthSchemeFactory;
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthSchemeProvider;


# instance fields
.field private final stripPort:Z

.field private final useCanonicalHostname:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, v0, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;->useCanonicalHostname:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    .line 56
    iput-boolean p2, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;->useCanonicalHostname:Z

    return-void
.end method


# virtual methods
.method public create(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpContext;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthScheme;
    .locals 1

    .line 84
    new-instance p1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoScheme;

    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    iget-boolean p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;->useCanonicalHostname:Z

    invoke-direct {p1, v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoScheme;-><init>(ZZ)V

    return-object p1
.end method

.method public isStripPort()Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    return p0
.end method

.method public isUseCanonicalHostname()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;->useCanonicalHostname:Z

    return p0
.end method

.method public newInstance(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/params/HttpParams;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthScheme;
    .locals 1

    .line 79
    new-instance p1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoScheme;

    iget-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    iget-boolean p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;->useCanonicalHostname:Z

    invoke-direct {p1, v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoScheme;-><init>(ZZ)V

    return-object p1
.end method
