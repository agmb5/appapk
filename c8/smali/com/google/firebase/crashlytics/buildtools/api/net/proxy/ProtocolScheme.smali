.class public final enum Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;
.super Ljava/lang/Enum;
.source "ProtocolScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

.field public static final enum HTTP:Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

.field public static final enum HTTPS:Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

.field public static final enum Other:Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 9
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    const-string v1, "HTTP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->HTTP:Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    .line 10
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    const-string v3, "HTTPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->HTTPS:Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    .line 11
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    const-string v5, "Other"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->Other:Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 8
    sput-object v5, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static getType(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;
    .locals 1

    const-string v0, "HTTP"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->HTTP:Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    return-object p0

    :cond_0
    const-string v0, "HTTPS"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 25
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->HTTPS:Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    return-object p0

    .line 27
    :cond_1
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->Other:Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    return-object p0
.end method

.method public static getType(Ljava/net/URI;)Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;
    .locals 0

    .line 18
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->getType(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/net/URL;)Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;
    .locals 0

    .line 14
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->getType(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;
    .locals 1

    .line 8
    const-class v0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;
    .locals 1

    .line 8
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProtocolScheme;

    return-object v0
.end method
