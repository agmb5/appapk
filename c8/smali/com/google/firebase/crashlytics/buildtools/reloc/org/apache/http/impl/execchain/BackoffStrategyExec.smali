.class public Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;
.super Ljava/lang/Object;
.source "BackoffStrategyExec.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;


# instance fields
.field private final backoffManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;

.field private final connectionBackoffStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;

.field private final requestExecutor:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;


# direct methods
.method public constructor <init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HTTP client request executor"

    .line 60
    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection backoff strategy"

    .line 61
    invoke-static {p2, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Backoff manager"

    .line 62
    invoke-static {p3, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;->requestExecutor:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;

    .line 64
    iput-object p2, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;

    .line 65
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;

    return-void
.end method


# virtual methods
.method public execute(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoute;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/methods/HttpRequestWrapper;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/HttpClientContext;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/methods/HttpExecutionAware;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/methods/CloseableHttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpException;
        }
    .end annotation

    const-string v0, "HTTP route"

    .line 74
    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    .line 75
    invoke-static {p2, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    .line 76
    invoke-static {p3, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;->requestExecutor:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;->execute(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoute;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/methods/HttpRequestWrapper;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/HttpClientContext;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/methods/HttpExecutionAware;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/methods/CloseableHttpResponse;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    iget-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;

    invoke-interface {p3, p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;->shouldBackoff(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponse;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 99
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;

    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;->backOff(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoute;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;

    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;->probe(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoute;)V

    :goto_0
    return-object p2

    :catch_0
    move-exception p2

    .line 84
    iget-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;->connectionBackoffStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;

    invoke-interface {p3, p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;->shouldBackoff(Ljava/lang/Throwable;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 85
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;->backoffManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;

    invoke-interface {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;->backOff(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoute;)V

    .line 87
    :cond_1
    instance-of p0, p2, Ljava/lang/RuntimeException;

    if-nez p0, :cond_4

    .line 90
    instance-of p0, p2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpException;

    if-nez p0, :cond_3

    .line 93
    instance-of p0, p2, Ljava/io/IOException;

    if-eqz p0, :cond_2

    .line 94
    check-cast p2, Ljava/io/IOException;

    throw p2

    .line 96
    :cond_2
    new-instance p0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {p0, p2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 91
    :cond_3
    check-cast p2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpException;

    throw p2

    .line 88
    :cond_4
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2
.end method
