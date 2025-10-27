.class public final Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfFileHeader;
.super Ljava/lang/Object;
.source "ElfFileHeader.java"


# instance fields
.field private _ident:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfFileIdent;

.field public eEhsize:I

.field public eEntry:J

.field public eFlags:J

.field public eMachine:I

.field public ePhentsize:I

.field public ePhnum:I

.field public ePhoff:J

.field public eShentsize:I

.field public eShnum:I

.field public eShoff:J

.field public eShstrndx:I

.field public eType:I

.field public eVersion:J


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfFileIdent;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfFileHeader;->_ident:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfFileIdent;

    return-void
.end method


# virtual methods
.method public getElfFileIdent()Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfFileIdent;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfFileHeader;->_ident:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/elf/ElfFileIdent;

    return-object p0
.end method
