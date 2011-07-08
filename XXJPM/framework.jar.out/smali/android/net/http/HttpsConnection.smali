.class public Landroid/net/http/HttpsConnection;
.super Landroid/net/http/Connection;
.source "HttpsConnection.java"


# static fields
.field private static mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private mAborted:Z

.field private mProxyHost:Lorg/apache/http/HttpHost;

.field private mSuspendLock:Ljava/lang/Object;

.field private mSuspended:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 65
    invoke-static {v0}, Landroid/net/http/HttpsConnection;->initializeEngine(Ljava/io/File;)V

    .line 66
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .locals 2
    .parameter "context"
    .parameter "host"
    .parameter "proxy"
    .parameter "requestFeeder"

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p4}, Landroid/net/http/Connection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    .line 126
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 132
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 143
    iput-object p3, p0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 144
    return-void
.end method

.method private static declared-synchronized getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 114
    const-class v0, Landroid/net/http/HttpsConnection;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static initializeEngine(Ljava/io/File;)V
    .locals 7
    .parameter "sessionDir"

    .prologue
    .line 75
    const/4 v4, 0x0

    .line 76
    .local v4, cache:Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;
    if-eqz p0, :cond_0

    .line 77
    :try_start_0
    const-string v1, "HttpsConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caching SSL sessions in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p0}, Lorg/apache/harmony/xnet/provider/jsse/FileClientSessionCache;->usingDirectory(Ljava/io/File;)Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;

    move-result-object v4

    .line 82
    :cond_0
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;-><init>()V

    .line 85
    .local v0, sslContext:Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;
    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v3, Landroid/net/http/HttpsConnection$1;

    invoke-direct {v3}, Landroid/net/http/HttpsConnection$1;-><init>()V

    aput-object v3, v2, v1

    .line 101
    .local v2, trustManagers:[Ljavax/net/ssl/TrustManager;
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;Lorg/apache/harmony/xnet/provider/jsse/SSLServerSessionCache;)V

    .line 103
    const-class v1, Landroid/net/http/HttpsConnection;

    monitor-enter v1
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    sput-object v3, Landroid/net/http/HttpsConnection;->mSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 105
    monitor-exit v1

    .line 111
    return-void

    .line 105
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    .end local v0           #sslContext:Lorg/apache/harmony/xnet/provider/jsse/SSLContextImpl;
    .end local v2           #trustManagers:[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 107
    .local v6, e:Ljava/security/KeyManagementException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 108
    .end local v6           #e:Ljava/security/KeyManagementException;
    :catch_1
    move-exception v1

    move-object v6, v1

    .line 109
    .local v6, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method closeConnection()V
    .locals 2

    .prologue
    .line 380
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_0

    .line 382
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 386
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v1}, Landroid/net/http/AndroidHttpClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :cond_1
    :goto_0
    return-void

    .line 389
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 393
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    const-string v0, "https"

    return-object v0
.end method

