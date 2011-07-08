package com.android.launcher2; class LauncherModel {/*

.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$Loader;,
        Lcom/android/launcher2/LauncherModel$DataCarriedRunnable;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field private static sDelayedUpdateBuffer:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllAppsList:Lcom/android/launcher2/AllAppsList;

.field private final mAllAppsListLock:Ljava/lang/Object;

.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mHandler:Lcom/android/launcher2/DeferredHandler;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mLoader:Lcom/android/launcher2/LauncherModel$Loader;

.field private final mLock:Ljava/lang/Object;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/IconCache;)V
    .locals 1
    .parameter "app"
    .parameter "iconCache"

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    #p0=(Reference);
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/android/launcher2/DeferredHandler;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 76
    new-instance v0, Lcom/android/launcher2/LauncherModel$Loader;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherModel$Loader;-><init>(Lcom/android/launcher2/LauncherModel;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    .line 84
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Lcom/android/launcher2/AllAppsList;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/launcher2/AllAppsList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    .line 104
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 105
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 107
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1000(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 68
    invoke-static/range {p0 .. p5}, Lcom/android/launcher2/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$Loader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$602(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$900(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z
    .locals 10
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 253
    const/4 v9, 0x0

    #v9=(Null);
    move-object v0, p0

    #v0=(Reference);
    move-object v1, p1

    #v1=(Reference);
    move-wide v2, p2

    #v2=(LongLo);v3=(LongHi);
    move-wide v4, p4

    #v4=(LongLo);v5=(LongHi);
    move/from16 v6, p6

    #v6=(Integer);
    move/from16 v7, p7

    #v7=(Integer);
    move v8, v9

    #v8=(Null);
    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJIIZ)Z

    move-result p0

    .end local p0
    #p0=(Boolean);
    return p0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJIIZ)Z
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "reload"

    .prologue
    .line 261
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 262
    iput-wide p4, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 263
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 264
    iput p7, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 266
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    #p2=(UninitRef);
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local p2, values:Landroid/content/ContentValues;
    #p2=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    .local v0, cr:Landroid/content/ContentResolver;
    #v0=(Reference);
    invoke-virtual {p1, p2}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 272
    const-string p0, "Launcher.Model"

    .end local p0
    const-string p3, "Adding item to database (%d, %d) of screen %d"

    #p3=(Reference);
    const/4 p4, 0x3

    #p4=(PosByte);
    new-array p4, p4, [Ljava/lang/Object;

    .end local p4
    #p4=(Reference);
    const/4 p5, 0x0

    #p5=(Null);
    iget p6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .end local p6
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    #p6=(Reference);
    aput-object p6, p4, p5

    const/4 p5, 0x1

    #p5=(One);
    iget p6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    #p6=(Integer);
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    #p6=(Reference);
    aput-object p6, p4, p5

    const/4 p5, 0x2

    #p5=(PosByte);
    iget-wide p6, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    #p6=(LongLo);p7=(LongHi);
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    #p6=(Reference);
    aput-object p6, p4, p5

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    sget-object p0, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 278
    .local p0, result:Landroid/net/Uri;
    if-eqz p0, :cond_2

    .line 279
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .end local p0           #result:Landroid/net/Uri;
    const/4 p2, 0x1

    #p2=(One);
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local p2           #values:Landroid/content/ContentValues;
    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    #p0=(Integer);
    int-to-long p2, p0

    #p2=(LongLo);p3=(LongHi);
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    .line 280
    if-eqz p8, :cond_1

    .line 281
    iget-wide p2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    invoke-static {p2, p3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    sget-object v2, Lcom/android/launcher2/ItemQuery;->COLUMNS:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 282
    .local p0, c:Landroid/database/Cursor;
    #p0=(Reference);
    if-eqz p0, :cond_1

    .line 284
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    #p2=(Boolean);
    if-eqz p2, :cond_0

    .line 285
    invoke-virtual {p1, p0}, Lcom/android/launcher2/ItemInfo;->load(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 292
    .end local p0           #c:Landroid/database/Cursor;
    :cond_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);p0=(Conflicted);p2=(Conflicted);
    const/4 p0, 0x1

    .line 295
    :goto_0
    #p0=(Boolean);p3=(Conflicted);
    return p0

    .line 288
    .restart local p0       #c:Landroid/database/Cursor;
    :catchall_0
    #v1=(Reference);v2=(Reference);v3=(Null);v4=(Null);v5=(Null);p0=(Reference);p3=(LongHi);
    move-exception p1

    .end local p1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    .line 295
    .local p0, result:Landroid/net/Uri;
    .restart local p1
    .restart local p2       #values:Landroid/content/ContentValues;
    :cond_2
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);p2=(Reference);p3=(Reference);
    const/4 p0, 0x0

    #p0=(Null);
    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z
    .locals 4
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 121
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_0

    .line 123
    invoke-static/range {p0 .. p7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    move-result v0

    .line 126
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Byte);
    invoke-static/range {p0 .. p7}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z

    move-result v0

    #v0=(Boolean);
    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z
    .locals 10
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    #v9=(One);
    const/4 v8, 0x0

    .line 361
    #v8=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 364
    .local v0, cr:Landroid/content/ContentResolver;
    #v0=(Reference);
    const-string v2, "Launcher.Model"

    #v2=(Reference);
    const-string v3, "Deleting item from database (%d, %d) of screen %d"

    #v3=(Reference);
    const/4 v4, 0x3

    #v4=(PosByte);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v8

    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v4, v9

    const/4 v5, 0x2

    #v5=(PosByte);
    iget-wide v6, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    #v6=(Reference);
    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_0
    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v9

    .line 371
    :goto_0
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Reference);
    return v2

    .line 368
    :catch_0
    #v1=(Uninit);v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    move-object v1, v2

    .local v1, e:Landroid/database/sqlite/SQLiteException;
    #v1=(Reference);
    move v2, v8

    .line 369
    #v2=(Null);
    goto :goto_0
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)Z
    .locals 5
    .parameter "context"
    .parameter "info"

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 380
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    #v0=(Reference);
    iget-wide v2, p1, Lcom/android/launcher2/UserFolderInfo;->id:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    const/4 v2, 0x1

    :goto_0
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v2

    .line 381
    :catch_0
    #v1=(Uninit);v2=(Conflicted);
    move-exception v2

    #v2=(Reference);
    move-object v1, v2

    .line 382
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method private static findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1484
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1485
    .local v0, folderInfo:Lcom/android/launcher2/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/LiveFolderInfo;

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 1487
    :cond_0
    #v1=(Conflicted);
    new-instance v0, Lcom/android/launcher2/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/launcher2/LiveFolderInfo;-><init>()V

    .line 1488
    .restart local v0       #folderInfo:Lcom/android/launcher2/FolderInfo;
    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    :cond_1
    #v1=(Conflicted);
    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    return-object v0
.end method

.method private static findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1469
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1470
    .local v0, folderInfo:Lcom/android/launcher2/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/UserFolderInfo;

    #v1=(Boolean);
    if-nez v1, :cond_1

    .line 1472
    :cond_0
    #v1=(Conflicted);
    new-instance v0, Lcom/android/launcher2/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/launcher2/UserFolderInfo;-><init>()V

    .line 1473
    .restart local v0       #folderInfo:Lcom/android/launcher2/FolderInfo;
    #v0=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    :cond_1
    #v1=(Conflicted);
    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    return-object v0
.end method

.method static flashDelayedUpdateItem(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 310
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    #v2=(Reference);
    if-nez v2, :cond_0

    .line 311
    const/4 v2, 0x0

    .line 317
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Boolean);
    return v2

    .line 313
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Reference);
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    #v0=(Reference);v1=(Conflicted);v2=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/ItemInfo;

    .line 314
    .local v1, info:Lcom/android/launcher2/ItemInfo;
    invoke-static {p0, v1}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    goto :goto_1

    .line 316
    .end local v1           #info:Lcom/android/launcher2/ItemInfo;
    :cond_1
    #v1=(Conflicted);
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 317
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0
.end method

.method static getAddItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 2
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 237
    iput-wide p1, p0, Lcom/android/launcher2/ItemInfo;->container:J

    .line 238
    iput-wide p3, p0, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 239
    iput p5, p0, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 240
    iput p6, p0, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 242
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    invoke-virtual {p0, v0}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 245
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method static getMoveItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 3
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 169
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 170
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "container"

    #v1=(Reference);
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 171
    const-string v1, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v1, "cellY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v1, "spanX"

    iget v2, p0, Lcom/android/launcher2/ItemInfo;->spanX:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v1, "spanY"

    iget v2, p0, Lcom/android/launcher2/ItemInfo;->spanY:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v1, "screen"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    iget-wide v1, p0, Lcom/android/launcher2/ItemInfo;->id:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v1

    #v1=(Reference);
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method static getOperationForDraggingItem(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;
    .locals 4
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_0

    .line 134
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getAddItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 137
    :goto_0
    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(Byte);
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->getMoveItemOperation(Lcom/android/launcher2/ItemInfo;JJII)Landroid/content/ContentProviderOperation;

    move-result-object v0

    #v0=(Reference);
    goto :goto_0
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    .locals 14
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1286
    const/4 v4, 0x0

    .line 1287
    .local v4, icon:Landroid/graphics/Bitmap;
    #v4=(Null);
    new-instance v7, Lcom/android/launcher2/ShortcutInfo;

    #v7=(UninitRef);
    invoke-direct {v7}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1288
    .local v7, info:Lcom/android/launcher2/ShortcutInfo;
    #v7=(Reference);
    const/4 v12, 0x1

    #v12=(One);
    iput v12, v7, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    .line 1292
    move-object v0, p1

    #v0=(Reference);
    move/from16 v1, p7

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    #v12=(Reference);
    iput-object v12, v7, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1294
    move-object v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1295
    .local v5, iconType:I
    #v5=(Integer);
    packed-switch v5, :pswitch_data_0

    .line 1324
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Reference);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1325
    const/4 v12, 0x1

    #v12=(One);
    iput-boolean v12, v7, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1326
    const/4 v12, 0x0

    #v12=(Null);
    iput-boolean v12, v7, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1330
    :cond_1
    :goto_0
    #v12=(Conflicted);
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    #v3=(UninitRef);
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    #v12=(Reference);
    invoke-direct {v3, v12, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1331
    .local v3, drawable:Landroid/graphics/drawable/BitmapDrawable;
    #v3=(Reference);
    iget-boolean v12, v7, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    #v12=(Boolean);
    if-nez v12, :cond_2

    .line 1332
    invoke-static {v3}, Landroid/app/IconCustomizer;->generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v12

    #v12=(Reference);
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1334
    :cond_2
    #v12=(Conflicted);
    invoke-virtual {v7, v4}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1335
    return-object v7

    .line 1297
    .end local v3           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :pswitch_0
    #v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Null);v6=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Reference);v13=(Uninit);
    move-object v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1298
    .local v9, packageName:Ljava/lang/String;
    #v9=(Reference);
    move-object v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1299
    .local v10, resourceName:Ljava/lang/String;
    #v10=(Reference);
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1300
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    #v8=(Reference);
    const/4 v12, 0x0

    #v12=(Null);
    iput-boolean v12, v7, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1303
    :try_start_0
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 1304
    .local v11, resources:Landroid/content/res/Resources;
    #v11=(Reference);
    if-eqz v11, :cond_3

    .line 1305
    const/4 v12, 0x0

    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1306
    .local v6, id:I
    #v6=(Integer);
    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    #v12=(Reference);
    move-object v0, v12

    move-object/from16 v1, p2

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1312
    .end local v6           #id:I
    .end local v11           #resources:Landroid/content/res/Resources;
    :cond_3
    :goto_1
    #v1=(Conflicted);v4=(Reference);v6=(Conflicted);v11=(Conflicted);v13=(Conflicted);
    if-nez v4, :cond_1

    .line 1317
    .end local v8           #packageManager:Landroid/content/pm/PackageManager;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #resourceName:Ljava/lang/String;
    :pswitch_1
    #v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-object v0, p0

    move-object v1, p1

    #v1=(Reference);
    move/from16 v2, p6

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1318
    if-eqz v4, :cond_0

    .line 1319
    const/4 v12, 0x1

    #v12=(One);
    iput-boolean v12, v7, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    goto :goto_0

    .line 1308
    .restart local v8       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v9       #packageName:Ljava/lang/String;
    .restart local v10       #resourceName:Ljava/lang/String;
    :catch_0
    #v1=(Conflicted);v2=(Uninit);v4=(Null);v8=(Reference);v9=(Reference);v10=(Reference);v12=(Reference);
    move-exception v12

    goto :goto_1

    .line 1295
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);p5=(Unknown);p6=(Unknown);p7=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher2/ShortcutInfo;
    .locals 18
    .parameter "context"
    .parameter "data"

    .prologue
    .line 1358
    const-string v15, "android.intent.extra.shortcut.INTENT"

    #v15=(Reference);
    move-object/from16 v0, p2

    #v0=(Reference);
    move-object v1, v15

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    #v11=(Reference);
    check-cast v11, Landroid/content/Intent;

    .line 1359
    .local v11, intent:Landroid/content/Intent;
    const-string v15, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1360
    .local v12, name:Ljava/lang/String;
    #v12=(Reference);
    const-string v15, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1362
    .local v2, bitmap:Landroid/os/Parcelable;
    #v2=(Reference);
    const/4 v7, 0x0

    .line 1363
    .local v7, icon:Landroid/graphics/Bitmap;
    #v7=(Null);
    const/4 v3, 0x0

    .line 1364
    .local v3, customIcon:Z
    #v3=(Null);
    const/4 v8, 0x0

    .line 1366
    .local v8, iconResource:Landroid/content/Intent$ShortcutIconResource;
    #v8=(Null);
    if-eqz v2, :cond_2

    instance-of v15, v2, Landroid/graphics/Bitmap;

    #v15=(Boolean);
    if-eqz v15, :cond_2

    .line 1367
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    #v4=(UninitRef);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    #v15=(Reference);
    check-cast v2, Landroid/graphics/Bitmap;

    .end local v2           #bitmap:Landroid/os/Parcelable;
    invoke-direct {v4, v15, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1368
    .local v4, drawable:Landroid/graphics/drawable/BitmapDrawable;
    #v4=(Reference);
    invoke-static {v4}, Landroid/app/IconCustomizer;->generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1369
    #v7=(Reference);
    const/4 v3, 0x1

    .line 1386
    .end local v4           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    #v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Reference);v9=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    new-instance v10, Lcom/android/launcher2/ShortcutInfo;

    #v10=(UninitRef);
    invoke-direct {v10}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1388
    .local v10, info:Lcom/android/launcher2/ShortcutInfo;
    #v10=(Reference);
    if-nez v7, :cond_1

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1390
    const/4 v15, 0x1

    #v15=(One);
    iput-boolean v15, v10, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1392
    :cond_1
    #v15=(Conflicted);
    invoke-virtual {v10, v7}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1394
    iput-object v12, v10, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1395
    iput-object v11, v10, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1396
    iput-boolean v3, v10, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1397
    iput-object v8, v10, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1399
    return-object v10

    .line 1371
    .end local v10           #info:Lcom/android/launcher2/ShortcutInfo;
    .restart local v2       #bitmap:Landroid/os/Parcelable;
    :cond_2
    #v3=(Null);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Null);v8=(Null);v9=(Uninit);v10=(Uninit);v13=(Uninit);v14=(Uninit);v16=(Uninit);v17=(Uninit);
    const-string v15, "android.intent.extra.shortcut.ICON_RESOURCE"

    #v15=(Reference);
    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 1372
    .local v6, extra:Landroid/os/Parcelable;
    #v6=(Reference);
    if-eqz v6, :cond_0

    instance-of v15, v6, Landroid/content/Intent$ShortcutIconResource;

    #v15=(Boolean);
    if-eqz v15, :cond_0

    .line 1374
    :try_start_0
    move-object v0, v6

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v8, v0

    .line 1375
    #v8=(Reference);
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1376
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    #v13=(Reference);
    iget-object v15, v8, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    #v15=(Reference);
    invoke-virtual {v13, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 1378
    .local v14, resources:Landroid/content/res/Resources;
    #v14=(Reference);
    iget-object v15, v8, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/16 v16, 0x0

    #v16=(Null);
    const/16 v17, 0x0

    #v17=(Null);
    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1379
    .local v9, id:I
    #v9=(Integer);
    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-static {v15}, Landroid/app/IconCustomizer;->generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    #v7=(Reference);
    goto :goto_0

    .line 1380
    .end local v9           #id:I
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #resources:Landroid/content/res/Resources;
    :catch_0
    #v7=(Null);v9=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);
    move-exception v15

    #v15=(Reference);
    move-object v5, v15

    .line 1381
    .local v5, e:Ljava/lang/Exception;
    #v5=(Reference);
    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    #v16=(UninitRef);
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #v16=(Reference);
    const-string v17, "Could not load shortcut icon: "

    #v17=(Reference);
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V
    .locals 10
    .parameter "context"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    const v9, 0x7f020067

    .line 1405
    #v9=(Integer);
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1406
    .local v1, iconType:I
    #v1=(Integer);
    packed-switch v1, :pswitch_data_0

    .line 1426
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 1430
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    return-void

    .line 1408
    :pswitch_0
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1409
    .local v4, packageName:Ljava/lang/String;
    #v4=(Reference);
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1410
    .local v5, resourceName:Ljava/lang/String;
    #v5=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1412
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    #v3=(Reference);
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1413
    .local v6, resources:Landroid/content/res/Resources;
    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1414
    .local v2, id:I
    #v2=(Integer);
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    #v7=(Reference);
    invoke-static {v7, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    .end local v2           #id:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :goto_1
    #v0=(Conflicted);v2=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    #v7=(UninitRef);
    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    #v7=(Reference);
    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1422
    iget-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1423
    iget-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_0

    .line 1416
    :catch_0
    #v0=(Uninit);v7=(Conflicted);
    move-exception v7

    #v7=(Reference);
    move-object v0, v7

    .line 1417
    .local v0, e:Ljava/lang/Exception;
    #v0=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJII)Z
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screenId"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v4, 0x0

    .line 146
    #v4=(Null);
    new-instance v1, Landroid/content/ContentValues;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 147
    .local v1, values:Landroid/content/ContentValues;
    #v1=(Reference);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 149
    .local v0, cr:Landroid/content/ContentResolver;
    #v0=(Reference);
    const-string v2, "container"

    #v2=(Reference);
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 150
    const-string v2, "cellX"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v2, "cellY"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v2, "spanX"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v2, "spanY"

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    #v3=(Integer);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v2, "screen"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    if-lez v2, :cond_0

    .line 157
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 158
    iput-wide p4, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    .line 159
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 160
    iput p7, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 161
    const/4 v2, 0x1

    .line 164
    :goto_0
    #v2=(Boolean);
    return v2

    :cond_0
    #v2=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)Z
    .locals 6
    .parameter "context"
    .parameter "id"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 347
    #v5=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 349
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    #v0=(Reference);
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v0, v2, p3, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    #v2=(Integer);
    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 351
    :goto_0
    #v1=(Conflicted);v2=(Boolean);v3=(Conflicted);v4=(Conflicted);
    return v2

    :cond_0
    #v1=(Uninit);v2=(Integer);v3=(Null);v4=(Null);
    move v2, v5

    .line 349
    #v2=(Null);
    goto :goto_0

    .line 350
    :catch_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v2

    #v2=(Reference);
    move-object v1, v2

    .local v1, e:Landroid/database/sqlite/SQLiteException;
    #v1=(Reference);
    move v2, v5

    .line 351
    #v2=(Null);
    goto :goto_0
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z
    .locals 7
    .parameter "context"
    .parameter "item"

    .prologue
    .line 332
    new-instance v0, Landroid/content/ContentValues;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 334
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    invoke-virtual {p1, v0}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 336
    const-string v1, "Launcher.Model"

    #v1=(Reference);
    const-string v2, "Update item in database (%d, %d) of screen %d under container %d"

    #v2=(Reference);
    const/4 v3, 0x4

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    iget v5, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x2

    #v4=(PosByte);
    iget-wide v5, p1, Lcom/android/launcher2/ItemInfo;->screenId:J

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v5, p1, Lcom/android/launcher2/ItemInfo;->container:J

    #v5=(LongLo);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-wide v1, p1, Lcom/android/launcher2/ItemInfo;->id:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {p0, v1, v2, v0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;JLandroid/content/ContentValues;)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method

.method static updateItemInDatabaseDelayed(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z
    .locals 1
    .parameter "context"
    .parameter "item"

    .prologue
    .line 321
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/util/HashSet;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    .line 324
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDelayedUpdateBuffer:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 325
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher2/CellLayout$CellInfo;)Lcom/android/launcher2/ShortcutInfo;
    .locals 9
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    const/4 v8, 0x0

    .line 1348
    #v8=(Null);
    if-eqz p3, :cond_0

    iget-wide v2, p3, Lcom/android/launcher2/CellLayout$CellInfo;->screenId:J

    #v2=(LongLo);v3=(LongHi);
    move-wide v4, v2

    .line 1349
    .local v4, screenId:J
    :goto_0
    #v4=(LongLo);v5=(LongHi);
    if-eqz p3, :cond_1

    iget v0, p3, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    #v0=(Integer);
    move v6, v0

    .line 1350
    .local v6, cellX:I
    :goto_1
    #v0=(Conflicted);v6=(Integer);
    if-eqz p3, :cond_2

    iget v0, p3, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    #v0=(Integer);
    move v7, v0

    .line 1351
    .local v7, cellY:I
    :goto_2
    #v0=(Conflicted);v7=(Integer);
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 1352
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    #v1=(Reference);
    const-wide/16 v2, -0x64

    const/4 v8, 0x1

    #v8=(One);
    move-object v0, p1

    #v0=(Reference);
    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JJIIZ)Z

    .line 1354
    return-object v1

    .line 1348
    .end local v1           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v4           #screenId:J
    .end local v6           #cellX:I
    .end local v7           #cellY:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Null);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    move-wide v4, v2

    #v4=(LongLo);v5=(LongHi);
    goto :goto_0

    .restart local v4       #screenId:J
    :cond_1
    move v6, v8

    .line 1349
    #v6=(Null);
    goto :goto_1

    .restart local v6       #cellX:I
    :cond_2
    #v0=(Conflicted);v6=(Integer);
    move v7, v8

    .line 1350
    #v7=(Null);
    goto :goto_2
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1494
    const-string v0, "Launcher.Model"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "mCallbacks="

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader;->dumpState()V

    .line 1496
    return-void
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    #v0=(Reference);
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 1339
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1341
    .local v0, data:[B
    #v0=(Reference);
    const/4 v2, 0x0

    :try_start_0
    #v2=(Null);
    array-length v3, v0

    #v3=(Integer);
    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1343
    :goto_0
    #v1=(Conflicted);v2=(Reference);v3=(Conflicted);
    return-object v2

    .line 1342
    :catch_0
    #v1=(Uninit);v2=(Null);
    move-exception v2

    #v2=(Reference);
    move-object v1, v2

    .line 1343
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/ShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1229
    #v5=(Null);
    const/4 v1, 0x0

    .line 1230
    .local v1, icon:Landroid/graphics/Bitmap;
    #v1=(Null);
    new-instance v2, Lcom/android/launcher2/ShortcutInfo;

    #v2=(UninitRef);
    invoke-direct {v2}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1232
    .local v2, info:Lcom/android/launcher2/ShortcutInfo;
    #v2=(Reference);
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1233
    .local v0, componentName:Landroid/content/ComponentName;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 1234
    const/4 v4, 0x0

    .line 1276
    :goto_0
    #v1=(Reference);v3=(Conflicted);v4=(Reference);
    return-object v4

    .line 1244
    :cond_0
    #v1=(Null);v3=(Uninit);v4=(Uninit);
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1245
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    #v3=(Reference);
    if-eqz v3, :cond_1

    .line 1246
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    #v4=(Reference);
    invoke-virtual {v4, v0, v3}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1249
    :cond_1
    #v1=(Reference);v4=(Conflicted);
    if-nez v1, :cond_2

    .line 1250
    if-eqz p4, :cond_2

    .line 1251
    invoke-virtual {p0, p4, p5}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1255
    :cond_2
    if-nez v1, :cond_3

    .line 1256
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1257
    const/4 v4, 0x1

    #v4=(One);
    iput-boolean v4, v2, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1259
    :cond_3
    #v4=(Conflicted);
    invoke-virtual {v2, v1}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1262
    if-eqz v3, :cond_4

    .line 1263
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #v4=(Reference);
    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1266
    :cond_4
    #v4=(Conflicted);
    iget-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    #v4=(Reference);
    if-nez v4, :cond_5

    .line 1267
    if-eqz p4, :cond_5

    .line 1268
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1272
    :cond_5
    iget-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    .line 1273
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1275
    :cond_6
    iput v5, v2, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    move-object v4, v2

    .line 1276
    goto :goto_0
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    #v0=(Reference);
    monitor-enter v0

    .line 392
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    #v1=(UninitRef);
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 393
    monitor-exit v0

    .line 394
    return-void

    .line 393
    :catchall_0
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    #v10=(Reference);
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    const-string v10, "android.intent.action.PACKAGE_ADDED"

    const-string v12, "Launcher.Model"

    .line 410
    #v12=(Reference);
    iget-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 412
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v1, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    #v1=(Reference);
    new-instance v8, Ljava/util/ArrayList;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .local v8, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    #v8=(Reference);
    const-string v10, "Launcher.Model"

    new-instance v10, Ljava/lang/StringBuilder;

    #v10=(UninitRef);
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #v10=(Reference);
    const-string v11, "Got action "

    #v11=(Reference);
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    monitor-enter v11

    .line 418
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, action:Ljava/lang/String;
    #v0=(Reference);
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_0

    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    #v10=(Reference);
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-nez v10, :cond_0

    const-string v10, "android.intent.action.PACKAGE_ADDED"

    #v10=(Reference);
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_f

    .line 423
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, packageName:Ljava/lang/String;
    #v6=(Reference);
    const-string v10, "android.intent.extra.REPLACING"

    const/4 v12, 0x0

    #v12=(Null);
    invoke-virtual {p2, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 426
    .local v9, replacing:Z
    #v9=(Boolean);
    const-string v10, "com.android.stk"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_1

    .line 431
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {p0, p1, v10}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 432
    monitor-exit v11

    .line 523
    .end local v6           #packageName:Ljava/lang/String;
    .end local v9           #replacing:Z
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Reference);
    return-void

    .line 435
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v9       #replacing:Z
    :cond_1
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Reference);v7=(Uninit);v9=(Boolean);v10=(Boolean);v12=(Null);
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    #v10=(Reference);
    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->clearCustomizedIcons(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    :try_start_1
    invoke-static {p1, v6}, Lcom/android/launcher2/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 442
    if-eqz v6, :cond_2

    :try_start_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    #v10=(Integer);
    if-nez v10, :cond_3

    .line 444
    :cond_2
    #v10=(Conflicted);
    monitor-exit v11

    goto :goto_0

    .line 522
    .end local v0           #action:Ljava/lang/String;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v9           #replacing:Z
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v12=(Conflicted);
    move-exception v10

    #v10=(Reference);
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 438
    .restart local v0       #action:Ljava/lang/String;
    .restart local v6       #packageName:Ljava/lang/String;
    .restart local v9       #replacing:Z
    :catch_0
    #v0=(Reference);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Reference);v7=(Uninit);v9=(Boolean);v12=(Null);
    move-exception v3

    .line 439
    .local v3, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    #v3=(Reference);
    const-string v10, "Launcher.Model"

    const-string v12, "database didnot ready,ignore this change"

    #v12=(Reference);
    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    monitor-exit v11

    goto :goto_0

    .line 447
    .end local v3           #e:Landroid/database/sqlite/SQLiteException;
    :cond_3
    #v3=(Uninit);v10=(Integer);v12=(Null);
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    #v10=(Reference);
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_6

    .line 448
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    #v10=(Reference);
    invoke-virtual {v10, p1, v6}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    :cond_4
    :goto_1
    #v10=(Conflicted);
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    #v10=(Reference);
    iget-object v10, v10, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    #v10=(Integer);
    if-lez v10, :cond_5

    .line 464
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    #v10=(Reference);
    iget-object v10, v10, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 465
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v10, v10, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 467
    :cond_5
    #v10=(Conflicted);
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    #v10=(Reference);
    iget-object v10, v10, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    #v10=(Integer);
    if-lez v10, :cond_9

    .line 468
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    #v10=(Reference);
    iget-object v10, v10, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 469
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v10, v10, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 470
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    #v4=(Reference);v5=(Conflicted);v12=(Reference);
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    #v5=(Reference);
    check-cast v5, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 471
    .local v5, info:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    #v10=(Reference);
    iget-object v12, v5, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/android/launcher2/IconCache;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 449
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #info:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_6
    #v4=(Uninit);v5=(Uninit);v10=(Boolean);v12=(Null);
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    #v10=(Reference);
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_7

    .line 450
    if-nez v9, :cond_4

    .line 451
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    #v10=(Reference);
    invoke-virtual {v10, v6}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;)V

    goto :goto_1

    .line 455
    :cond_7
    #v10=(Boolean);
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    #v10=(Reference);
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_4

    .line 456
    if-nez v9, :cond_8

    .line 457
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    #v10=(Reference);
    invoke-virtual {v10, p1, v6}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :cond_8
    #v10=(Boolean);
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    #v10=(Reference);
    invoke-virtual {v10, p1, v6}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 475
    :cond_9
    #v4=(Conflicted);v5=(Conflicted);v10=(Integer);v12=(Reference);
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    #v10=(Reference);
    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v2, v10

    .line 476
    .local v2, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_3
    #v2=(Reference);
    if-nez v2, :cond_b

    .line 477
    const-string v10, "Launcher.Model"

    const-string v12, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    monitor-exit v11

    goto/16 :goto_0

    .line 475
    .end local v2           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_a
    #v2=(Uninit);
    const/4 v10, 0x0

    #v10=(Null);
    move-object v2, v10

    #v2=(Null);
    goto :goto_3

    .line 481
    .restart local v2       #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_b
    #v2=(Reference);v10=(Reference);
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    #v10=(Integer);
    if-lez v10, :cond_c

    .line 482
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    #v10=(Reference);
    new-instance v12, Lcom/android/launcher2/LauncherModel$1;

    #v12=(UninitRef);
    invoke-direct {v12, p0, v8, v2}, Lcom/android/launcher2/LauncherModel$1;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v12=(Reference);
    invoke-virtual {v10, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 490
    :cond_c
    #v10=(Conflicted);
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    #v10=(Integer);
    if-lez v10, :cond_d

    .line 491
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    #v10=(Reference);
    new-instance v12, Lcom/android/launcher2/LauncherModel$2;

    #v12=(UninitRef);
    invoke-direct {v12, p0, v1, v2}, Lcom/android/launcher2/LauncherModel$2;-><init>(Lcom/android/launcher2/LauncherModel;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v12=(Reference);
    invoke-virtual {v10, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 499
    :cond_d
    #v10=(Conflicted);
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    #v10=(Reference);
    new-instance v12, Lcom/android/launcher2/LauncherModel$3;

    #v12=(UninitRef);
    invoke-direct {v12, p0, v2}, Lcom/android/launcher2/LauncherModel$3;-><init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v12=(Reference);
    invoke-virtual {v10, v12}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 522
    .end local v2           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v9           #replacing:Z
    :cond_e
    :goto_4
    #v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    monitor-exit v11

    goto/16 :goto_0

    .line 506
    :cond_f
    #v2=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v9=(Uninit);v10=(Boolean);
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    #v10=(Reference);
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_12

    .line 507
    const-string v10, "android.intent.extra.changed_package_list"

    #v10=(Reference);
    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 509
    .local v7, packages:[Ljava/lang/String;
    #v7=(Reference);
    if-eqz v7, :cond_10

    array-length v10, v7

    #v10=(Integer);
    if-nez v10, :cond_11

    .line 510
    :cond_10
    #v10=(Conflicted);
    monitor-exit v11

    goto/16 :goto_0

    .line 512
    :cond_11
    #v10=(Integer);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {p0, p1, v10}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_4

    .line 513
    .end local v7           #packages:[Ljava/lang/String;
    :cond_12
    #v7=(Uninit);v10=(Boolean);
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    #v10=(Reference);
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_e

    .line 514
    const-string v10, "android.intent.extra.changed_package_list"

    #v10=(Reference);
    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 516
    .restart local v7       #packages:[Ljava/lang/String;
    #v7=(Reference);
    if-eqz v7, :cond_13

    array-length v10, v7

    #v10=(Integer);
    if-nez v10, :cond_14

    .line 517
    :cond_13
    #v10=(Conflicted);
    monitor-exit v11

    goto/16 :goto_0

    .line 519
    :cond_14
    #v10=(Integer);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {p0, p1, v10}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/LauncherModel$Loader;->startLoader(Landroid/content/Context;Z)V

    .line 398
    return-void
.end method

.method public stopLoader()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoader:Lcom/android/launcher2/LauncherModel$Loader;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$Loader;->stopLoader()V

    .line 402
    return-void
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)V
    .locals 8
    .parameter "context"
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    const/4 v7, 0x0

    .line 1439
    #v7=(Null);
    iget-boolean v5, p2, Lcom/android/launcher2/ShortcutInfo;->onExternalStorage:Z

    #v5=(Boolean);
    if-eqz v5, :cond_0

    iget-boolean v5, p2, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    if-nez v5, :cond_0

    iget-boolean v5, p2, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v5, :cond_0

    .line 1441
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1443
    .local v0, data:[B
    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 1444
    const/4 v5, 0x0

    :try_start_0
    #v5=(Null);
    array-length v6, v0

    #v6=(Integer);
    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1445
    .local v4, saved:Landroid/graphics/Bitmap;
    #v4=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    #v5=(Reference);
    invoke-virtual {p2, v5}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1446
    .local v2, loaded:Landroid/graphics/Bitmap;
    #v2=(Reference);
    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    const/4 v5, 0x1

    #v5=(One);
    move v3, v5

    .line 1453
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    .local v3, needSave:Z
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    if-eqz v3, :cond_0

    .line 1454
    const-string v5, "Launcher.Model"

    #v5=(Reference);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "going to save icon bitmap for info="

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 1461
    .end local v0           #data:[B
    .end local v3           #needSave:Z
    :cond_0
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .restart local v0       #data:[B
    .restart local v2       #loaded:Landroid/graphics/Bitmap;
    .restart local v4       #saved:Landroid/graphics/Bitmap;
    :cond_1
    #v0=(Reference);v1=(Uninit);v2=(Reference);v3=(Uninit);v4=(Reference);v5=(Boolean);v6=(Integer);v7=(Null);
    move v3, v7

    .line 1446
    #v3=(Null);
    goto :goto_0

    .line 1448
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    :cond_2
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    #v3=(One);
    goto :goto_0

    .line 1450
    .end local v3           #needSave:Z
    :catch_0
    #v2=(Conflicted);v3=(Uninit);v4=(Conflicted);v5=(Reference);v6=(Conflicted);
    move-exception v5

    move-object v1, v5

    .line 1451
    .local v1, e:Ljava/lang/Exception;
    #v1=(Reference);
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    #v3=(One);
    goto :goto_0
.end method

*/}
