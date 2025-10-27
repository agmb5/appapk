.class public final Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
.super Ljava/lang/Object;
.source "Option.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private argName:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private longOpt:Ljava/lang/String;

.field private numberOfArgs:I

.field private final opt:Ljava/lang/String;

.field private optionalArg:Z

.field private required:Z

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private valuesep:C


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 829
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 813
    iput v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->numberOfArgs:I

    .line 816
    const-class v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->type:Ljava/lang/Class;

    .line 830
    invoke-static {p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/OptionValidator;->validateOption(Ljava/lang/String;)V

    .line 831
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->opt:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 792
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;)Ljava/lang/String;
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->argName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;)Ljava/lang/String;
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;)Ljava/lang/String;
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->longOpt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;)I
    .locals 0

    .line 792
    iget p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->numberOfArgs:I

    return p0
.end method

.method static synthetic access$400(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;)Ljava/lang/String;
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->opt:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;)Z
    .locals 0

    .line 792
    iget-boolean p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->optionalArg:Z

    return p0
.end method

.method static synthetic access$600(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;)Z
    .locals 0

    .line 792
    iget-boolean p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->required:Z

    return p0
.end method

.method static synthetic access$700(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;)Ljava/lang/Class;
    .locals 0

    .line 792
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->type:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;)C
    .locals 0

    .line 792
    iget-char p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->valuesep:C

    return p0
.end method


# virtual methods
.method public argName(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->argName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option;
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->opt:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->longOpt:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1010
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Either opt or longOpt must be specified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1012
    :cond_1
    :goto_0
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$1;)V

    return-object v0
.end method

.method public desc(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 0

    .line 854
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public hasArg()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 973
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->hasArg(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object p0

    return-object p0
.end method

.method public hasArg(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 985
    :goto_0
    iput p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->numberOfArgs:I

    return-object p0
.end method

.method public hasArgs()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 1

    const/4 v0, -0x2

    .line 996
    iput v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->numberOfArgs:I

    return-object p0
.end method

.method public longOpt(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->longOpt:Ljava/lang/String;

    return-object p0
.end method

.method public numberOfArgs(I)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 0

    .line 878
    iput p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->numberOfArgs:I

    return-object p0
.end method

.method public optionalArg(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 0

    .line 891
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->optionalArg:Z

    return-object p0
.end method

.method public required()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 1

    const/4 v0, 0x1

    .line 902
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->required(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object p0

    return-object p0
.end method

.method public required(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 0

    .line 913
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->required:Z

    return-object p0
.end method

.method public type(Ljava/lang/Class;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;"
        }
    .end annotation

    .line 925
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->type:Ljava/lang/Class;

    return-object p0
.end method

.method public valueSeparator()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 1

    const/16 v0, 0x3d

    .line 936
    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->valueSeparator(C)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;

    move-result-object p0

    return-object p0
.end method

.method public valueSeparator(C)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;
    .locals 0

    .line 962
    iput-char p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/commons/cli/Option$Builder;->valuesep:C

    return-object p0
.end method
