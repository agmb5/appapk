.class public final synthetic Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/io/CharSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/BufferedReader;


# direct methods
.method public synthetic constructor <init>(Ljava/io/BufferedReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/io/CharSource$$ExternalSyntheticLambda0;->f$0:Ljava/io/BufferedReader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/io/CharSource$$ExternalSyntheticLambda0;->f$0:Ljava/io/BufferedReader;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/io/CharSource;->lambda$lines$0(Ljava/io/BufferedReader;)V

    return-void
.end method
