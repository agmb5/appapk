.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor;
.super Ljava/lang/Object;
.source "CompileUnitAttributeProcessor.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/AttributeProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/AttributeProcessor<",
        "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompilationUnitContext$EntryData;",
        ">;"
    }
.end annotation


# instance fields
.field private lowPc:J

.field private final referenceBytesConverter:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/ReferenceBytesConverter;

.field private stmtList:J


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/ReferenceBytesConverter;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor;->referenceBytesConverter:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/ReferenceBytesConverter;

    return-void
.end method


# virtual methods
.method public finishProcessingAttributes()Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompilationUnitContext$EntryData;
    .locals 4

    .line 59
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompilationUnitContext$EntryData;

    iget-wide v1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor;->lowPc:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor;->stmtList:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompilationUnitContext$EntryData;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v0
.end method

.method public bridge synthetic finishProcessingAttributes()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor;->finishProcessingAttributes()Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompilationUnitContext$EntryData;

    move-result-object p0

    return-object p0
.end method

.method public processAttribute(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWAttribute;J)V
    .locals 1

    .line 40
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor$1;->$SwitchMap$com$google$firebase$crashlytics$buildtools$ndk$internal$dwarf$DWAttribute:[I

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWAttribute;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    iput-wide p2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor;->lowPc:J

    goto :goto_0

    .line 45
    :cond_1
    iput-wide p2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor;->stmtList:J

    :goto_0
    return-void
.end method

.method public processAttribute(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWAttribute;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWForm;[B)V
    .locals 0

    .line 29
    sget-object p2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor$1;->$SwitchMap$com$google$firebase$crashlytics$buildtools$ndk$internal$dwarf$DWAttribute:[I

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWAttribute;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor;->referenceBytesConverter:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/ReferenceBytesConverter;

    invoke-virtual {p1, p3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/ReferenceBytesConverter;->asLongValue([B)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/processor/CompileUnitAttributeProcessor;->stmtList:J

    :goto_0
    return-void
.end method

.method public processAttribute(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DWAttribute;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
