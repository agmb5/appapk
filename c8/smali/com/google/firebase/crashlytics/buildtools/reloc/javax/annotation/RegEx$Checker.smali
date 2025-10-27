.class public Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/RegEx$Checker;
.super Ljava/lang/Object;
.source "RegEx.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/TypeQualifierValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/RegEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Checker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/TypeQualifierValidator<",
        "Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/RegEx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forConstantValue(Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/RegEx;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;
    .locals 0

    .line 28
    instance-of p0, p2, Ljava/lang/String;

    if-nez p0, :cond_0

    .line 29
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;->NEVER:Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;

    return-object p0

    .line 32
    :cond_0
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;->ALWAYS:Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;

    return-object p0

    .line 34
    :catch_0
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;->NEVER:Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;

    return-object p0
.end method

.method public bridge synthetic forConstantValue(Ljava/lang/annotation/Annotation;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;
    .locals 0

    .line 25
    check-cast p1, Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/RegEx;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/RegEx$Checker;->forConstantValue(Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/RegEx;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/javax/annotation/meta/When;

    move-result-object p0

    return-object p0
.end method
