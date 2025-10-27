.class public Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;
.super Ljava/lang/Object;
.source "ProxySettings.java"


# instance fields
.field private final _proxyHost:Ljava/lang/String;

.field private final _proxyPassword:Ljava/lang/String;

.field private final _proxyPort:Ljava/lang/Integer;

.field private final _proxyUser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyHost:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyPort:Ljava/lang/Integer;

    .line 25
    iput-object p3, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyUser:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyPassword:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientFor()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/HttpClient;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyPort:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyUser:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyPassword:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crashlytics using proxy auth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    .line 58
    new-instance v1, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/UsernamePasswordCredentials;

    iget-object v2, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyUser:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyPassword:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v2, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthScope;

    iget-object v3, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyHost:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyPort:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v2, v3, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 60
    invoke-interface {v0, v2, v1}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CredentialsProvider;->setCredentials(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/AuthScope;Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/auth/Credentials;)V

    .line 62
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClients;->custom()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->setDefaultCredentialsProvider(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/CredentialsProvider;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClientBuilder;->build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/CloseableHttpClient;

    move-result-object p0

    return-object p0

    .line 52
    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/HttpClients;->createDefault()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/impl/client/CloseableHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public getConfig()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyHost:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyPort:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Crashlytics using custom proxy settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyPort:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/crashlytics/buildtools/Buildtools;->logD(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpHost;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyHost:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/firebase/crashlytics/buildtools/api/net/proxy/ProxySettings;->_proxyPort:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 37
    invoke-static {}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;->custom()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig$Builder;->setProxy(Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/HttpHost;)Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig$Builder;->build()Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;

    move-result-object p0

    return-object p0

    .line 31
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;->DEFAULT:Lcom/google/firebase/crashlytics/buildtools/reloc/org/apache/http/client/config/RequestConfig;

    return-object p0
.end method
