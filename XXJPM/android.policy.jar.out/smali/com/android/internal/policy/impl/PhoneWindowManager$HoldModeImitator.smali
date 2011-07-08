.class Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoldModeImitator"
.end annotation


# instance fields
.field final ID_ALLSHARE_ACTIVITY:I

.field final ID_CAMERA_ACTIVITY:I

.field final ID_VIDEO_ACTIVITY:I

.field mModeHolder:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter

    .prologue
    .line 2380
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2374
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_CAMERA_ACTIVITY:I

    .line 2375
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_VIDEO_ACTIVITY:I

    .line 2376
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_ALLSHARE_ACTIVITY:I

    .line 2378
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    .line 2382
    return-void
.end method

.method private getReverse(I)Z
    .locals 2
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 2385
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public endOfDetecting()V
    .locals 1

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2453
    return-void
.end method

.method public isHomeNeglecting()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2417
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2418
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 2419
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    .line 2448
    :goto_0
    return v5

    .line 2423
    :cond_0
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2424
    .local v4, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2425
    .local v3, pkgName:Ljava/lang/String;
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2426
    .local v1, className:Ljava/lang/String;
    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2427
    const-string v5, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.sec.android.app.camera.Camcorder"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2428
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    goto :goto_0

    .line 2430
    :cond_2
    const-string v5, "com.sec.android.app.videoplayer"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2431
    const-string v5, "com.sec.android.app.videoplayer.activity.MoviePlayer"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2432
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    goto :goto_0

    .line 2434
    :cond_3
    const-string v5, "com.sec.android.app.dlna"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2435
    const-string v5, "com.samsung.dmp.layout.DMPControlActivity"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.samsung.dmp.layout.DMPVideoActivity"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2436
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    goto :goto_0

    .line 2438
    :cond_5
    const-string v5, "com.sec.android.app.factorytest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2439
    const-string v5, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v5, v8

    .line 2440
    goto :goto_0

    .line 2442
    :cond_6
    const-string v5, "com.sec.android.app.lcdtest"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2443
    const-string v5, "com.sec.android.app.lcdtest.button_subkey"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "com.sec.android.app.lcdtest.button_touch"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "com.sec.android.app.lcdtest.button_dimming"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v5, v8

    .line 2444
    goto/16 :goto_0

    :cond_8
    move v5, v7

    .line 2448
    goto/16 :goto_0
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 7
    .parameter "pkg"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2390
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-eqz v2, :cond_1

    .line 2391
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2414
    :cond_0
    :goto_0
    return-void

    .line 2393
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v2, :cond_2

    .line 2394
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions;->isGlobalActionRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2396
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-nez v2, :cond_0

    .line 2401
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 2402
    .local v1, sm:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2404
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "menuOpened"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2405
    .local v0, menuStatus:I
    if-eq v0, v5, :cond_0

    .line 2407
    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2408
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 2409
    :cond_3
    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2410
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 2411
    :cond_4
    const-string v2, "com.sec.android.app.dlna"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2412
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method public setHomeNeglectingMode(Ljava/lang/String;Z)V
    .locals 2
    .parameter "pkg"
    .parameter "value"

    .prologue
    .line 2456
    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2457
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2463
    :cond_0
    :goto_0
    return-void

    .line 2458
    :cond_1
    const-string v0, "com.sec.android.app.videoplayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2459
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 2460
    :cond_2
    const-string v0, "com.sec.android.app.dlna"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method
