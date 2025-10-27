.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;
.super Ljava/lang/Object;
.source "DebugLineContext.java"


# instance fields
.field private final _directories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final header:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineHeader;

.field public final offsetSize:I

.field public final reg:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;I)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext$1;-><init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->_directories:Ljava/util/List;

    .line 22
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext$2;-><init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->_files:Ljava/util/List;

    .line 26
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->header:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineHeader;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->reg:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;

    .line 28
    iput p3, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->offsetSize:I

    return-void
.end method


# virtual methods
.method public defineDirectory(Ljava/lang/String;)V
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->_directories:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public defineFile(Ljava/lang/String;III)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->_directories:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 37
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 38
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->_files:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFileInfo(I)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->_files:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;

    return-object p0
.end method
