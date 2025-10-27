.class final Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/LogFactoryImpl$1;
.super Ljava/lang/Object;
.source "LogFactoryImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 0

    .line 600
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/logging/impl/LogFactoryImpl;->access$000()Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method