.method openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .locals 30
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/16 v22, 0x0

    .line 165
    .local v22, sslSock:Ljavax/net/ssl/SSLSocket;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    .line 173
    const/16 v17, 0x0

    .line 174
    .local v17, proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    const/16 v20, 0x0

    .line 176
    .local v20, proxySock:Ljava/net/Socket;
    :try_start_0
    new-instance v21, Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mProxyHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v27

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v20           #proxySock:Ljava/net/Socket;
    .local v21, proxySock:Ljava/net/Socket;
    const v26, 0xea60

    :try_start_1
    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 181
    new-instance v18, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 182
    .end local v17           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .local v18, proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    :try_start_2
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 183
    .local v16, params:Lorg/apache/http/params/HttpParams;
    const/16 v26, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 185
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    .line 200
    const/16 v24, 0x0

    .line 201
    .local v24, statusLine:Lorg/apache/http/StatusLine;
    const/16 v23, 0x0

    .line 202
    .local v23, statusCode:I
    new-instance v13, Landroid/net/http/Headers;

    invoke-direct {v13}, Landroid/net/http/Headers;-><init>()V

    .line 204
    .local v13, headers:Landroid/net/http/Headers;
    :try_start_3
    new-instance v19, Lorg/apache/http/message/BasicHttpRequest;

    const-string v26, "CONNECT"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v19, proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/message/BasicHttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .local v5, arr$:[Lorg/apache/http/Header;
    array-length v15, v5

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    if-ge v14, v15, :cond_2

    aget-object v11, v5, v14

    .line 209
    .local v11, h:Lorg/apache/http/Header;
    invoke-interface {v11}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 211
    .local v12, headerName:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object v1, v11

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_3
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 208
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 186
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v11           #h:Lorg/apache/http/Header;
    .end local v12           #headerName:Ljava/lang/String;
    .end local v13           #headers:Landroid/net/http/Headers;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #params:Lorg/apache/http/params/HttpParams;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v19           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v21           #proxySock:Ljava/net/Socket;
    .end local v23           #statusCode:I
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .restart local v17       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v20       #proxySock:Ljava/net/Socket;
    :catch_0
    move-exception v26

    move-object/from16 v8, v26

    .line 187
    .local v8, e:Ljava/io/IOException;
    :goto_1
    if-eqz v17, :cond_0

    .line 188
    invoke-virtual/range {v17 .. v17}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 191
    :cond_0
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 192
    .local v10, errorMessage:Ljava/lang/String;
    if-nez v10, :cond_1

    .line 193
    const-string v10, "failed to establish a connection to the proxy"

    .line 197
    :cond_1
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 215
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v17           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v20           #proxySock:Ljava/net/Socket;
    .restart local v5       #arr$:[Lorg/apache/http/Header;
    .restart local v13       #headers:Landroid/net/http/Headers;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v16       #params:Lorg/apache/http/params/HttpParams;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v19       #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .restart local v21       #proxySock:Ljava/net/Socket;
    .restart local v23       #statusCode:I
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    :cond_2
    :try_start_4
    invoke-virtual/range {v18 .. v19}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 216
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 223
    :cond_3
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v24

    .line 224
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_4
    .catch Lorg/apache/http/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v23

    .line 225
    const/16 v26, 0xc8

    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_3

    .line 252
    const/16 v26, 0xc8

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 254
    :try_start_5
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v28

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v23

    .end local v23           #statusCode:I
    move-object/from16 v0, v23

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v22, v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 308
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v13           #headers:Landroid/net/http/Headers;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #params:Lorg/apache/http/params/HttpParams;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v19           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v21           #proxySock:Ljava/net/Socket;
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    :goto_2
    invoke-static {}, Landroid/net/http/CertificateChainValidator;->getInstance()Landroid/net/http/CertificateChainValidator;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/CertificateChainValidator;->doHandshakeAndValidateServerCertificates(Landroid/net/http/HttpsConnection;Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v9

    .line 312
    .local v9, error:Landroid/net/http/SslError;
    if-eqz v9, :cond_10

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 319
    const/16 v27, 0x1

    :try_start_6
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 320
    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/Request;->getEventHandler()Landroid/net/http/EventHandler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->handleSslErrorRequest(Landroid/net/http/SslError;)Z

    move-result v6

    .line 323
    .local v6, canHandle:Z
    if-nez v6, :cond_d

    .line 324
    new-instance v26, Ljava/io/IOException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "failed to handle "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 226
    .end local v6           #canHandle:Z
    .end local v9           #error:Landroid/net/http/SslError;
    .restart local v13       #headers:Landroid/net/http/Headers;
    .restart local v16       #params:Lorg/apache/http/params/HttpParams;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxySock:Ljava/net/Socket;
    .restart local v23       #statusCode:I
    .restart local v24       #statusLine:Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v26

    move-object/from16 v8, v26

    .line 227
    .local v8, e:Lorg/apache/http/ParseException;
    invoke-virtual {v8}, Lorg/apache/http/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 228
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_4

    .line 229
    const-string v10, "failed to send a CONNECT request"

    .line 233
    :cond_4
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 234
    .end local v8           #e:Lorg/apache/http/ParseException;
    .end local v10           #errorMessage:Ljava/lang/String;
    :catch_2
    move-exception v26

    move-object/from16 v8, v26

    .line 235
    .local v8, e:Lorg/apache/http/HttpException;
    invoke-virtual {v8}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 236
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_5

    .line 237
    const-string v10, "failed to send a CONNECT request"

    .line 241
    :cond_5
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 242
    .end local v8           #e:Lorg/apache/http/HttpException;
    .end local v10           #errorMessage:Ljava/lang/String;
    :catch_3
    move-exception v26

    move-object/from16 v8, v26

    .line 243
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 244
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_6

    .line 245
    const-string v10, "failed to send a CONNECT request"

    .line 249
    :cond_6
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 256
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .end local v23           #statusCode:I
    .restart local v5       #arr$:[Lorg/apache/http/Header;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v19       #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    :catch_4
    move-exception v26

    move-object/from16 v8, v26

    .line 257
    .restart local v8       #e:Ljava/io/IOException;
    if-eqz v22, :cond_7

    .line 258
    throw v22

    .line 261
    :cond_7
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 262
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_8

    .line 263
    const-string v10, "failed to create an SSL socket"

    .line 266
    :cond_8
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 270
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v23       #statusCode:I
    :cond_9
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v25

    .line 272
    .local v25, version:Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v27

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v28

    invoke-interface/range {v24 .. v24}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v23

    move-object/from16 v4, v29

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 276
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 277
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Landroid/net/http/EventHandler;->endData()V

    .line 279
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/AndroidHttpClientConnection;->close()V

    .line 283
    const/16 v26, 0x0

    .line 366
    .end local v5           #arr$:[Lorg/apache/http/Header;
    .end local v13           #headers:Landroid/net/http/Headers;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #params:Lorg/apache/http/params/HttpParams;
    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v19           #proxyReq:Lorg/apache/http/message/BasicHttpRequest;
    .end local v21           #proxySock:Ljava/net/Socket;
    .end local v23           #statusCode:I
    .end local v24           #statusLine:Lorg/apache/http/StatusLine;
    .end local v25           #version:Lorg/apache/http/ProtocolVersion;
    :goto_3
    return-object v26

    .line 288
    :cond_a
    :try_start_7
    invoke-static {}, Landroid/net/http/HttpsConnection;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object/from16 v22, v0

    .line 290
    const/16 v26, 0x36b0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 291
    new-instance v26, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mHost:Lorg/apache/http/HttpHost;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v28

    invoke-direct/range {v26 .. v28}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_2

    .line 293
    :catch_5
    move-exception v26

    move-object/from16 v8, v26

    .line 294
    .restart local v8       #e:Ljava/io/IOException;
    if-eqz v22, :cond_b

    .line 295
    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 298
    :cond_b
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    .line 299
    .restart local v10       #errorMessage:Ljava/lang/String;
    if-nez v10, :cond_c

    .line 300
    const-string v10, "failed to create an SSL socket"

    .line 303
    :cond_c
    new-instance v26, Ljava/io/IOException;

    move-object/from16 v0, v26

    move-object v1, v10

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 320
    .end local v8           #e:Ljava/io/IOException;
    .end local v10           #errorMessage:Ljava/lang/String;
    .restart local v9       #error:Landroid/net/http/SslError;
    :catchall_0
    move-exception v27

    :try_start_8
    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v27

    .line 326
    .restart local v6       #canHandle:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 327
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v27, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v27, :cond_e

    .line 335
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    const-wide/32 v28, 0x927c0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/Object;->wait(J)V

    .line 336
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 340
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 341
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/http/HttpsConnection;->mAborted:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    .line 351
    :cond_e
    :goto_4
    :try_start_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/HttpsConnection;->mAborted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_f

    .line 354
    invoke-virtual/range {v22 .. v22}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 355
    new-instance v27, Landroid/net/http/SSLConnectionClosedByUserException;

    const-string v28, "connection closed by the user"

    invoke-direct/range {v27 .. v28}, Landroid/net/http/SSLConnectionClosedByUserException;-><init>(Ljava/lang/String;)V

    throw v27

    .line 357
    :catchall_1
    move-exception v27

    monitor-exit v26
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v27

    :cond_f
    :try_start_c
    monitor-exit v26
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 361
    .end local v6           #canHandle:Z
    :cond_10
    new-instance v7, Landroid/net/http/AndroidHttpClientConnection;

    invoke-direct {v7}, Landroid/net/http/AndroidHttpClientConnection;-><init>()V

    .line 362
    .local v7, conn:Landroid/net/http/AndroidHttpClientConnection;
    new-instance v16, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v16 .. v16}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 363
    .local v16, params:Lorg/apache/http/params/BasicHttpParams;
    const-string v26, "http.socket.buffer-size"

    const/16 v27, 0x2000

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/params/BasicHttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 364
    move-object v0, v7

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/http/AndroidHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    move-object/from16 v26, v7

    .line 366
    goto/16 :goto_3

    .line 347
    .end local v7           #conn:Landroid/net/http/AndroidHttpClientConnection;
    .end local v16           #params:Lorg/apache/http/params/BasicHttpParams;
    .restart local v6       #canHandle:Z
    :catch_6
    move-exception v27

    goto :goto_4

    .line 186
    .end local v6           #canHandle:Z
    .end local v9           #error:Landroid/net/http/SslError;
    .restart local v17       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxySock:Ljava/net/Socket;
    :catch_7
    move-exception v26

    move-object/from16 v8, v26

    move-object/from16 v20, v21

    .end local v21           #proxySock:Ljava/net/Socket;
    .restart local v20       #proxySock:Ljava/net/Socket;
    goto/16 :goto_1

    .end local v17           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .end local v20           #proxySock:Ljava/net/Socket;
    .restart local v18       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v21       #proxySock:Ljava/net/Socket;
    :catch_8
    move-exception v26

    move-object/from16 v8, v26

    move-object/from16 v20, v21

    .end local v21           #proxySock:Ljava/net/Socket;
    .restart local v20       #proxySock:Ljava/net/Socket;
    move-object/from16 v17, v18

    .end local v18           #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    .restart local v17       #proxyConnection:Landroid/net/http/AndroidHttpClientConnection;
    goto/16 :goto_1
.end method

.method restartConnection(Z)V
    .locals 3
    .parameter "proceed"

    .prologue
    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    iget-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    if-eqz v1, :cond_0

    .line 408
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mSuspended:Z

    .line 409
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/net/http/HttpsConnection;->mAborted:Z

    .line 410
    iget-object v1, p0, Landroid/net/http/HttpsConnection;->mSuspendLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 412
    :cond_0
    monitor-exit v0

    .line 413
    return-void

    :cond_1
    move v1, v2

    .line 409
    goto :goto_0

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .parameter "certificate"

    .prologue
    .line 152
    iput-object p1, p0, Landroid/net/http/HttpsConnection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 153
    return-void
.end method
