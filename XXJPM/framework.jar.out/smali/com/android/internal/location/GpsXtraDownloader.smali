.class public Lcom/android/internal/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 8
    .parameter "context"
    .parameter "properties"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, count:I
    const-string v6, "XTRA_SERVER_1"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, server1:Ljava/lang/String;
    const-string v6, "XTRA_SERVER_2"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, server2:Ljava/lang/String;
    const-string v6, "XTRA_SERVER_3"

    invoke-virtual {p2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, server3:Ljava/lang/String;
    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 64
    :cond_0
    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 65
    :cond_1
    if-eqz v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 67
    :cond_2
    if-nez v0, :cond_3

    .line 68
    const-string v6, "GpsXtraDownloader"

    const-string v7, "No XTRA servers were specified in the GPS configuration"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_3
    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    .line 73
    if-eqz v3, :cond_6

    iget-object v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    aput-object v3, v6, v0

    .line 74
    :goto_1
    if-eqz v4, :cond_4

    iget-object v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aput-object v4, v6, v1

    move v1, v0

    .line 75
    .end local v0           #count:I
    .restart local v1       #count:I
    :cond_4
    if-eqz v5, :cond_5

    iget-object v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    aput-object v5, v6, v1

    .line 78
    :goto_2
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 79
    .local v2, random:Ljava/util/Random;
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    goto :goto_0

    .end local v0           #count:I
    .end local v2           #random:Ljava/util/Random;
    .restart local v1       #count:I
    :cond_5
    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_2

    :cond_6
    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_1
.end method

.method protected static doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .locals 5
    .parameter "url"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"

    .prologue
    .line 112
    const-string v0, "GpsXtraDownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading XTRA data from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    const-string v1, "Android"

    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 117
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, req:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p1, :cond_0

    .line 120
    new-instance p0, Lorg/apache/http/HttpHost;

    .end local p0
    invoke-direct {p0, p2, p3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 121
    .local p0, proxy:Lorg/apache/http/HttpHost;
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    .end local p1
    invoke-static {p1, p0}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 124
    .end local p0           #proxy:Lorg/apache/http/HttpHost;
    :cond_0
    const-string p0, "Accept"

    const-string p1, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-interface {v1, p0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo p0, "x-wap-profile"

    const-string p1, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-interface {v1, p0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 133
    .local p0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 134
    .local p1, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p2

    .end local p2
    const/16 p3, 0xc8

    if-eq p2, p3, :cond_2

    .line 135
    .end local p3
    const-string p0, "GpsXtraDownloader"

    .end local p0           #response:Lorg/apache/http/HttpResponse;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "HTTP error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    .end local p1           #status:Lorg/apache/http/StatusLine;
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    const/4 p0, 0x0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_1
    move-object p1, p0

    move-object p0, v0

    .line 170
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local v1           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :goto_0
    return-object p1

    .line 139
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v1       #req:Lorg/apache/http/client/methods/HttpUriRequest;
    .local p0, response:Lorg/apache/http/HttpResponse;
    .restart local p1       #status:Lorg/apache/http/StatusLine;
    :cond_2
    :try_start_1
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p2

    .line 140
    .local p2, entity:Lorg/apache/http/HttpEntity;
    const/4 p0, 0x0

    .line 141
    .local p0, body:[B
    if-eqz p2, :cond_4

    .line 143
    :try_start_2
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    .end local v1           #req:Lorg/apache/http/client/methods/HttpUriRequest;
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_3

    .line 144
    .end local p1           #status:Lorg/apache/http/StatusLine;
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    long-to-int p1, v1

    new-array p0, p1, [B

    .line 145
    new-instance p1, Ljava/io/DataInputStream;

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    .local p1, dis:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :try_start_4
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 157
    .end local p1           #dis:Ljava/io/DataInputStream;
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 158
    :try_start_5
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 166
    :cond_4
    if-eqz v0, :cond_5

    .line 167
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_5
    move-object p1, p0

    move-object p0, v0

    .line 162
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    goto :goto_0

    .line 149
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .restart local p1       #dis:Ljava/io/DataInputStream;
    :catchall_0
    move-exception p3

    .line 150
    :try_start_6
    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 149
    .end local p1           #dis:Ljava/io/DataInputStream;
    :goto_2
    :try_start_7
    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 157
    :catchall_1
    move-exception p1

    if-eqz p2, :cond_6

    .line 158
    :try_start_8
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 157
    :cond_6
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 163
    .end local p0           #body:[B
    .end local p2           #entity:Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .line 164
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    .local p1, e:Ljava/lang/Exception;
    :try_start_9
    const-string p2, "GpsXtraDownloader"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #e:Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 166
    if-eqz p0, :cond_7

    .line 167
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 170
    :cond_7
    const/4 p1, 0x0

    goto :goto_0

    .line 166
    .end local p0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    :catchall_2
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .restart local p0       #client:Landroid/net/http/AndroidHttpClient;
    :goto_3
    if-eqz p0, :cond_8

    .line 167
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 166
    :cond_8
    throw p1

    .line 151
    .restart local v0       #client:Landroid/net/http/AndroidHttpClient;
    .local p0, body:[B
    .local p1, dis:Ljava/io/DataInputStream;
    .restart local p2       #entity:Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception p1

    .line 152
    .local p1, e:Ljava/io/IOException;
    :try_start_a
    const-string v1, "GpsXtraDownloader"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 151
    .local p1, dis:Ljava/io/DataInputStream;
    :catch_2
    move-exception p1

    .line 152
    .local p1, e:Ljava/io/IOException;
    const-string p3, "GpsXtraDownloader"

    const-string v1, "Unexpected IOException."

    invoke-static {p3, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_1

    .line 166
    .end local v0           #client:Landroid/net/http/AndroidHttpClient;
    .end local p1           #e:Ljava/io/IOException;
    .end local p2           #entity:Lorg/apache/http/HttpEntity;
    .local p0, client:Landroid/net/http/AndroidHttpClient;
    :catchall_3
    move-exception p1

    goto :goto_3
.end method


# virtual methods
.method downloadXtraData()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 84
    iget-object v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, proxyHost:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 86
    .local v1, proxyPort:I
    if-eqz v0, :cond_0

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    const/4 v5, 0x1

    move v4, v5

    .line 87
    .local v4, useProxy:Z
    :goto_0
    const/4 v2, 0x0

    .line 88
    .local v2, result:[B
    iget v3, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 90
    .local v3, startIndex:I
    iget-object v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 91
    const/4 v5, 0x0

    .line 107
    :goto_1
    return-object v5

    .end local v2           #result:[B
    .end local v3           #startIndex:I
    .end local v4           #useProxy:Z
    :cond_0
    move v4, v7

    .line 86
    goto :goto_0

    .line 95
    .restart local v2       #result:[B
    .restart local v3       #startIndex:I
    .restart local v4       #useProxy:Z
    :cond_1
    if-nez v2, :cond_3

    .line 96
    iget-object v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    iget v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    aget-object v5, v5, v6

    invoke-static {v5, v4, v0, v1}, Lcom/android/internal/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    .line 99
    iget v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 100
    iget v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    iget-object v6, p0, Lcom/android/internal/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    array-length v6, v6

    if-ne v5, v6, :cond_2

    .line 101
    iput v7, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 104
    :cond_2
    iget v5, p0, Lcom/android/internal/location/GpsXtraDownloader;->mNextServerIndex:I

    if-ne v5, v3, :cond_1

    :cond_3
    move-object v5, v2

    .line 107
    goto :goto_1
.end method
