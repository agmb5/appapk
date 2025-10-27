.class public Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;
.super Ljava/lang/Object;
.source "BeiderMorseEncoder.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/StringEncoder;


# instance fields
.field private engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;->GENERIC:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;

    sget-object v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;->APPROX:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;Z)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 85
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/EncoderException;

    const-string p1, "BeiderMorseEncoder encode parameter is not of type String"

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNameType()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;

    move-result-object p0

    return-object p0
.end method

.method public getRuleType()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    move-result-object p0

    return-object p0
.end method

.method public isConcat()Z
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result p0

    return p0
.end method

.method public setConcat(Z)V
    .locals 4

    .line 134
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    return-void
.end method

.method public setMaxPhonemes(I)V
    .locals 4

    .line 175
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    return-void
.end method

.method public setNameType(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;)V
    .locals 4

    .line 148
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getRuleType()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    return-void
.end method

.method public setRuleType(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;)V
    .locals 4

    .line 161
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getNameType()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->isConcat()Z

    move-result v2

    iget-object v3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    invoke-virtual {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;->getMaxPhonemes()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/NameType;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/RuleType;ZI)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/BeiderMorseEncoder;->engine:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/codec/language/bm/PhoneticEngine;

    return-void
.end method
