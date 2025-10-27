.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/ElfCSymFactory;
.super Ljava/lang/Object;
.source "ElfCSymFactory.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/CSymFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/ElfCSymFactory$CSymFactoryHandler;,
        Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/ElfCSymFactory$DebugLineGroup;
    }
.end annotation


# static fields
.field private static final DWARF_CSYM_TYPE:Ljava/lang/String; = "dwarf_debug"

.field private static final ELF_CSYM_TYPE:Ljava/lang/String; = "elf_symtab"


# instance fields
.field private final _featureUseDebugInfo:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/ElfCSymFactory;->_featureUseDebugInfo:Z

    return-void
.end method


# virtual methods
.method public createCSymFromFile(Ljava/io/File;)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/CSym;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/CSymException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/ElfCSymFactory$CSymFactoryHandler;

    iget-boolean v1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/ElfCSymFactory;->_featureUseDebugInfo:Z

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/ElfCSymFactory$CSymFactoryHandler;-><init>(Z)V

    .line 90
    iget-boolean p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/ElfCSymFactory;->_featureUseDebugInfo:Z

    invoke-static {p1, v0, p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser;->parse(Ljava/io/File;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfDataParser$ContentHandler;Z)V

    .line 92
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/ElfCSymFactory$CSymFactoryHandler;->getBuilder()Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/CSym$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/CSym$Builder;->build()Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/CSym;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid object file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
