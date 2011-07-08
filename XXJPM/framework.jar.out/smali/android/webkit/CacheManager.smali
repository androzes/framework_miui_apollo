.class public final Landroid/webkit/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CacheManager$CacheResult;
    }
.end annotation


# static fields
.field static CACHE_MAX_SIZE:J = 0x0L

.field private static CACHE_THRESHOLD:J = 0x0L

.field private static CACHE_TRIM_AMOUNT:J = 0x0L

.field static final HEADER_KEY_IFMODIFIEDSINCE:Ljava/lang/String; = "if-modified-since"

.field static final HEADER_KEY_IFNONEMATCH:Ljava/lang/String; = "if-none-match"

.field private static final LOGTAG:Ljava/lang/String; = "cache"

.field private static final MANIFEST_MIME:Ljava/lang/String; = "text/cache-manifest"

.field private static final MAX_AGE:Ljava/lang/String; = "max-age"

.field private static final NO_CACHE:Ljava/lang/String; = "no-cache"

.field private static final NO_STORE:Ljava/lang/String; = "no-store"

.field private static final TRIM_CACHE_INTERVAL:I = 0x5

.field private static mBaseDir:Ljava/io/File;

.field private static mClearCacheOnInit:Z

.field private static mDataBase:Landroid/webkit/WebViewDatabase;

.field private static mDisabled:Z

.field private static mRefCount:I

.field private static mTrimCacheCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    const-wide/32 v0, 0x600000

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    .line 61
    const-wide/32 v0, 0x200000

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    .line 64
    sget-wide v0, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    sget-wide v2, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    sput-wide v0, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    .line 75
    sput v4, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    .line 82
    sput-boolean v4, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method private static appendAsHex(ILjava/lang/StringBuffer;)V
    .locals 2
    .parameter "i"
    .parameter "ret"

    .prologue
    .line 667
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 691
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    return-void

    .line 670
    :pswitch_0
    const-string v1, "0000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 673
    :pswitch_1
    const-string v1, "000000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 676
    :pswitch_2
    const-string v1, "00000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 679
    :pswitch_3
    const-string v1, "0000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 682
    :pswitch_4
    const-string v1, "000"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 685
    :pswitch_5
    const-string v1, "00"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 688
    :pswitch_6
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static cacheDisabled()Z
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    return v0
.end method

.method static cacheEmpty()Z
    .locals 1

    .prologue
    .line 544
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->hasCache()Z

    move-result v0

    return v0
.end method

.method private static checkCacheRedirect(I)Z
    .locals 1
    .parameter "statusCode"

    .prologue
    .line 586
    const/16 v0, 0x12d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x12e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x133

    if-ne p0, v0, :cond_1

    .line 588
    :cond_0
    const/4 v0, 0x1

    .line 590
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static cleanupCacheFile(Landroid/webkit/CacheManager$CacheResult;)Z
    .locals 2
    .parameter "cacheRet"

    .prologue
    .line 492
    :try_start_0
    iget-object v1, p0, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    iget-object v1, p0, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    :goto_0
    return v1

    .line 493
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 494
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static clearCache()V
    .locals 1

    .prologue
    .line 582
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearCache()V

    .line 583
    return-void
.end method

.method private static createCacheDirectory()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 192
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const-string v0, "cache"

    const-string v1, "Unable to create webviewCache directory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 210
    :goto_0
    return v0

    .line 197
    :cond_0
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 206
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 208
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 210
    goto :goto_0
.end method

.method static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;
    .locals 7
    .parameter "url"
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"
    .parameter "postIdentifier"
    .parameter "forceCache"

    .prologue
    const/4 v6, 0x0

    .line 396
    if-nez p6, :cond_0

    sget-boolean v4, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v4, :cond_0

    move-object v4, v6

    .line 445
    :goto_0
    return-object v4

    .line 400
    :cond_0
    invoke-static {p0, p4, p5}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, databaseKey:Ljava/lang/String;
    const/16 v4, 0x12f

    if-ne p1, v4, :cond_1

    .line 405
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v6

    .line 406
    goto :goto_0

    .line 411
    :cond_1
    invoke-static {p1}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 413
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v6

    .line 414
    goto :goto_0

    .line 417
    :cond_2
    invoke-static {p1, p2, p3}, Landroid/webkit/CacheManager;->parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    .line 418
    .local v3, ret:Landroid/webkit/CacheManager$CacheResult;
    if-nez v3, :cond_3

    .line 421
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    :goto_1
    move-object v4, v3

    .line 445
    goto :goto_0

    .line 423
    :cond_3
    invoke-static {v0, v3}, Landroid/webkit/CacheManager;->setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    .line 425
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_2
    iput-object p3, v3, Landroid/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    goto :goto_1

    .line 426
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 429
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 431
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, v3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 432
    :catch_1
    move-exception v4

    move-object v2, v4

    .local v2, e2:Ljava/io/FileNotFoundException;
    move-object v4, v6

    .line 435
    goto :goto_0

    .end local v2           #e2:Ljava/io/FileNotFoundException;
    :cond_4
    move-object v4, v6

    .line 439
    goto :goto_0
