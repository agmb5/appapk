.class public final enum Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;
.super Ljava/lang/Enum;
.source "CrashlyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

.field public static final enum DEBUG:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

.field public static final enum ERROR:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

.field public static final enum INFO:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

.field public static final enum VERBOSE:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

.field public static final enum WARNING:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 12
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->ERROR:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    .line 13
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    const-string v3, "WARNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->WARNING:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    .line 14
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->INFO:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    .line 15
    new-instance v5, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    const-string v7, "DEBUG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->DEBUG:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    .line 16
    new-instance v7, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    const-string v9, "VERBOSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->VERBOSE:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 11
    sput-object v9, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;
    .locals 1

    .line 11
    const-class v0, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->$VALUES:[Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    invoke-virtual {v0}, [Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    return-object v0
.end method


# virtual methods
.method public logsFor(Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;)Z
    .locals 0

    .line 26
    iget p0, p0, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->value:I

    iget p1, p1, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->value:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
