.class Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext$1;
.super Ljava/util/ArrayList;
.source "DebugLineContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;-><init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext$1;->this$0:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, ""

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
