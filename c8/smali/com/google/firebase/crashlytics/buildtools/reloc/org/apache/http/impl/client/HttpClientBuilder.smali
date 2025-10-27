.class public Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
.super Ljava/lang/Object;
.source "HttpClientBuilder.java"


# instance fields
.field private authCachingDisabled:Z

.field private authSchemeRegistry:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation
.end field

.field private automaticRetriesDisabled:Z

.field private backoffManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;

.field private closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private connManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpClientConnectionManager;

.field private connManagerShared:Z

.field private connTimeToLive:J

.field private connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private connectionBackoffStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;

.field private connectionStateDisabled:Z

.field private contentCompressionDisabled:Z

.field private contentDecoderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field

.field private cookieManagementDisabled:Z

.field private cookieSpecRegistry:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation
.end field

.field private cookieStore:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CookieStore;

.field private credentialsProvider:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CredentialsProvider;

.field private defaultConnectionConfig:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/ConnectionConfig;

.field private defaultHeaders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field private defaultRequestConfig:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;

.field private defaultSocketConfig:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/SocketConfig;

.field private dnsResolver:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/DnsResolver;

.field private evictExpiredConnections:Z

.field private evictIdleConnections:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private httpprocessor:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessor;

.field private keepAliveStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ConnectionKeepAliveStrategy;

.field private maxConnPerRoute:I

.field private maxConnTotal:I

.field private maxIdleTime:J

.field private maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

.field private proxy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpHost;

.field private proxyAuthStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;

.field private publicSuffixMatcher:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/util/PublicSuffixMatcher;

.field private redirectHandlingDisabled:Z

.field private redirectStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/RedirectStrategy;

.field private requestExec:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpRequestExecutor;

.field private requestFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private requestLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseFirst:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private responseLast:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private retryHandler:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/HttpRequestRetryHandler;

.field private reuseStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/ConnectionReuseStrategy;

.field private routePlanner:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoutePlanner;

.field private schemePortResolver:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/SchemePortResolver;

.field private serviceUnavailStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ServiceUnavailableRetryStrategy;

.field private sslContext:Ljavax/net/ssl/SSLContext;

.field private sslSocketFactory:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/socket/LayeredConnectionSocketFactory;

.field private systemProperties:Z

.field private targetAuthStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;

.field private userAgent:Ljava/lang/String;

