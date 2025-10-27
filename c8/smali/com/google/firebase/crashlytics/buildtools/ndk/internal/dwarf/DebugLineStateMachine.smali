.class public Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;
.super Ljava/lang/Object;
.source "DebugLineStateMachine.java"


# static fields
.field private static final EXTENDED_OPCODE:I

.field private static final EXTENDED_OPCODES:[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;

.field private static final STANDARD_OPCODES:[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;


# instance fields
.field private _dwarf64:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0xd

    new-array v0, v0, [Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 18
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeCopy;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeCopy;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v0, v4

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeAdvancePC;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeAdvancePC;-><init>()V

    const/4 v5, 0x2

    aput-object v3, v0, v5

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeAdvanceLine;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeAdvanceLine;-><init>()V

    const/4 v6, 0x3

    aput-object v3, v0, v6

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetFile;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetFile;-><init>()V

    const/4 v7, 0x4

    aput-object v3, v0, v7

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetColumn;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetColumn;-><init>()V

    const/4 v8, 0x5

    aput-object v3, v0, v8

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeNegateStatement;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeNegateStatement;-><init>()V

    const/4 v9, 0x6

    aput-object v3, v0, v9

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetBasicBlock;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetBasicBlock;-><init>()V

    const/4 v9, 0x7

    aput-object v3, v0, v9

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeConstAddPC;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeConstAddPC;-><init>()V

    const/16 v9, 0x8

    aput-object v3, v0, v9

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeFixedAdvancePC;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeFixedAdvancePC;-><init>()V

    const/16 v9, 0x9

    aput-object v3, v0, v9

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetPrologueEnd;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetPrologueEnd;-><init>()V

    const/16 v9, 0xa

    aput-object v3, v0, v9

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetEpilogueBegin;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetEpilogueBegin;-><init>()V

    const/16 v9, 0xb

    aput-object v3, v0, v9

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetIsa;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/StandardOpcodeSetIsa;-><init>()V

    const/16 v9, 0xc

    aput-object v3, v0, v9

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->STANDARD_OPCODES:[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;

    new-array v0, v8, [Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;

    aput-object v2, v0, v1

    .line 25
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/ExtendedOpcodeEndSequence;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/ExtendedOpcodeEndSequence;-><init>()V

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/ExtendedOpcodeSetAddress;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/ExtendedOpcodeSetAddress;-><init>()V

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/ExtendedOpcodeDefineFile;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/ExtendedOpcodeDefineFile;-><init>()V

    aput-object v1, v0, v6

    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/ExtendedOpcodeSetDiscriminator;

    invoke-direct {v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/ExtendedOpcodeSetDiscriminator;-><init>()V

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->EXTENDED_OPCODES:[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->_dwarf64:Z

    return-void
.end method

.method private configureContext(Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;JI)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x2

    .line 72
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readInt(I)I

    move-result v5

    move-object/from16 v1, p0

    .line 73
    iget-boolean v1, v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->_dwarf64:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readLong(I)J

    move-result-wide v6

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readByte()B

    move-result v8

    const/4 v1, 0x1

    if-lt v5, v2, :cond_1

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readByte()B

    move-result v2

    move v9, v2

    goto :goto_1

    :cond_1
    move v9, v1

    .line 76
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readByte()B

    move-result v2

    if-eqz v2, :cond_2

    move v15, v1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move v15, v2

    .line 77
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readByte()B

    move-result v11

    .line 78
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readByte()B

    move-result v12

    .line 79
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readByte()B

    move-result v13

    .line 81
    new-array v14, v13, [B

    :goto_3
    if-ge v1, v13, :cond_3

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readByte()B

    move-result v2

    aput-byte v2, v14, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 86
    :cond_3
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineHeader;

    move-object v2, v1

    move-wide/from16 v3, p2

    move v10, v15

    invoke-direct/range {v2 .. v14}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineHeader;-><init>(JIJBBZBBB[B)V

    .line 90
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;

    invoke-direct {v2, v15}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;-><init>(Z)V

    .line 92
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;

    move/from16 v4, p4

    invoke-direct {v3, v1, v2, v4}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;-><init>(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineHeader;Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;I)V

    .line 97
    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readNullTerminatedString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 99
    invoke-virtual {v3, v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->defineDirectory(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readNullTerminatedString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 103
    :cond_4
    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readNullTerminatedString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 104
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readULEB128()I

    move-result v2

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readULEB128()I

    move-result v4

    .line 107
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readULEB128()I

    move-result v5

    .line 108
    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->defineFile(Ljava/lang/String;III)V

    .line 110
    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/com/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readNullTerminatedString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    return-object v3
.end method

.method private static getOpcode(I[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;
        }
    .end annotation

    if-ltz p0, :cond_0

    .line 185
    array-length v0, p1

    if-ge p0, v0, :cond_0

    .line 188
    aget-object p0, p1, p0

    return-object p0

    .line 186
    :cond_0
    new-instance p1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown opcode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static processOpcode(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readInt(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 152
    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->header:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineHeader;

    iget-byte v2, v2, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineHeader;->opcodeBase:B

    if-lt v1, v2, :cond_0

    .line 154
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/SpecialOpcode;

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/SpecialOpcode;-><init>(I)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readULEB128()I

    .line 157
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readInt(I)I

    move-result v0

    .line 158
    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->EXTENDED_OPCODES:[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->getOpcode(I[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_1
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->STANDARD_OPCODES:[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;

    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->getOpcode(I[Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;

    move-result-object v0

    .line 162
    :goto_0
    invoke-interface {v0, p0, p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineOpcode;->process(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;)Z

    move-result p0

    return p0

    .line 151
    :cond_2
    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not process opcode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readCompilationUnit(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;J)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;",
            "Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;",
            "J)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->getCurrentOffset()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-gez v1, :cond_2

    .line 120
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->processOpcode(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->reg:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;

    iget-wide v3, v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;->address:J

    .line 123
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->reg:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;

    iget v1, v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;->file:I

    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->getFileInfo(I)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;

    move-result-object v1

    iget-object v5, v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineFileInfo;->name:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->reg:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;

    iget-wide v6, v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;->line:J

    .line 125
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;-><init>(JLjava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->reg:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;

    iget-boolean v1, v1, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;->isEndSequence:Z

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;->reg:Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineRegisters;->reset()V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private readInitialLength(Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 175
    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readLong(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->_dwarf64:Z

    const/16 p0, 0x8

    .line 179
    invoke-virtual {p1, p0}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->readLong(I)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public runForIndex(Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;IJI)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;",
            "IJI)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 63
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->getCurrentOffset()J

    move-result-wide v1

    cmp-long v1, v1, p3

    if-gez v1, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->readInitialLength(Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->getCurrentOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->seek(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;

    const-string p1, "Unable to set appropriate line number section offset"

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_1
    invoke-virtual {p0, p1, p5}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->runFromCurrentOffset(Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public runFromCurrentOffset(Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;",
            "I)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DwarfException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->readInitialLength(Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;)J

    move-result-wide v0

    .line 42
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;->getCurrentOffset()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 43
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->configureContext(Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;JI)Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;

    move-result-object p0

    .line 44
    invoke-static {p0, p1, v2, v3}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineStateMachine;->readCompilationUnit(Lcom/google/firebase/crashlytics/buildtools/ndk/internal/dwarf/DebugLineContext;Lcom/google/firebase/crashlytics/buildtools/utils/io/ByteReader;J)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
