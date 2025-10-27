.class public Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;
.super Ljava/lang/Object;
.source "CommandLineHelper.java"


# static fields
.field private static final VALID_COMMANDS:[Ljava/lang/String;


# instance fields
.field private final cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "help"

    const-string v1, "injectMappingFileIdIntoResource"

    const-string v2, "uploadMappingFile"

    const-string v3, "generateNativeSymbols"

    const-string v4, "uploadNativeSymbols"

    .line 25
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->VALID_COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    return-void
.end method

.method private configureWebApi()V
    .locals 4

    .line 76
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->createWebApi()Lcom/google/firebase/crashlytics/buildtools/api/WebApi;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->setWebApi(Lcom/google/firebase/crashlytics/buildtools/api/WebApi;)V

    .line 79
    const-class v0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationTitle()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v3, "clientName"

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    invoke-virtual {v1, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v3, "clientVersion"

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    invoke-virtual {p0, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getInstance()Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->setBuildtoolsClientInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createSymbolFileService(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;)Lcom/google/firebase/crashlytics/buildtools/api/SymbolFileService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "symbolGenerator"

    const-string v1, "breakpad"

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 223
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadSymbolFileService;

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadSymbolFileService;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "csym"

    .line 225
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/CsymSymbolFileService;

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/CsymSymbolFileService;-><init>()V

    return-object p0

    .line 228
    :cond_1
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->throwInvalidSymbolGeneratorMode(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static createSymbolGenerator(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;)Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "symbolGenerator"

    const-string v1, "breakpad"

    .line 206
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->resolveDumpSymsBinary(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;)Ljava/io/File;

    move-result-object p0

    .line 211
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadSymbolGenerator;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadSymbolGenerator;-><init>(Ljava/io/File;)V

    return-object v0

    :cond_0
    const-string p0, "csym"

    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 213
    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/NdkCSymGenerator;

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/csym/NdkCSymGenerator;-><init>()V

    return-object p0

    .line 215
    :cond_1
    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->throwInvalidSymbolGeneratorMode(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private executeGenerateSymbols()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v1, "unstrippedLibrary"

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v2, "unstrippedLibrariesDir"

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 173
    :goto_1
    invoke-static {v4, v2}, Ljava/lang/Boolean;->logicalXor(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v5, "symbolFileCacheDir"

    invoke-static {v3, v5}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->getOptionValueOrThrow(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-static {v2}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->verifyDirectory(Ljava/io/File;)V

    if-eqz v4, :cond_2

    .line 182
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 183
    :goto_2
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->createSymbolGenerator(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;)Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;

    move-result-object p0

    .line 185
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getInstance()Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    move-result-object v0

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->generateNativeSymbolFiles(Ljava/io/File;Ljava/io/File;Lcom/google/firebase/crashlytics/buildtools/ndk/NativeSymbolGenerator;)V

    return-void

    .line 174
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "generateNativeSymbols requires either 1) unstrippedLibrary or 2) unstrippedLibrariesDir"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private executeInjectMappingFileId()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v1, "injectMappingFileIdIntoResource"

    invoke-static {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->getOptionValueOrThrow(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v2, "mappingFileId"

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    invoke-static {p0, v2}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->getOptionValueOrThrow(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getInstance()Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->injectMappingFileIdIntoResource(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getInstance()Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->injectMappingFileIdIntoResource(Ljava/io/File;)V

    :goto_0
    return-void
.end method

.method private executeUploadMappingFile()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v2, "uploadMappingFile"

    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->getOptionValueOrThrow(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v2, "googleAppId"

    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->getOptionValueOrThrow(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v3, "androidApplicationId"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;

    invoke-direct {v3, v2, v1, v4}, Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 142
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/Obfuscator;

    sget-object v2, Lcom/google/firebase/crashlytics/buildtools/Obfuscator$Vendor;->PROGUARD:Lcom/google/firebase/crashlytics/buildtools/Obfuscator$Vendor;

    const-string v4, "0.0.0"

    invoke-direct {v1, v2, v4}, Lcom/google/firebase/crashlytics/buildtools/Obfuscator;-><init>(Lcom/google/firebase/crashlytics/buildtools/Obfuscator$Vendor;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v4, "mappingFileId"

    invoke-virtual {v2, v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "resourceFile"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    .line 146
    invoke-virtual {v2, v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    invoke-static {p0, v4}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->getOptionValueOrThrow(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getInstance()Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    move-result-object v2

    invoke-virtual {v2, v0, p0, v3, v1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->uploadMappingFile(Ljava/io/File;Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;Lcom/google/firebase/crashlytics/buildtools/Obfuscator;)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    invoke-virtual {v2, v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    .line 152
    invoke-virtual {v2, v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    invoke-static {p0, v5}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->getOptionValueOrThrow(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getInstance()Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->uploadMappingFile(Ljava/io/File;Ljava/io/File;Lcom/google/firebase/crashlytics/buildtools/AppBuildInfo;Lcom/google/firebase/crashlytics/buildtools/Obfuscator;)V

    :goto_0
    return-void

    .line 157
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "When executing uploadMappingFile, use either mappingFileId or resourceFile (but not both)."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private executeUploadSymbols()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v2, "symbolFileCacheDir"

    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->getOptionValueOrThrow(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/utils/FileUtils;->verifyDirectory(Ljava/io/File;)V

    .line 191
    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v2, "googleAppId"

    invoke-static {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->getOptionValueOrThrow(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->createSymbolFileService(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;)Lcom/google/firebase/crashlytics/buildtools/api/SymbolFileService;

    move-result-object p0

    .line 194
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getInstance()Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->uploadNativeSymbolFiles(Ljava/io/File;Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/api/SymbolFileService;)V

    return-void
.end method

.method private static getOptionValueOrThrow(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 200
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required argument missing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getLogger()Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    .line 42
    array-length v1, p0

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    aget-object v5, p0, v2

    const-string v6, "-verbose"

    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    const-string v6, "-quiet"

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 51
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getLogger()Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->VERBOSE:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    invoke-interface {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;->setLevel(Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;)V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 53
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->getLogger()Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;->ERROR:Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;

    invoke-interface {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger;->setLevel(Lcom/google/firebase/crashlytics/buildtools/log/CrashlyticsLogger$Level;)V

    .line 55
    :cond_4
    :goto_2
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/CrashlyticsOptions;->createOptions()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Options;

    move-result-object v1

    .line 56
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/DefaultParser;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/DefaultParser;-><init>()V

    invoke-virtual {v2, v1, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/DefaultParser;->parse(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Options;[Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    move-result-object p0

    const-string v2, "help"

    .line 58
    invoke-virtual {p0, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 59
    new-instance p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/HelpFormatter;

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/HelpFormatter;-><init>()V

    .line 60
    const-class v2, Lcom/google/firebase/crashlytics/buildtools/Buildtools;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/HelpFormatter;->printHelp(Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Options;)V

    return-void

    .line 64
    :cond_5
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;

    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;)V

    .line 65
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->executeCommand()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics execution failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_6

    const-string v0, " Run with -verbose for additional output."

    goto :goto_3

    :cond_6
    const-string v0, ""

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    .line 71
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :goto_4
    return-void
.end method

.method private static resolveDumpSymsBinary(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "dumpSymsBinary"

    .line 239
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 246
    :cond_0
    new-instance p0, Ljava/io/File;

    const-string v0, ".crashlytics"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    .line 249
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create Crashlytics directory, a file already exists at that location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/ndk/internal/breakpad/BreakpadSymbolGenerator;->extractDefaultDumpSymsBinary(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method private static throwInvalidSymbolGeneratorMode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument for symbolGenerator ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "), must be one of ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "breakpad"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "csym"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public executeCommand()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->configureWebApi()V

    .line 103
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->VALID_COMMANDS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 104
    iget-object v5, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    invoke-virtual {v5, v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v3, v0, :cond_6

    .line 113
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v1, "injectMappingFileIdIntoResource"

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->executeInjectMappingFileId()V

    goto :goto_1

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v1, "uploadMappingFile"

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->executeUploadMappingFile()V

    goto :goto_1

    .line 117
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v1, "generateNativeSymbols"

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 118
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->executeGenerateSymbols()V

    goto :goto_1

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->cmd:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;

    const-string v1, "uploadNativeSymbols"

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/buildtools/CommandLineHelper;->executeUploadSymbols()V

    :cond_5
    :goto_1
    return-void

    .line 110
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Exactly ONE valid command required. Use \'-help\' valid arguments."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
