.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;
.super Ljava/lang/Object;
.source "DebugLineFileInfo.java"


# instance fields
.field public final directory:Ljava/lang/String;

.field public final length:I

.field public final modificationTime:I

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;->name:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;->directory:Ljava/lang/String;

    .line 31
    iput p3, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;->modificationTime:I

    .line 32
    iput p4, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;->length:I

    return-void
.end method
