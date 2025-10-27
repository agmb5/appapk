.class public Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;
.super Ljava/lang/Object;
.source "PatternOptionBuilder.java"


# static fields
.field public static final CLASS_VALUE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final DATE_VALUE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXISTING_FILE_VALUE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILES_VALUE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "[",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILE_VALUE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_VALUE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECT_VALUE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final URL_VALUE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Ljava/lang/String;

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->STRING_VALUE:Ljava/lang/Class;

    .line 63
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->OBJECT_VALUE:Ljava/lang/Class;

    .line 66
    const-class v0, Ljava/lang/Number;

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->NUMBER_VALUE:Ljava/lang/Class;

    .line 69
    const-class v0, Ljava/util/Date;

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->DATE_VALUE:Ljava/lang/Class;

    .line 72
    const-class v0, Ljava/lang/Class;

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->CLASS_VALUE:Ljava/lang/Class;

    .line 79
    const-class v0, Ljava/io/FileInputStream;

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->EXISTING_FILE_VALUE:Ljava/lang/Class;

    .line 82
    const-class v0, Ljava/io/File;

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->FILE_VALUE:Ljava/lang/Class;

    .line 85
    const-class v0, [Ljava/io/File;

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->FILES_VALUE:Ljava/lang/Class;

    .line 88
    const-class v0, Ljava/net/URL;

    sput-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->URL_VALUE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValueClass(C)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_8

    const/16 v0, 0x25

    if-eq p0, v0, :cond_7

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_6

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_5

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->CLASS_VALUE:Ljava/lang/Class;

    return-object p0

    .line 115
    :cond_1
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->FILES_VALUE:Ljava/lang/Class;

    return-object p0

    .line 101
    :cond_2
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->OBJECT_VALUE:Ljava/lang/Class;

    return-object p0

    .line 113
    :cond_3
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->FILE_VALUE:Ljava/lang/Class;

    return-object p0

    .line 111
    :cond_4
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->EXISTING_FILE_VALUE:Ljava/lang/Class;

    return-object p0

    .line 103
    :cond_5
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->STRING_VALUE:Ljava/lang/Class;

    return-object p0

    .line 117
    :cond_6
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->URL_VALUE:Ljava/lang/Class;

    return-object p0

    .line 105
    :cond_7
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->NUMBER_VALUE:Ljava/lang/Class;

    return-object p0

    .line 109
    :cond_8
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->DATE_VALUE:Ljava/lang/Class;

    return-object p0
.end method

.method public static isValueCode(C)Z
    .locals 1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x21

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parsePattern(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Options;
    .locals 11

    .line 156
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Options;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Options;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    move-object v6, v1

    move v5, v2

    move v4, v3

    move v7, v4

    .line 158
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ge v4, v8, :cond_4

    .line 160
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 164
    invoke-static {v8}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->isValueCode(C)Z

    move-result v10

    if-nez v10, :cond_2

    if-eq v5, v2, :cond_1

    .line 168
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option;->builder(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object v5

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v9, v3

    .line 169
    :goto_1
    invoke-virtual {v5, v9}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->hasArg(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object v5

    .line 170
    invoke-virtual {v5, v7}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->required(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object v5

    .line 171
    invoke-virtual {v5, v6}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->type(Ljava/lang/Class;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object v5

    .line 172
    invoke-virtual {v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option;

    move-result-object v5

    .line 175
    invoke-virtual {v0, v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Options;->addOption(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Options;

    move-object v6, v1

    move v7, v3

    :cond_1
    move v5, v8

    goto :goto_2

    :cond_2
    const/16 v10, 0x21

    if-ne v8, v10, :cond_3

    move v7, v9

    goto :goto_2

    .line 189
    :cond_3
    invoke-static {v8}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/PatternOptionBuilder;->getValueClass(C)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eq v5, v2, :cond_6

    .line 195
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option;->builder(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object p0

    if-eqz v6, :cond_5

    move v3, v9

    .line 196
    :cond_5
    invoke-virtual {p0, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->hasArg(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object p0

    .line 197
    invoke-virtual {p0, v7}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->required(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object p0

    .line 198
    invoke-virtual {p0, v6}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->type(Ljava/lang/Class;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option;

    move-result-object p0

    .line 202
    invoke-virtual {v0, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Options;->addOption(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Options;

    :cond_6
    return-object v0
.end method
