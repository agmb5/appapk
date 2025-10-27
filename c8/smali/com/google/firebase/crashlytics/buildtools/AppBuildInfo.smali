.class public Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;
.super Ljava/lang/Object;
.source "AppBuildInfo.java"


# instance fields
.field private final buildDir:Ljava/io/File;

.field private final googleAppId:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->packageName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->googleAppId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->buildDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public getBuildDir()Ljava/io/File;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->buildDir:Ljava/io/File;

    return-object p0
.end method

.method public getGoogleAppId()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->googleAppId:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method