.end method

.method public static createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;Z)Landroid/webkit/CacheManager$CacheResult;
    .locals 7
    .parameter "url"
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"
    .parameter "forceCache"

    .prologue
    .line 389
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/webkit/CacheManager;->createCacheFile(Ljava/lang/String;ILandroid/net/http/Headers;Ljava/lang/String;JZ)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    return-object v0
.end method

.method static disableTransaction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 260
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-nez v0, :cond_0

    .line 261
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    move v0, v1

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static enableTransaction()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 250
    sget v0, Landroid/webkit/CacheManager;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/CacheManager;->mRefCount:I

    if-ne v0, v1, :cond_0

    .line 251
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    move v0, v1

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static endCacheTransaction()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method static endTransaction()Z
    .locals 3

    .prologue
    .line 276
    sget-object v1, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->endCacheTransaction()Z

    move-result v0

    .line 277
    .local v0, ret:Z
    sget v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 278
    const/4 v1, 0x0

    sput v1, Landroid/webkit/CacheManager;->mTrimCacheCount:I

    .line 279
    invoke-static {}, Landroid/webkit/CacheManager;->trimCacheIfNeeded()V

    .line 281
    :cond_0
    return v0
.end method

.method static getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .locals 9
    .parameter "url"
    .parameter "postIdentifier"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .prologue
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 319
    sget-boolean v4, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v4, :cond_0

    move-object v4, v8

    .line 372
    :goto_0
    return-object v4

    .line 323
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, databaseKey:Ljava/lang/String;
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v2

    .line 326
    .local v2, result:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v2, :cond_3

    .line 327
    iget-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 328
    iget v4, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v4}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 330
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v8

    .line 331
    goto :goto_0

    .line 334
    :cond_1
    new-instance v3, Ljava/io/File;

    sget-object v4, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    .local v3, src:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->inStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v3           #src:Ljava/io/File;
    :cond_2
    if-eqz p3, :cond_6

    iget-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    iget-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    .line 355
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-nez v4, :cond_4

    move-object v4, v8

    .line 356
    goto :goto_0

    .line 339
    .restart local v3       #src:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 342
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v4, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v0}, Landroid/webkit/WebViewDatabase;->removeCache(Ljava/lang/String;)V

    move-object v4, v8

    .line 343
    goto :goto_0

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v3           #src:Ljava/io/File;
    :cond_3
    move-object v4, v8

    .line 347
    goto :goto_0

    .line 360
    :cond_4
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 361
    const-string v4, "if-none-match"

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_5
    iget-object v4, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 364
    const-string v4, "if-modified-since"

    iget-object v5, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-interface {p3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v4, v2

    .line 372
    goto :goto_0
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .locals 2
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method private static getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "postIdentifier"

    .prologue
    .line 595
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 596
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    sput-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    .line 179
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "webviewCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    .line 180
    invoke-static {}, Landroid/webkit/CacheManager;->createCacheDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 182
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    .line 184
    :cond_0
    return-void
.end method

.method private static parseHeaders(ILandroid/net/http/Headers;Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;
    .locals 11
    .parameter "statusCode"
    .parameter "headers"
    .parameter "mimeType"

    .prologue
    .line 697
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v0

    sget-wide v2, Landroid/webkit/CacheManager;->CACHE_MAX_SIZE:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p0, 0x0

    .line 849
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 706
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    const-string/jumbo v0, "text/cache-manifest"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 709
    :cond_1
    new-instance v2, Landroid/webkit/CacheManager$CacheResult;

    invoke-direct {v2}, Landroid/webkit/CacheManager$CacheResult;-><init>()V

    .line 710
    .local v2, ret:Landroid/webkit/CacheManager$CacheResult;
    iput p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 712
    invoke-virtual {p1}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object p0

    .line 713
    .local p0, location:Ljava/lang/String;
    if-eqz p0, :cond_2

    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 715
    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 716
    invoke-virtual {p1}, Landroid/net/http/Headers;->getExpires()Ljava/lang/String;

    move-result-object p0

    .end local p0           #location:Ljava/lang/String;
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    .line 717
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 719
    :try_start_0
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object p0

    .line 733
    .local p0, contentDisposition:Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 734
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    .line 737
    :cond_4
    invoke-virtual {p1}, Landroid/net/http/Headers;->getXPermittedCrossDomainPolicies()Ljava/lang/String;

    move-result-object p0

    .line 738
    .local p0, crossDomain:Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 739
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    .line 744
    :cond_5
    invoke-virtual {p1}, Landroid/net/http/Headers;->getLastModified()Ljava/lang/String;

    move-result-object p0

    .line 745
    .local p0, lastModified:Ljava/lang/String;
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 746
    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 749
    :cond_6
    invoke-virtual {p1}, Landroid/net/http/Headers;->getEtag()Ljava/lang/String;

    move-result-object p0

    .line 750
    .local p0, etag:Ljava/lang/String;
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    iput-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 752
    :cond_7
    invoke-virtual {p1}, Landroid/net/http/Headers;->getCacheControl()Ljava/lang/String;

    move-result-object p0

    .line 753
    .local p0, cacheControl:Ljava/lang/String;
    if-eqz p0, :cond_e

    .line 754
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .end local p0           #cacheControl:Ljava/lang/String;
    const-string v0, "[ ,;]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 755
    .local p0, controls:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_2
    array-length v0, p0

    if-ge v1, v0, :cond_e

    .line 756
    const-string v0, "no-store"

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 757
    const/4 p0, 0x0

    goto :goto_0

    .line 720
    .end local v1           #i:I
    .end local p0           #controls:[Ljava/lang/String;
    :catch_0
    move-exception p0

    .line 722
    .local p0, ex:Ljava/lang/IllegalArgumentException;
    const-string p0, "-1"

    .end local p0           #ex:Ljava/lang/IllegalArgumentException;
    iget-object v0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    const-string p0, "0"

    iget-object v0, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 725
    :cond_8
    const-wide/16 v0, 0x0

    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_1

    .line 727
    :cond_9
    const-string p0, "cache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal expires: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 763
    .restart local v1       #i:I
    .local p0, controls:[Ljava/lang/String;
    :cond_a
    const-string v0, "no-cache"

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 764
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 755
    :cond_b
    :goto_3
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_2

    .line 765
    :cond_c
    aget-object v0, p0, v1

    const-string v3, "max-age"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 766
    aget-object v0, p0, v1

    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 767
    .local v0, separator:I
    if-gez v0, :cond_17

    .line 768
    aget-object v0, p0, v1

    .end local v0           #separator:I
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .restart local v0       #separator:I
    move v6, v0

    .line 770
    .end local v0           #separator:I
    .local v6, separator:I
    :goto_4
    if-lez v6, :cond_b

    .line 771
    aget-object v0, p0, v1

    add-int/lit8 v3, v6, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, s:Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 774
    .local v4, sec:J
    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-ltz v0, :cond_b

    .line 775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v4, v9

    add-long/2addr v4, v7

    iput-wide v4, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 778
    .end local v4           #sec:J
    :catch_1
    move-exception v0

    .line 779
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v0, "1d"

    .end local v0           #ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 781
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .end local v3           #s:Ljava/lang/String;
    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_3

    .line 783
    .restart local v3       #s:Ljava/lang/String;
    :cond_d
    const-string v0, "cache"

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #s:Ljava/lang/String;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in parseHeaders for max-age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v1

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_3

    .line 797
    .end local v1           #i:I
    .end local v6           #separator:I
    .end local p0           #controls:[Ljava/lang/String;
    :cond_e
    const-string p0, "no-cache"

    invoke-virtual {p1}, Landroid/net/http/Headers;->getPragma()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 798
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .line 803
    :cond_f
    iget-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    const-wide/16 v0, -0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_10

    .line 804
    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x12d

    if-ne p0, p1, :cond_11

    .line 807
    const-wide p0, 0x7fffffffffffffffL

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    .end local p2
    :cond_10
    :goto_5
    move-object p0, v2

    .line 849
    goto/16 :goto_0

    .line 808
    .restart local p2
    :cond_11
    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x12e

    if-eq p0, p1, :cond_12

    iget p0, v2, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    const/16 p1, 0x133

    if-ne p0, p1, :cond_13

    .line 810
    :cond_12
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_5

    .line 811
    :cond_13
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    if-nez p0, :cond_15

    .line 818
    const-string/jumbo p0, "text/html"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_14

    .line 819
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long/2addr p0, v0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_5

    .line 823
    :cond_14
    const-wide/16 p0, 0x0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_5

    .line 832
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-wide/32 v0, 0x5265c00

    add-long p1, p0, v0

    .line 834
    .end local p2
    .local p1, lastmod:J
    :try_start_2
    iget-object p0, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide p0

    .end local p1           #lastmod:J
    .local p0, lastmod:J
    move-wide v0, p0

    .line 838
    .end local p0           #lastmod:J
    .local v0, lastmod:J
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 839
    .local p0, difference:J
    const-wide/16 v3, 0x0

    cmp-long p2, p0, v3

    if-lez p2, :cond_16

    .line 840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .end local v0           #lastmod:J
    const-wide/16 v3, 0x5

    div-long/2addr p0, v3

    .end local p0           #difference:J
    add-long/2addr p0, v0

    iput-wide p0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_5

    .line 835
    .restart local p1       #lastmod:J
    :catch_2
    move-exception p0

    .line 836
    .local p0, ex:Ljava/lang/IllegalArgumentException;
    const-string p0, "cache"

    .end local p0           #ex:Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal lastModified: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Landroid/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, p1

    .end local p1           #lastmod:J
    .restart local v0       #lastmod:J
    goto :goto_6

    .line 844
    .local p0, difference:J
    :cond_16
    iput-wide v0, v2, Landroid/webkit/CacheManager$CacheResult;->expires:J

    goto :goto_5

    .local v0, separator:I
    .restart local v1       #i:I
    .local p0, controls:[Ljava/lang/String;
    .local p1, headers:Landroid/net/http/Headers;
    .restart local p2
    :cond_17
    move v6, v0

    .end local v0           #separator:I
    .restart local v6       #separator:I
    goto/16 :goto_4
.end method

.method static removeAllCacheFiles()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 507
    sget-object v1, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 510
    sput-boolean v3, Landroid/webkit/CacheManager;->mClearCacheOnInit:Z

    move v1, v3

    .line 537
    :goto_0
    return v1

    .line 514
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 517
    new-instance v0, Landroid/webkit/CacheManager$1;

    invoke-direct {v0}, Landroid/webkit/CacheManager$1;-><init>()V

    .line 536
    .local v0, clearCache:Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    move v1, v3

    .line 537
    goto :goto_0
.end method

.method static saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V
    .locals 7
    .parameter "url"
    .parameter "postIdentifier"
    .parameter "cacheRet"

    .prologue
    const-wide/16 v5, 0x0

    .line 459
    :try_start_0
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 461
    .local v0, e:Ljava/io/IOException;
    goto :goto_0

    .line 469
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    iget v2, p3, Landroid/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-static {v2}, Landroid/webkit/CacheManager;->checkCacheRedirect(I)Z

    move-result v1

    .line 470
    .local v1, redirect:Z
    if-eqz v1, :cond_2

    .line 472
    iput-wide v5, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    .line 473
    const-string v2, ""

    iput-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 475
    :cond_2
    if-nez v1, :cond_3

    iget-wide v2, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v2, v2, v5

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 477
    const-string v2, "cache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " delete failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_4
    iget-wide v2, p3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 483
    sget-object v2, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-static {p0, p1, p2}, Landroid/webkit/CacheManager;->getDatabaseKey(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Landroid/webkit/WebViewDatabase;->addCache(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V

    goto :goto_0
.end method

.method public static saveCacheFile(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .locals 2
    .parameter "url"
    .parameter "cacheRet"

    .prologue
    .line 453
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V

    .line 454
    return-void
.end method

.method static setCacheDisabled(Z)V
    .locals 1
    .parameter "disabled"

    .prologue
    .line 229
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-ne p0, v0, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    sput-boolean p0, Landroid/webkit/CacheManager;->mDisabled:Z

    .line 233
    sget-boolean v0, Landroid/webkit/CacheManager;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 234
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    goto :goto_0
.end method

.method private static setupFiles(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .locals 11
    .parameter "url"
    .parameter "cacheRet"

    .prologue
    const/16 v10, 0x8

    .line 609
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 610
    .local v2, hashCode:I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 611
    .local v5, ret:Ljava/lang/StringBuffer;
    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    .line 612
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 615
    .local v1, file:Ljava/io/File;
    const/4 v0, 0x1

    .line 622
    .local v0, checkOldPath:Z
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 623
    if-eqz v0, :cond_3

    .line 624
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6, p0}, Landroid/webkit/WebViewDatabase;->getCache(Ljava/lang/String;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v3

    .line 625
    .local v3, oldResult:Landroid/webkit/CacheManager$CacheResult;
    if-eqz v3, :cond_2

    iget-wide v6, v3, Landroid/webkit/CacheManager$CacheResult;->contentLength:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 626
    iget-object v6, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 627
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 642
    .end local v3           #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_0
    :goto_1
    iput-object v4, p1, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 643
    iput-object v1, p1, Landroid/webkit/CacheManager$CacheResult;->outFile:Ljava/io/File;

    .line 664
    return-void

    .line 629
    .restart local v3       #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_1
    iget-object v4, v3, Landroid/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 630
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 632
    .restart local v1       #file:Ljava/io/File;
    goto :goto_1

    .line 634
    :cond_2
    const/4 v0, 0x0

    .line 636
    .end local v3           #oldResult:Landroid/webkit/CacheManager$CacheResult;
    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #ret:Ljava/lang/StringBuffer;
    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 637
    .restart local v5       #ret:Ljava/lang/StringBuffer;
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v5}, Landroid/webkit/CacheManager;->appendAsHex(ILjava/lang/StringBuffer;)V

    .line 638
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 639
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-direct {v1, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1       #file:Ljava/io/File;
    goto :goto_0
.end method

.method public static startCacheTransaction()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method static startTransaction()Z
    .locals 1

    .prologue
    .line 270
    sget-object v0, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->startCacheTransaction()Z

    move-result v0

    return v0
.end method

.method static trimCacheIfNeeded()V
    .locals 12

    .prologue
    const-string v11, "cache"

    const-string v10, " delete failed."

    .line 548
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6}, Landroid/webkit/WebViewDatabase;->getCacheTotalSize()J

    move-result-wide v6

    sget-wide v8, Landroid/webkit/CacheManager;->CACHE_THRESHOLD:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 549
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    sget-wide v7, Landroid/webkit/CacheManager;->CACHE_TRIM_AMOUNT:J

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebViewDatabase;->trimCache(J)Ljava/util/List;

    move-result-object v3

    .line 550
    .local v3, pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 551
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 552
    new-instance v0, Ljava/io/File;

    sget-object v7, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v0, v7, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 553
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 554
    const-string v6, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delete failed."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 558
    .end local v0           #f:Ljava/io/File;
    :cond_1
    sget-object v6, Landroid/webkit/CacheManager;->mDataBase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v6}, Landroid/webkit/WebViewDatabase;->getAllCacheFileNames()Ljava/util/List;

    move-result-object v1

    .line 559
    .local v1, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_3

    .line 578
    .end local v1           #fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #i:I
    .end local v3           #pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #size:I
    :cond_2
    return-void

    .line 560
    .restart local v1       #fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #i:I
    .restart local v3       #pathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4       #size:I
    :cond_3
    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    new-instance v7, Landroid/webkit/CacheManager$2;

    invoke-direct {v7, v1}, Landroid/webkit/CacheManager$2;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 569
    .local v5, toDelete:[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 570
    array-length v4, v5

    .line 571
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    .line 572
    new-instance v0, Ljava/io/File;

    sget-object v6, Landroid/webkit/CacheManager;->mBaseDir:Ljava/io/File;

    aget-object v7, v5, v2

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 573
    .restart local v0       #f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_4

    .line 574
    const-string v6, "cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delete failed."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
