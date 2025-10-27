.class Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder$1;
.super Ljava/lang/Object;
.source "HttpClientBuilder.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/CloseableHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;

.field final synthetic val$connectionEvictor:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder$1;->this$0:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder$1;->val$connectionEvictor:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1218
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder$1;->val$connectionEvictor:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;->shutdown()V

    .line 1220
    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder$1;->val$connectionEvictor:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1222
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_0
    return-void
.end method