.field private userTokenHandler:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/UserTokenHandler;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 209
    iput v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxConnTotal:I

    .line 210
    iput v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    const-wide/16 v0, -0x1

    .line 212
    iput-wide v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connTimeToLive:J

    .line 213
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static create()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    .line 220
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;-><init>()V

    return-object v0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 927
    invoke-static {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " *, *"

    .line 930
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected addCloseable(Ljava/io/Closeable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-nez v0, :cond_1

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    .line 923
    :cond_1
    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addInterceptorFirst(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 551
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorFirst(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 516
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorLast(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 568
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorLast(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 534
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/CloseableHttpClient;
    .locals 23

    move-object/from16 v9, p0

    .line 936
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->publicSuffixMatcher:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/util/PublicSuffixMatcher;

    if-nez v0, :cond_0

    .line 938
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/util/PublicSuffixMatcherLoader;->getDefault()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/util/PublicSuffixMatcher;

    move-result-object v0

    :cond_0
    move-object v10, v0

    .line 941
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->requestExec:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpRequestExecutor;

    if-nez v0, :cond_1

    .line 943
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpRequestExecutor;-><init>()V

    :cond_1
    move-object v1, v0

    .line 945
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpClientConnectionManager;

    const-string v2, "http.keepAlive"

    const/4 v11, 0x2

    const-string v3, "true"

    if-nez v0, :cond_e

    .line 947
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->sslSocketFactory:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/socket/LayeredConnectionSocketFactory;

    if-nez v0, :cond_7

    .line 949
    iget-boolean v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v0, :cond_2

    const-string v0, "https.protocols"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 951
    :goto_0
    iget-boolean v4, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v4, :cond_3

    const-string v4, "https.cipherSuites"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 953
    :goto_1
    iget-object v5, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v5, :cond_4

    .line 955
    new-instance v5, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ssl/DefaultHostnameVerifier;

    invoke-direct {v5, v10}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ssl/DefaultHostnameVerifier;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/util/PublicSuffixMatcher;)V

    .line 957
    :cond_4
    iget-object v6, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v6, :cond_5

    .line 958
    new-instance v6, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ssl/SSLConnectionSocketFactory;

    iget-object v7, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-direct {v6, v7, v0, v4, v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    :goto_2
    move-object v0, v6

    goto :goto_3

    .line 961
    :cond_5
    iget-boolean v6, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v6, :cond_6

    .line 962
    new-instance v6, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ssl/SSLConnectionSocketFactory;

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v6, v7, v0, v4, v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_2

    .line 966
    :cond_6
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ssl/SSLConnectionSocketFactory;

    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    invoke-direct {v0, v4, v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    .line 973
    :cond_7
    :goto_3
    new-instance v4, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->create()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    move-result-object v5

    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/socket/PlainConnectionSocketFactory;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v5, v7, v6}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Registry;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->dnsResolver:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/DnsResolver;

    iget-wide v5, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connTimeToLive:J

    iget-object v7, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_4
    move-object/from16 v20, v7

    move-object v13, v4

    move-object/from16 v17, v0

    move-wide/from16 v18, v5

    invoke-direct/range {v13 .. v20}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Registry;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpConnectionFactory;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/SchemePortResolver;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    .line 983
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/SocketConfig;

    if-eqz v0, :cond_9

    .line 984
    invoke-virtual {v4, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultSocketConfig(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/SocketConfig;)V

    .line 986
    :cond_9
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/ConnectionConfig;

    if-eqz v0, :cond_a

    .line 987
    invoke-virtual {v4, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultConnectionConfig(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/ConnectionConfig;)V

    .line 989
    :cond_a
    iget-boolean v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v0, :cond_b

    .line 990
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 991
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "http.maxConnections"

    const-string v5, "5"

    .line 992
    invoke-static {v0, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 993
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 994
    invoke-virtual {v4, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    mul-int/2addr v0, v11

    .line 995
    invoke-virtual {v4, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 998
    :cond_b
    iget v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxConnTotal:I

    if-lez v0, :cond_c

    .line 999
    invoke-virtual {v4, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    .line 1001
    :cond_c
    iget v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    if-lez v0, :cond_d

    .line 1002
    invoke-virtual {v4, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    :cond_d
    move-object v15, v4

    goto :goto_5

    :cond_e
    move-object v15, v0

    .line 1006
    :goto_5
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->reuseStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/ConnectionReuseStrategy;

    if-nez v0, :cond_11

    .line 1008
    iget-boolean v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v0, :cond_10

    .line 1009
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1011
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultClientConnectionReuseStrategy;

    goto :goto_6

    .line 1013
    :cond_f
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/NoConnectionReuseStrategy;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/NoConnectionReuseStrategy;

    goto :goto_6

    .line 1016
    :cond_10
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultClientConnectionReuseStrategy;

    :cond_11
    :goto_6
    move-object v3, v0

    .line 1019
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_12

    .line 1021
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;

    :cond_12
    move-object v4, v0

    .line 1023
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;

    if-nez v0, :cond_13

    .line 1025
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/TargetAuthenticationStrategy;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/TargetAuthenticationStrategy;

    :cond_13
    move-object v6, v0

    .line 1027
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;

    if-nez v0, :cond_14

    .line 1029
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/ProxyAuthenticationStrategy;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/ProxyAuthenticationStrategy;

    :cond_14
    move-object v7, v0

    .line 1031
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->userTokenHandler:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/UserTokenHandler;

    if-nez v0, :cond_16

    .line 1033
    iget-boolean v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    if-nez v0, :cond_15

    .line 1034
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultUserTokenHandler;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultUserTokenHandler;

    goto :goto_7

    .line 1036
    :cond_15
    sget-object v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/NoopUserTokenHandler;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/NoopUserTokenHandler;

    :cond_16
    :goto_7
    move-object v8, v0

    .line 1040
    iget-object v0, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_18

    .line 1042
    iget-boolean v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v2, :cond_17

    const-string v0, "http.agent"

    .line 1043
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_17
    if-nez v0, :cond_18

    .line 1046
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Apache-HttpClient"

    const-string v5, "com.google.firebase.crashlytics.buildtools.reloc.org.apache.http.client"

    invoke-static {v2, v5, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    move-object v13, v0

    .line 1051
    new-instance v5, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/ImmutableHttpProcessor;

    new-array v0, v11, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;

    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/RequestTargetHost;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/RequestTargetHost;-><init>()V

    const/4 v14, 0x0

    aput-object v2, v0, v14

    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/RequestUserAgent;

    invoke-direct {v2, v13}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v2, v0, v12

    invoke-direct {v5, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;)V

    move-object/from16 v0, p0

    move-object v2, v15

    invoke-virtual/range {v0 .. v8}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->createMainExec(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpRequestExecutor;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpClientConnectionManager;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/ConnectionReuseStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ConnectionKeepAliveStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessor;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/UserTokenHandler;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;

    move-result-object v0

    .line 1061
    invoke-virtual {v9, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->decorateMainExec(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;

    move-result-object v0

    .line 1063
    iget-object v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->httpprocessor:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessor;

    if-nez v1, :cond_25

    .line 1066
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->create()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    move-result-object v1

    .line 1067
    iget-object v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->requestFirst:Ljava/util/LinkedList;

    if-eqz v2, :cond_19

    .line 1068
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;

    .line 1069
    invoke-virtual {v1, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->addFirst(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_8

    .line 1072
    :cond_19
    iget-object v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->responseFirst:Ljava/util/LinkedList;

    if-eqz v2, :cond_1a

    .line 1073
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;

    .line 1074
    invoke-virtual {v1, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->addFirst(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_9

    :cond_1a
    const/4 v2, 0x6

    new-array v2, v2, [Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;

    .line 1077
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestDefaultHeaders;

    iget-object v4, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    invoke-direct {v3, v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestDefaultHeaders;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v14

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/RequestContent;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/RequestContent;-><init>()V

    aput-object v3, v2, v12

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/RequestTargetHost;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/RequestTargetHost;-><init>()V

    aput-object v3, v2, v11

    const/4 v3, 0x3

    new-instance v4, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/RequestUserAgent;

    invoke-direct {v4, v13}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-instance v4, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestExpectContinue;

    invoke-direct {v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestExpectContinue;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->addAll([Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    .line 1084
    iget-boolean v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v2, :cond_1b

    .line 1085
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestAddCookies;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->add(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    .line 1087
    :cond_1b
    iget-boolean v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v2, :cond_1d

    .line 1088
    iget-object v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    if-eqz v2, :cond_1c

    .line 1089
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1090
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1091
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestAcceptEncoding;

    invoke-direct {v3, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestAcceptEncoding;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->add(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_a

    .line 1093
    :cond_1c
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestAcceptEncoding;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->add(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    .line 1096
    :cond_1d
    :goto_a
    iget-boolean v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    if-nez v2, :cond_1e

    .line 1097
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestAuthCache;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->add(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    .line 1099
    :cond_1e
    iget-boolean v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    if-nez v2, :cond_1f

    .line 1100
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/ResponseProcessCookies;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->add(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    .line 1102
    :cond_1f
    iget-boolean v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    if-nez v2, :cond_22

    .line 1103
    iget-object v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    if-eqz v2, :cond_21

    .line 1104
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->create()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    move-result-object v2

    .line 1105
    iget-object v3, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1106
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    goto :goto_b

    .line 1108
    :cond_20
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/ResponseContentEncoding;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Registry;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/ResponseContentEncoding;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;)V

    invoke-virtual {v1, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->add(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_c

    .line 1110
    :cond_21
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/ResponseContentEncoding;

    invoke-direct {v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->add(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    .line 1113
    :cond_22
    :goto_c
    iget-object v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->requestLast:Ljava/util/LinkedList;

    if-eqz v2, :cond_23

    .line 1114
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;

    .line 1115
    invoke-virtual {v1, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->addLast(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpRequestInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_d

    .line 1118
    :cond_23
    iget-object v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->responseLast:Ljava/util/LinkedList;

    if-eqz v2, :cond_24

    .line 1119
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;

    .line 1120
    invoke-virtual {v1, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->addLast(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpResponseInterceptor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_e

    .line 1123
    :cond_24
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessorBuilder;->build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessor;

    move-result-object v1

    .line 1125
    :cond_25
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ProtocolExec;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ProtocolExec;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessor;)V

    .line 1127
    invoke-virtual {v9, v2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->decorateProtocolExec(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;

    move-result-object v0

    .line 1130
    iget-boolean v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    if-nez v1, :cond_27

    .line 1131
    iget-object v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->retryHandler:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/HttpRequestRetryHandler;

    if-nez v1, :cond_26

    .line 1133
    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultHttpRequestRetryHandler;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 1135
    :cond_26
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/RetryExec;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/RetryExec;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/HttpRequestRetryHandler;)V

    move-object v0, v2

    .line 1138
    :cond_27
    iget-object v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->routePlanner:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoutePlanner;

    if-nez v1, :cond_2b

    .line 1140
    iget-object v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->schemePortResolver:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/SchemePortResolver;

    if-nez v1, :cond_28

    .line 1142
    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/DefaultSchemePortResolver;

    .line 1144
    :cond_28
    iget-object v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->proxy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpHost;

    if-eqz v2, :cond_29

    .line 1145
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/DefaultProxyRoutePlanner;

    iget-object v3, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->proxy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpHost;

    invoke-direct {v2, v3, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/DefaultProxyRoutePlanner;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpHost;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/SchemePortResolver;)V

    goto :goto_f

    .line 1146
    :cond_29
    iget-boolean v2, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v2, :cond_2a

    .line 1147
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/SystemDefaultRoutePlanner;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/SystemDefaultRoutePlanner;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/SchemePortResolver;Ljava/net/ProxySelector;)V

    goto :goto_f

    .line 1150
    :cond_2a
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/DefaultRoutePlanner;

    invoke-direct {v2, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/conn/DefaultRoutePlanner;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/SchemePortResolver;)V

    goto :goto_f

    :cond_2b
    move-object v2, v1

    .line 1155
    :goto_f
    iget-object v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ServiceUnavailableRetryStrategy;

    if-eqz v1, :cond_2c

    .line 1157
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ServiceUnavailableRetryExec;

    invoke-direct {v3, v0, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ServiceUnavailableRetryExec;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ServiceUnavailableRetryStrategy;)V

    move-object v0, v3

    .line 1161
    :cond_2c
    iget-boolean v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    if-nez v1, :cond_2e

    .line 1162
    iget-object v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->redirectStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/RedirectStrategy;

    if-nez v1, :cond_2d

    .line 1164
    sget-object v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultRedirectStrategy;->INSTANCE:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/DefaultRedirectStrategy;

    .line 1166
    :cond_2d
    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/RedirectExec;

    invoke-direct {v3, v0, v2, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/RedirectExec;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoutePlanner;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/RedirectStrategy;)V

    move-object v0, v3

    .line 1170
    :cond_2e
    iget-object v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->backoffManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;

    if-eqz v1, :cond_2f

    iget-object v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;

    if-eqz v1, :cond_2f

    .line 1171
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;

    iget-object v3, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;

    iget-object v4, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->backoffManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;

    invoke-direct {v1, v0, v3, v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/BackoffStrategyExec;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;)V

    move-object v0, v1

    .line 1174
    :cond_2f
    iget-object v1, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;

    if-nez v1, :cond_30

    .line 1176
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->create()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    move-result-object v1

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/BasicSchemeFactory;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/BasicSchemeFactory;-><init>()V

    const-string v4, "Basic"

    invoke-virtual {v1, v4, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    move-result-object v1

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/DigestSchemeFactory;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/DigestSchemeFactory;-><init>()V

    const-string v4, "Digest"

    invoke-virtual {v1, v4, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    move-result-object v1

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NTLMSchemeFactory;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/NTLMSchemeFactory;-><init>()V

    const-string v4, "NTLM"

    invoke-virtual {v1, v4, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    move-result-object v1

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/SPNegoSchemeFactory;-><init>()V

    const-string v4, "Negotiate"

    invoke-virtual {v1, v4, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    move-result-object v1

    new-instance v3, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/KerberosSchemeFactory;

    invoke-direct {v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/auth/KerberosSchemeFactory;-><init>()V

    const-string v4, "Kerberos"

    invoke-virtual {v1, v4, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/RegistryBuilder;->build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Registry;

    move-result-object v1

    .line 1184
    :cond_30
    iget-object v3, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;

    if-nez v3, :cond_31

    .line 1186
    invoke-static {v10}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/CookieSpecRegistries;->createDefault(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/util/PublicSuffixMatcher;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;

    move-result-object v3

    .line 1189
    :cond_31
    iget-object v4, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->cookieStore:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CookieStore;

    if-nez v4, :cond_32

    .line 1191
    new-instance v4, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v4}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 1194
    :cond_32
    iget-object v5, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->credentialsProvider:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CredentialsProvider;

    if-nez v5, :cond_34

    .line 1196
    iget-boolean v5, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    if-eqz v5, :cond_33

    .line 1197
    new-instance v5, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/SystemDefaultCredentialsProvider;

    invoke-direct {v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/SystemDefaultCredentialsProvider;-><init>()V

    goto :goto_10

    .line 1199
    :cond_33
    new-instance v5, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v5}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    .line 1203
    :cond_34
    :goto_10
    iget-object v6, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    if-eqz v6, :cond_35

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->closeables:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v6

    goto :goto_11

    :cond_35
    const/16 v16, 0x0

    .line 1204
    :goto_11
    iget-boolean v6, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connManagerShared:Z

    if-nez v6, :cond_3b

    if-nez v16, :cond_36

    .line 1206
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_12

    :cond_36
    move-object/from16 v6, v16

    .line 1210
    :goto_12
    iget-boolean v7, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->evictExpiredConnections:Z

    if-nez v7, :cond_38

    iget-boolean v7, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->evictIdleConnections:Z

    if-eqz v7, :cond_37

    goto :goto_13

    :cond_37
    move-object v12, v15

    goto :goto_16

    .line 1211
    :cond_38
    :goto_13
    new-instance v7, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;

    iget-wide v10, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxIdleTime:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-lez v8, :cond_39

    goto :goto_14

    :cond_39
    const-wide/16 v10, 0xa

    :goto_14
    iget-object v8, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    if-eqz v8, :cond_3a

    goto :goto_15

    :cond_3a
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_15
    move-object/from16 v17, v8

    iget-wide v12, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxIdleTime:J

    iget-object v8, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v18, v12

    move-object v13, v7

    move-object v14, v15

    move-object v12, v15

    move-wide v15, v10

    move-object/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    .line 1214
    new-instance v8, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder$1;

    invoke-direct {v8, v9, v7}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder$1;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    invoke-virtual {v7}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/IdleConnectionEvictor;->start()V

    .line 1229
    :goto_16
    new-instance v7, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder$2;

    invoke-direct {v7, v9, v12}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder$2;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpClientConnectionManager;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v6

    goto :goto_17

    :cond_3b
    move-object v12, v15

    move-object/from16 v22, v16

    .line 1239
    :goto_17
    new-instance v6, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/InternalHttpClient;

    iget-object v7, v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;

    if-eqz v7, :cond_3c

    goto :goto_18

    :cond_3c
    sget-object v7, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;->DEFAULT:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;

    :goto_18
    move-object/from16 v21, v7

    move-object v13, v6

    move-object v14, v0

    move-object v15, v12

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v13 .. v22}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/InternalHttpClient;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpClientConnectionManager;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoutePlanner;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CookieStore;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CredentialsProvider;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;Ljava/util/List;)V

    return-object v6
.end method

.method protected createMainExec(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpRequestExecutor;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpClientConnectionManager;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/ConnectionReuseStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ConnectionKeepAliveStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessor;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/UserTokenHandler;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;
    .locals 10

    .line 888
    new-instance v9, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/MainClientExec;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/MainClientExec;-><init>(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpRequestExecutor;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpClientConnectionManager;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/ConnectionReuseStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ConnectionKeepAliveStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessor;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/UserTokenHandler;)V

    return-object v9
.end method

.method protected decorateMainExec(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;
    .locals 0

    return-object p1
.end method

.method protected decorateProtocolExec(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/execchain/ClientExecChain;
    .locals 0

    return-object p1
.end method

.method public final disableAuthCaching()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 603
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->authCachingDisabled:Z

    return-object p0
.end method

.method public final disableAutomaticRetries()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 640
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->automaticRetriesDisabled:Z

    return-object p0
.end method

.method public final disableConnectionState()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 467
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connectionStateDisabled:Z

    return-object p0
.end method

.method public final disableContentCompression()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 592
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->contentCompressionDisabled:Z

    return-object p0
.end method

.method public final disableCookieManagement()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 581
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->cookieManagementDisabled:Z

    return-object p0
.end method

.method public final disableRedirectHandling()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 679
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->redirectHandlingDisabled:Z

    return-object p0
.end method

.method public final evictExpiredConnections()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 803
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->evictExpiredConnections:Z

    return-object p0
.end method

.method public final evictIdleConnections(JLjava/util/concurrent/TimeUnit;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 861
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->evictIdleConnections:Z

    .line 862
    iput-wide p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxIdleTime:J

    .line 863
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxIdleTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public final evictIdleConnections(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 834
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->evictIdleConnections(JLjava/util/concurrent/TimeUnit;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final setBackoffManager(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 696
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->backoffManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/BackoffManager;

    return-object p0
.end method

.method public final setConnectionBackoffStrategy(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connectionBackoffStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ConnectionBackoffStrategy;

    return-object p0
.end method

.method public final setConnectionManager(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpClientConnectionManager;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connManager:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/HttpClientConnectionManager;

    return-object p0
.end method

.method public final setConnectionManagerShared(Z)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 409
    iput-boolean p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connManagerShared:Z

    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/ConnectionReuseStrategy;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 418
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->reuseStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/ConnectionReuseStrategy;

    return-object p0
.end method

.method public final setConnectionTimeToLive(JLjava/util/concurrent/TimeUnit;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 379
    iput-wide p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connTimeToLive:J

    .line 380
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->connTimeToLiveTimeUnit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public final setContentDecoderRegistry(Ljava/util/Map;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/entity/InputStreamFactory;",
            ">;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 761
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->contentDecoderMap:Ljava/util/Map;

    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthSchemeProvider;",
            ">;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 736
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->authSchemeRegistry:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;

    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/ConnectionConfig;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->defaultConnectionConfig:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/ConnectionConfig;

    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup<",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/cookie/CookieSpecProvider;",
            ">;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 750
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->cookieSpecRegistry:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/Lookup;

    return-object p0
.end method

.method public final setDefaultCookieStore(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CookieStore;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->cookieStore:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CookieStore;

    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CredentialsProvider;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->credentialsProvider:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CredentialsProvider;

    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/Header;",
            ">;)",
            "Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    .line 500
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->defaultHeaders:Ljava/util/Collection;

    return-object p0
.end method

.method public final setDefaultRequestConfig(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 771
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->defaultRequestConfig:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;

    return-object p0
.end method

.method public final setDefaultSocketConfig(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/SocketConfig;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->defaultSocketConfig:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/config/SocketConfig;

    return-object p0
.end method

.method public final setDnsResolver(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/DnsResolver;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->dnsResolver:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/DnsResolver;

    return-object p0
.end method

.method public final setHostnameVerifier(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ssl/X509HostnameVerifier;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final setHttpProcessor(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->httpprocessor:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setKeepAliveStrategy(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ConnectionKeepAliveStrategy;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->keepAliveStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/ConnectionKeepAliveStrategy;

    return-object p0
.end method

.method public final setMaxConnPerRoute(I)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 341
    iput p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxConnPerRoute:I

    return-object p0
.end method

.method public final setMaxConnTotal(I)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 329
    iput p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->maxConnTotal:I

    return-object p0
.end method

.method public final setProxy(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpHost;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->proxy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpHost;

    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->proxyAuthStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;

    return-object p0
.end method

.method public final setPublicSuffixMatcher(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/util/PublicSuffixMatcher;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->publicSuffixMatcher:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/util/PublicSuffixMatcher;

    return-object p0
.end method

.method public final setRedirectStrategy(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/RedirectStrategy;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->redirectStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/RedirectStrategy;

    return-object p0
.end method

.method public final setRequestExecutor(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpRequestExecutor;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->requestExec:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/protocol/HttpRequestExecutor;

    return-object p0
.end method

.method public final setRetryHandler(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/HttpRequestRetryHandler;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->retryHandler:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/HttpRequestRetryHandler;

    return-object p0
.end method

.method public final setRoutePlanner(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoutePlanner;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->routePlanner:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/routing/HttpRoutePlanner;

    return-object p0
.end method

.method public final setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public final setSSLHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final setSSLSocketFactory(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/socket/LayeredConnectionSocketFactory;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->sslSocketFactory:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/socket/LayeredConnectionSocketFactory;

    return-object p0
.end method

.method public final setSchemePortResolver(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/SchemePortResolver;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->schemePortResolver:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/conn/SchemePortResolver;

    return-object p0
.end method

.method public final setServiceUnavailableRetryStrategy(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ServiceUnavailableRetryStrategy;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->serviceUnavailStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/ServiceUnavailableRetryStrategy;

    return-object p0
.end method

.method public final setSslcontext(Ljavax/net/ssl/SSLContext;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->setSSLContext(Ljavax/net/ssl/SSLContext;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final setTargetAuthenticationStrategy(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->targetAuthStrategy:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/AuthenticationStrategy;

    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public final setUserTokenHandler(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/UserTokenHandler;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->userTokenHandler:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/UserTokenHandler;

    return-object p0
.end method

.method public final useSystemProperties()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 780
    iput-boolean v0, p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->systemProperties:Z

    return-object p0
.end method
