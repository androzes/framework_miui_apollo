.class Lcom/android/internal/location/GpsLocationProvider$GpsConfig;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsConfig"
.end annotation


# static fields
.field private static final SEC_PROPERTIES_DIR:Ljava/lang/String; = "/data/gps"

.field private static final SEC_PROPERTIES_FILE:Ljava/lang/String; = "/data/gps/secgps.conf"


# instance fields
.field private final OPERATION_MODE_MSASSISTED:I

.field private final OPERATION_MODE_MSBASED:I

.field private final OPERATION_MODE_STANDALONE:I

.field public isSslEnabled:Z

.field public isXtraEnabled:Z

.field public mAccuracy:I

.field public mHslpAddress:Ljava/lang/String;

.field public mHslpPort:I

.field public mOperationMode:Ljava/lang/String;

.field mSecProperties:Ljava/util/Properties;

.field public mServerOption:I

.field public mSessionTimeout:I

.field public mSslCertType:I

.field public tempAddress:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 1
    .parameter

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2278
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->OPERATION_MODE_STANDALONE:I

    .line 2279
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->OPERATION_MODE_MSBASED:I

    .line 2280
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->OPERATION_MODE_MSASSISTED:I

    .line 2287
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    .line 2302
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    .line 2305
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->load()V

    .line 2306
    return-void
.end method

.method private load()V
    .locals 24

    .prologue
    .line 2310
    const/4 v7, 0x0

    .line 2315
    .local v7, fsuccess:Z
    :try_start_0
    new-instance v20, Ljava/io/File;

    const-string v21, "/data/gps"

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    move-result v4

    .line 2317
    .local v4, dirsuccess:Z
    if-eqz v4, :cond_e

    .line 2319
    const-string v20, "GpsLocationProvider"

    const-string v21, "Directory: /data/gps created"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    const-string v20, "/data/gps"

    const/16 v21, 0x1ff

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v20 .. v23}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2323
    new-instance v6, Ljava/io/File;

    const-string v20, "/data/gps/secgps.conf"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2325
    .local v6, file:Ljava/io/File;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_0

    .line 2327
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v7

    .line 2329
    if-eqz v7, :cond_d

    .line 2330
    const-string v20, "GpsLocationProvider"

    const-string v21, "secgpsconf.c is created"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :goto_0
    const-string v20, "/data/gps/secgps.conf"

    const/16 v21, 0x1c4

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-static/range {v20 .. v23}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2339
    :cond_0
    :goto_1
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2340
    .local v15, stream:Ljava/io/FileInputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 2341
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 2343
    if-eqz v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->setDefaultParameters()V

    .line 2345
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SUPL_HOST"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mHslpAddress:Ljava/lang/String;

    .line 2346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SUPL_PORT"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2347
    .local v10, portString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mHslpAddress:Ljava/lang/String;

    move-object/from16 v20, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v20, :cond_2

    if-eqz v10, :cond_2

    .line 2349
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mHslpPort:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2356
    :cond_2
    :goto_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SERVER_MODE"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2360
    .local v11, serverTypeString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "ADDRESS_MODE"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2362
    .local v3, addressTypeString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SSL"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2363
    .local v13, sslString:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 2366
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SSL_TYPE"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2367
    .local v14, ssltypeString:Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 2370
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "GPS_LOGGING"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2371
    .local v18, usepctoolString:Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 2375
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "OPERATION_TEST_MODE"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2376
    .local v16, testmodeString:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 2380
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "OPERATION_MODE"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2381
    .local v8, modeString:Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 2382
    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mOperationMode:Ljava/lang/String;

    .line 2386
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "TIMEOUT"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2387
    .local v17, timeoutString:Ljava/lang/String;
    if-eqz v17, :cond_8

    .line 2390
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "ACCURACY"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2391
    .local v2, accuracyString:Ljava/lang/String;
    if-eqz v2, :cond_9

    .line 2394
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "SERVER_OPTION"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2395
    .local v12, serveroptionString:Ljava/lang/String;
    if-eqz v12, :cond_a

    .line 2399
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "ENABLE_XTRA"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2400
    .local v19, xtraString:Ljava/lang/String;
    if-eqz v19, :cond_b

    .line 2404
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    move-object/from16 v20, v0

    const-string v21, "ENABLE_NMEA"

    invoke-virtual/range {v20 .. v21}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2405
    .local v9, nmeaString:Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 2412
    .end local v2           #accuracyString:Ljava/lang/String;
    .end local v3           #addressTypeString:Ljava/lang/String;
    .end local v4           #dirsuccess:Z
    .end local v6           #file:Ljava/io/File;
    .end local v8           #modeString:Ljava/lang/String;
    .end local v9           #nmeaString:Ljava/lang/String;
    .end local v10           #portString:Ljava/lang/String;
    .end local v11           #serverTypeString:Ljava/lang/String;
    .end local v12           #serveroptionString:Ljava/lang/String;
    .end local v13           #sslString:Ljava/lang/String;
    .end local v14           #ssltypeString:Ljava/lang/String;
    .end local v15           #stream:Ljava/io/FileInputStream;
    .end local v16           #testmodeString:Ljava/lang/String;
    .end local v17           #timeoutString:Ljava/lang/String;
    .end local v18           #usepctoolString:Ljava/lang/String;
    .end local v19           #xtraString:Ljava/lang/String;
    :cond_c
    :goto_3
    return-void

    .line 2332
    .restart local v4       #dirsuccess:Z
    .restart local v6       #file:Ljava/io/File;
    :cond_d
    const-string v20, "GpsLocationProvider"

    const-string v21, "secgpsconf.c is already exist"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2408
    .end local v4           #dirsuccess:Z
    .end local v6           #file:Ljava/io/File;
    :catch_0
    move-exception v20

    move-object/from16 v5, v20

    .line 2409
    .local v5, e:Ljava/io/IOException;
    const-string v20, "GpsLocationProvider"

    const-string v21, "Could not open GPS configuration file in load : /data/gps/secgps.conf"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->setDefaultParameters()V

    goto :goto_3

    .line 2337
    .end local v5           #e:Ljava/io/IOException;
    .restart local v4       #dirsuccess:Z
    :cond_e
    :try_start_3
    new-instance v6, Ljava/io/File;

    const-string v20, "/data/gps/secgps.conf"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v6       #file:Ljava/io/File;
    goto/16 :goto_1

    .line 2350
    .restart local v10       #portString:Ljava/lang/String;
    .restart local v15       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v20

    move-object/from16 v5, v20

    .line 2351
    .local v5, e:Ljava/lang/NumberFormatException;
    const-string v20, "GpsLocationProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "unable to parse SUPL_PORT: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

