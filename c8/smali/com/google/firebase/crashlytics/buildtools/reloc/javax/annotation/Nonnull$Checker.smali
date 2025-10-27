.class public Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/Nonnull$Checker;
.super Ljava/lang/Object;
.source "Nonnull.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/Nonnull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/TypeQualifierValidator<",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/Nonnull;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forConstantValue(Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/Nonnull;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;
    .locals 0

    if-nez p2, :cond_0

    .line 22
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;->NEVER:Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;

    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;->ALWAYS:Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;

    return-object p0
.end method

.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;
    .locals 0

    .line 17
    check-cast p1, Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/Nonnull;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/Nonnull$Checker;->forConstantValue(Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/Nonnull;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;

    move-result-object p0

    return-object p0
.end method