.method private save()V
    .locals 5

    .prologue
    .line 2464
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/gps/secgps.conf"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2465
    .local v1, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2467
    .local v2, stream:Ljava/io/FileOutputStream;
    iget-object v3, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v4, "Generated by GpsLocationProvider."

    invoke-virtual {v3, v2, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2468
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2473
    .end local v1           #file:Ljava/io/File;
    .end local v2           #stream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 2469
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2470
    .local v0, e:Ljava/io/IOException;
    const-string v3, "GpsLocationProvider"

    const-string v4, "Could not open GPS configuration file in save : /data/gps/secgps.conf"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDefaultParameters()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "0"

    const-string v7, "GpsLocationProvider"

    .line 2422
    const-string v5, "ro.sprc.agps.supl_host"

    const-string/jumbo v6, "supl.google.com"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2423
    .local v3, SUPL_HOST:Ljava/lang/String;
    const-string v5, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPL_HOST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    const-string v5, "ro.sprc.agps.supl_port"

    const-string v6, "7276"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2426
    .local v4, SUPL_PORT:Ljava/lang/String;
    const-string v5, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPL_PORT --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    const-string v5, "ro.sprc.agps.operation_mode"

    const-string v6, "MS BASED"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2429
    .local v0, OPERATION_MODE:Ljava/lang/String;
    const-string v5, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OPERATION_MODE --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    const-string v5, "ro.sprc.agps.ssl"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2432
    .local v1, SSL_ONOFF:Ljava/lang/String;
    const-string v5, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSL_ONOFF --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    const-string v5, "ro.sprc.agps.ssl_type"

    const-string v6, "0"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2435
    .local v2, SSL_TYPE:Ljava/lang/String;
    const-string v5, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SSL_TYPE --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "SERVER_MODE"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2439
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "ADDRESS_MODE"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2440
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "START_MODE"

    const-string v7, "WARM"

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2441
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2442
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2443
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "SSL"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2444
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "SSL_TYPE"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2445
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "GPS_LOGGING"

    const-string v7, "0"

    invoke-virtual {v5, v6, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2446
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "AGPS_MODE"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2447
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "POSITION_MODE"

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2448
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "SESSION_TYPE"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2449
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "NUM_OF_FIX"

    const v7, 0x3b9ac9ff

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2450
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "OPERATION_MODE"

    invoke-virtual {v5, v6, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2451
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "OPERATION_TEST_MODE"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2452
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "TIMEOUT"

    const/16 v7, 0xff

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2453
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "ACCURACY"

    const/16 v7, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2454
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "USE_DEFAULT"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2455
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "ENABLE_XTRA"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2456
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "ENABLE_NMEA"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2457
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    .line 2458
    return-void
.end method


# virtual methods
.method StartDNSLoopProcess(ILjava/lang/String;I)V
    .locals 4
    .parameter "address_type"
    .parameter "addr"
    .parameter "port"

    .prologue
    const/4 v3, 0x1

    .line 2637
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[old]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [new] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2640
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2641
    iput-object p2, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    .line 2643
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    invoke-static {v0, v3, v1, p3}, Lcom/android/internal/location/GpsLocationProvider;->access$8800(Lcom/android/internal/location/GpsLocationProvider;ILjava/lang/String;I)V

    .line 2648
    :cond_0
    :goto_0
    return-void

    .line 2645
    :cond_1
    iput-object p2, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->tempAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method setBasicParameters(Landroid/os/Bundle;)V
    .locals 13
    .parameter "extras"

    .prologue
    .line 2476
    const-string v10, "GpsLocationProvider"

    const-string v11, "setBasicParameters"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    if-nez p1, :cond_0

    .line 2533
    :goto_0
    return-void

    .line 2480
    :cond_0
    const-string v10, "server_type"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 2481
    .local v8, server_type:I
    if-ltz v8, :cond_1

    .line 2482
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "SERVER_MODE"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2485
    :cond_1
    const-string v10, "address_type"

    const/4 v11, 0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2486
    .local v1, address_type:I
    if-ltz v1, :cond_2

    .line 2487
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "ADDRESS_MODE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2489
    :cond_2
    const-string/jumbo v10, "start_mode"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2490
    .local v5, mode:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 2491
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "START_MODE"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2494
    :cond_3
    const-string v10, "hslp_addr"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2495
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 2496
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "SUPL_HOST"

    invoke-virtual {v10, v11, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2499
    :cond_4
    const-string v10, "hslp_port"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2500
    .local v6, port:I
    if-lez v6, :cond_5

    .line 2501
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "SUPL_PORT"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2505
    :cond_5
    const-string/jumbo v10, "ssl"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 2506
    .local v9, ssl:Z
    if-eqz v9, :cond_a

    .line 2507
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "SSL"

    const-string v12, "0"

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2512
    :goto_1
    const-string/jumbo v10, "ssl_type"

    const/4 v11, -0x1

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2513
    .local v3, cert:I
    if-ltz v3, :cond_6

    .line 2514
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "SSL_TYPE"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2517
    :cond_6
    const-string v10, "position_mode"

    const/4 v11, 0x7

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 2518
    .local v7, position_mode:I
    if-lez v7, :cond_7

    .line 2519
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "POSITION_MODE"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2521
    :cond_7
    const-string v10, "gpslogging"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2522
    .local v4, gpslogging:I
    if-ltz v4, :cond_8

    .line 2523
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "GPS_LOGGING"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2526
    :cond_8
    const-string v10, "agps_mode"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2527
    .local v2, agpsMode:I
    if-ltz v2, :cond_9

    .line 2528
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "AGPS_MODE"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2531
    :cond_9
    invoke-virtual {p0, v1, v0, v6}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->StartDNSLoopProcess(ILjava/lang/String;I)V

    .line 2532
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    goto/16 :goto_0

    .line 2509
    .end local v2           #agpsMode:I
    .end local v3           #cert:I
    .end local v4           #gpslogging:I
    .end local v7           #position_mode:I
    :cond_a
    iget-object v10, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v11, "SSL"

    const-string v12, "1"

    invoke-virtual {v10, v11, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1
.end method

.method setCscParameters(Landroid/os/Bundle;)V
    .locals 9
    .parameter "extras"

    .prologue
    const/4 v8, -0x1

    .line 2580
    const-string v5, "GpsLocationProvider"

    const-string v6, "setCscParameters"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    if-nez p1, :cond_0

    .line 2612
    :goto_0
    return-void

    .line 2585
    :cond_0
    const-string v5, "hslp_addr"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2586
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2587
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2590
    :cond_1
    const-string v5, "hslp_port"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2591
    .local v4, port:I
    if-lez v4, :cond_2

    .line 2592
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "SUPL_PORT"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2595
    :cond_2
    const-string/jumbo v5, "ssl_type"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2596
    .local v1, cert:I
    if-ltz v1, :cond_3

    .line 2597
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "SSL_TYPE"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2600
    :cond_3
    const-string v5, "operation_mode"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2601
    .local v3, operation:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 2602
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "OPERATION_MODE"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2605
    :cond_4
    const-string v5, "enable_xtra"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2606
    .local v2, enable_xtra:Z
    iget-object v5, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v6, "ENABLE_XTRA"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2608
    const-string v5, "STANDALONE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2609
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v0, v4}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->StartDNSLoopProcess(ILjava/lang/String;I)V

    .line 2611
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    goto :goto_0
.end method

.method setFixParameters(Landroid/os/Bundle;)V
    .locals 13
    .parameter "extras"

    .prologue
    const/4 v11, -0x1

    const-string v12, "GpsLocationProvider"

    .line 2537
    const-string v8, "GpsLocationProvider"

    const-string v8, "setFixParameters"

    invoke-static {v12, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    if-nez p1, :cond_0

    .line 2577
    :goto_0
    return-void

    .line 2541
    :cond_0
    const-string v8, "session_type"

    const/4 v9, 0x2

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 2542
    .local v6, type:I
    if-ltz v6, :cond_1

    .line 2543
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "SESSION_TYPE"

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2546
    :cond_1
    const-string v8, "operation_mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2547
    .local v1, mode:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 2548
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "OPERATION_MODE"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2551
    :cond_2
    const-string v8, "num_of_fixes"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 2552
    .local v2, num_fix:I
    const-string v8, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[num_fix]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    if-le v2, v11, :cond_3

    .line 2555
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "NUM_OF_FIX"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2558
    :cond_3
    const-string/jumbo v8, "time_btw_fixes"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 2559
    .local v4, time_btw_fix:I
    if-le v4, v11, :cond_4

    .line 2560
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "TIME_BTW_FIX"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2562
    :cond_4
    const-string v8, "operation_test_mode"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2563
    .local v3, test_mode:I
    if-ltz v3, :cond_5

    .line 2564
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "OPERATION_TEST_MODE"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2567
    :cond_5
    const-string/jumbo v8, "timeout"

    const/16 v9, 0x3e8

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2568
    .local v5, timeout:I
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "TIMEOUT"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2570
    const-string v8, "accuracy"

    const/16 v9, 0x32

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2571
    .local v0, accuracy:I
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "ACCURACY"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2573
    const-string/jumbo v8, "use_default"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2574
    .local v7, use_default:Z
    iget-object v8, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v9, "USE_DEFAULT"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2576
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    goto/16 :goto_0
.end method

.method setNmea(Landroid/os/Bundle;)V
    .locals 4
    .parameter "extras"

    .prologue
    .line 2628
    if-nez p1, :cond_0

    .line 2635
    :goto_0
    return-void

    .line 2631
    :cond_0
    const-string v1, "enable_nmea"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2632
    .local v0, enable_nmea:Z
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v2, "ENABLE_NMEA"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2634
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    goto :goto_0
.end method

.method setXtra(Landroid/os/Bundle;)V
    .locals 4
    .parameter "extras"

    .prologue
    .line 2615
    if-nez p1, :cond_0

    .line 2626
    :goto_0
    return-void

    .line 2618
    :cond_0
    const-string v1, "enable_xtra"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2619
    .local v0, enable_xtra:Z
    iget-object v1, p0, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->mSecProperties:Ljava/util/Properties;

    const-string v2, "ENABLE_XTRA"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 2621
    const-string/jumbo v1, "trigger_xtra_download"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2625
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/location/GpsLocationProvider$GpsConfig;->save()V

    goto :goto_0
.end method
