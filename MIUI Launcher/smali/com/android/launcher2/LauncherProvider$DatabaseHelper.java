package com.android.launcher2; class LauncherProvider$DatabaseHelper {/*

.class Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 236
    const-string v0, "launcher.db"

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const/16 v2, 0xb

    #v2=(PosByte);
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 237
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 238
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    #v0=(UninitRef);
    const/16 v1, 0x400

    #v1=(PosShort);
    invoke-direct {v0, p1, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 239
    return-void
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z
    .locals 10
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"
    .parameter "intent"

    .prologue
    .line 562
    const/4 v7, 0x1

    #v7=(One);
    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, packageName:Ljava/lang/String;
    #v5=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {p3, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, className:Ljava/lang/String;
    :try_start_0
    #v0=(Reference);
    new-instance v1, Landroid/content/ComponentName;

    #v1=(UninitRef);
    invoke-direct {v1, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v1, cn:Landroid/content/ComponentName;
    #v1=(Reference);
    const/4 v7, 0x0

    invoke-virtual {p4, v1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 576
    .local v3, info:Landroid/content/pm/ActivityInfo;
    :goto_0
    :try_start_1
    #v3=(Reference);v4=(Conflicted);v6=(Conflicted);v8=(Conflicted);
    invoke-virtual {p5, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 577
    const/high16 v7, 0x1020

    #v7=(Integer);
    invoke-virtual {p5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 579
    const-string v7, "intent"

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p5, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v7, "title"

    invoke-virtual {v3, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v7, "itemType"

    const/4 v8, 0x0

    #v8=(Null);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    const-string v7, "iconPackage"

    invoke-virtual {p2, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v7, "spanX"

    const/4 v8, 0x1

    #v8=(One);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 584
    const-string v7, "spanY"

    const/4 v8, 0x1

    #v8=(One);
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {p2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    const-string v7, "favorites"

    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {p1, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 591
    const/4 v7, 0x1

    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v7=(Boolean);v8=(Reference);v9=(Conflicted);
    return v7

    .line 569
    :catch_0
    #v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);v7=(Null);v8=(Uninit);v9=(Uninit);
    move-exception v7

    #v7=(Reference);
    move-object v4, v7

    .line 570
    .local v4, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    #v4=(Reference);
    const/4 v7, 0x1

    #v7=(One);
    new-array v7, v7, [Ljava/lang/String;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    aput-object v5, v7, v8

    invoke-virtual {p4, v7}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 572
    .local v6, packages:[Ljava/lang/String;
    #v6=(Reference);
    new-instance v1, Landroid/content/ComponentName;

    #v1=(UninitRef);
    const/4 v7, 0x0

    #v7=(Null);
    aget-object v7, v6, v7

    invoke-direct {v1, v7, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .restart local v1       #cn:Landroid/content/ComponentName;
    #v1=(Reference);
    const/4 v7, 0x0

    invoke-virtual {p4, v1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .restart local v3       #info:Landroid/content/pm/ActivityInfo;
    #v3=(Reference);
    goto :goto_0

    .line 586
    .end local v1           #cn:Landroid/content/ComponentName;
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    .end local v4           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6           #packages:[Ljava/lang/String;
    :catch_1
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v7

    #v7=(Reference);
    move-object v2, v7

    .line 587
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    #v2=(Reference);
    const-string v7, "Launcher.LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #v8=(Reference);
    const-string v9, "Unable to add favorite: "

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    const/4 v7, 0x0

    #v7=(Null);
    goto :goto_1
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 6
    .parameter "db"
    .parameter "values"
    .parameter "cn"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, allocatedAppWidgets:Z
    #v0=(Null);
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    #v4=(Reference);
    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    .line 679
    .local v2, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    :try_start_0
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    .line 681
    .local v1, appWidgetId:I
    #v1=(Integer);
    const-string v4, "itemType"

    const/4 v5, 0x4

    #v5=(PosByte);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 682
    const-string v4, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 683
    const-string v4, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 684
    const-string v4, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 685
    const-string v4, "favorites"

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {p1, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 687
    const/4 v0, 0x1

    .line 689
    #v0=(One);
    invoke-virtual {v2, v1, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    .end local v1           #appWidgetId:I
    :goto_0
    #v0=(Boolean);v1=(Conflicted);v3=(Conflicted);v5=(Reference);
    return v0

    .line 690
    :catch_0
    #v3=(Uninit);v5=(Conflicted);
    move-exception v4

    move-object v3, v4

    .line 691
    .local v3, ex:Ljava/lang/RuntimeException;
    #v3=(Reference);
    const-string v4, "Launcher.LauncherProvider"

    const-string v5, "Problem allocating appWidgetId"

    #v5=(Reference);
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z
    .locals 15
    .parameter "db"
    .parameter "values"
    .parameter "a"
    .parameter "packageManager"

    .prologue
    .line 642
    const/4 v3, 0x1

    #v3=(One);
    move-object/from16 v0, p3

    #v0=(Reference);
    move v1, v3

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 643
    .local v13, packageName:Ljava/lang/String;
    #v13=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    move-object/from16 v0, p3

    move v1, v3

    #v1=(Null);
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 645
    .local v9, className:Ljava/lang/String;
    #v9=(Reference);
    if-eqz v13, :cond_0

    if-nez v9, :cond_1

    .line 646
    :cond_0
    const/4 v3, 0x0

    .line 670
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);
    return v3

    .line 649
    :cond_1
    #v1=(Null);v2=(Uninit);v3=(Null);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v14=(Uninit);
    const/4 v12, 0x1

    .line 650
    .local v12, hasPackage:Z
    #v12=(One);
    new-instance v6, Landroid/content/ComponentName;

    #v6=(UninitRef);
    invoke-direct {v6, v13, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .local v6, cn:Landroid/content/ComponentName;
    #v6=(Reference);
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p4

    move-object v1, v6

    #v1=(Reference);
    move v2, v3

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_1
    #v4=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Boolean);v14=(Conflicted);
    if-eqz v12, :cond_2

    .line 665
    const/4 v3, 0x6

    #v3=(PosByte);
    const/4 v4, 0x0

    #v4=(Null);
    move-object/from16 v0, p3

    move v1, v3

    #v1=(PosByte);
    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 666
    .local v7, spanX:I
    #v7=(Integer);
    const/4 v3, 0x7

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .local v8, spanY:I
    #v8=(Integer);
    move-object v3, p0

    #v3=(Reference);
    move-object/from16 v4, p1

    #v4=(Reference);
    move-object/from16 v5, p2

    .line 667
    #v5=(Reference);
    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v3

    #v3=(Boolean);
    goto :goto_0

    .line 653
    .end local v7           #spanX:I
    .end local v8           #spanY:I
    :catch_0
    #v1=(Reference);v3=(Null);v4=(Uninit);v5=(Uninit);v7=(Uninit);v8=(Uninit);v10=(Uninit);v11=(Uninit);v12=(One);v14=(Uninit);
    move-exception v10

    .line 654
    .local v10, e:Ljava/lang/Exception;
    #v10=(Reference);
    const/4 v3, 0x1

    #v3=(One);
    new-array v3, v3, [Ljava/lang/String;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    aput-object v13, v3, v4

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 656
    .local v14, packages:[Ljava/lang/String;
    #v14=(Reference);
    new-instance v6, Landroid/content/ComponentName;

    .end local v6           #cn:Landroid/content/ComponentName;
    #v6=(UninitRef);
    const/4 v3, 0x0

    #v3=(Null);
    aget-object v3, v14, v3

    invoke-direct {v6, v3, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    .restart local v6       #cn:Landroid/content/ComponentName;
    #v6=(Reference);
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p4

    move-object v1, v6

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 659
    :catch_1
    move-exception v11

    .line 660
    .local v11, e1:Ljava/lang/Exception;
    #v11=(Reference);
    const/4 v12, 0x0

    #v12=(Null);
    goto :goto_1

    .line 670
    .end local v10           #e:Ljava/lang/Exception;
    .end local v11           #e1:Ljava/lang/Exception;
    .end local v14           #packages:[Ljava/lang/String;
    :cond_2
    #v4=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Boolean);v14=(Conflicted);
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 6
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v4, 0x2

    .line 627
    #v4=(PosByte);
    new-instance v3, Landroid/content/ComponentName;

    #v3=(UninitRef);
    const-string v0, "com.android.deskclock"

    #v0=(Reference);
    const-string v1, "com.android.alarmclock.AnalogAppWidgetProvider"

    #v1=(Reference);
    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, cn:Landroid/content/ComponentName;
    #v3=(Reference);
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    #v2=(Reference);
    move v5, v4

    .line 629
    #v5=(PosByte);
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 3
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v2, 0x1

    .line 550
    #v2=(One);
    const-string v0, "title"

    #v0=(Reference);
    const/16 v1, 0x9

    #v1=(PosByte);
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v0, "itemType"

    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    const-string v0, "spanX"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    const-string v0, "spanY"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const-string v0, "favorites"

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 555
    return v2
.end method

.method private addGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Z
    .locals 2
    .parameter "db"
    .parameter "values"
    .parameter "gadgetId"

    .prologue
    .line 633
    const-string v0, "itemType"

    #v0=(Reference);
    const/4 v1, 0x5

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    const-string v0, "appWidgetId"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 635
    const-string v0, "favorites"

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 636
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method private addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "db"
    .parameter "values"

    .prologue
    .line 621
    const-string v0, "spanX"

    #v0=(Reference);
    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string v0, "spanY"

    const/4 v1, 0x1

    #v1=(One);
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    const/4 v0, 0x3

    #v0=(PosByte);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addGadget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    .locals 11
    .parameter "db"
    .parameter "values"
    .parameter "a"

    .prologue
    const/4 v9, 0x1

    #v9=(One);
    const/4 v8, 0x0

    #v8=(Null);
    const-string v10, "Launcher.LauncherProvider"

    .line 699
    #v10=(Reference);
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    #v6=(Reference);
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 701
    .local v3, r:Landroid/content/res/Resources;
    #v3=(Reference);
    const/16 v6, 0x8

    #v6=(PosByte);
    invoke-virtual {p3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 702
    .local v1, iconResId:I
    #v1=(Integer);
    const/16 v6, 0x9

    invoke-virtual {p3, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 705
    .local v4, titleResId:I
    #v4=(Integer);
    const/4 v5, 0x0

    .line 707
    .local v5, uri:Ljava/lang/String;
    #v5=(Null);
    const/16 v6, 0xa

    :try_start_0
    invoke-virtual {p3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 708
    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 714
    .local v2, intent:Landroid/content/Intent;
    #v2=(Reference);
    if-eqz v1, :cond_0

    if-nez v4, :cond_1

    .line 715
    :cond_0
    const-string v6, "Launcher.LauncherProvider"

    #v6=(Reference);
    const-string v6, "Shortcut is missing title or icon resource ID"

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 731
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v6=(Boolean);v7=(Conflicted);
    return v6

    .line 709
    :catch_0
    #v0=(Uninit);v2=(Uninit);v6=(PosByte);v7=(Uninit);
    move-exception v6

    #v6=(Reference);
    move-object v0, v6

    .line 710
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference);
    const-string v6, "Launcher.LauncherProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "Shortcut has malformed uri: "

    #v7=(Reference);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 711
    #v6=(Null);
    goto :goto_0

    .line 719
    .end local v0           #e:Ljava/net/URISyntaxException;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    #v0=(Uninit);v2=(Reference);v7=(Uninit);
    const/high16 v6, 0x1000

    #v6=(Integer);
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 720
    const-string v6, "intent"

    #v6=(Reference);
    invoke-virtual {v2, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v6, "title"

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v6, "itemType"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 723
    const-string v6, "spanX"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    const-string v6, "spanY"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 725
    const-string v6, "iconType"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 726
    const-string v6, "iconPackage"

    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v6, "iconResource"

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v6, "favorites"

    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {p1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move v6, v9

    .line 731
    #v6=(One);
    goto :goto_0
.end method

.method private createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 323
    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_item;"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 324
    const-string v0, "CREATE TRIGGER update_item_on_update_item  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container > 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | (SELECT ((itemFlags>>1)&1) from favorites where _id==new.container))     WHERE _id==new._id;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 326
    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_home;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 327
    const-string v0, "CREATE TRIGGER update_item_on_update_home  AFTER UPDATE of container ON favorites  WHEN (new.itemType == 0 OR new.itemType == 1) AND (new.container <= 0) BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | 0)     WHERE _id==new._id;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 329
    const-string v0, "DROP TRIGGER IF EXISTS update_item_on_update_folder;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    const-string v0, "CREATE TRIGGER update_item_on_update_folder  AFTER UPDATE of itemFlags ON favorites  WHEN new.itemType == 2  BEGIN   UPDATE favorites SET itemFlags = (((itemFlags >> 1) <<1) | ((new.itemFlags>>1)&1))      WHERE container==new._id;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v13, 0x1

    #v13=(One);
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v1, "favorites"

    .line 334
    #v1=(Reference);
    const-string v0, "DROP TABLE IF EXISTS screens"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 336
    const-string v0, "CREATE TABLE screens (_id INTEGER PRIMARY KEY,title TEXT,screenOrder INTEGER NOT NULL DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 343
    const-string v0, "favorites"

    new-array v2, v13, [Ljava/lang/String;

    #v2=(Reference);
    const-string v0, "MAX(screen)"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    #v5=(Null);
    move-object v6, v3

    #v6=(Null);
    move-object v7, v3

    #v7=(Null);
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 349
    .local v9, cursor:Landroid/database/Cursor;
    #v9=(Reference);
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 350
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    add-int/lit8 v8, v0, 0x1

    .line 351
    .local v8, count:I
    #v8=(Integer);
    new-instance v12, Landroid/content/ContentValues;

    #v12=(UninitRef);
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v12, values:Landroid/content/ContentValues;
    #v12=(Reference);
    new-array v11, v8, [J

    .line 353
    .local v11, ids:[J
    #v11=(Reference);
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v10=(Integer);
    if-ge v10, v8, :cond_0

    .line 354
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 355
    const-string v0, "screenOrder"

    #v0=(Reference);
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string v0, "screens"

    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {p1, v0, v1, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    #v0=(LongLo);v1=(LongHi);
    aput-wide v0, v11, v10

    .line 353
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 358
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    sub-int v10, v8, v13

    :goto_1
    #v4=(Reference);
    if-ltz v10, :cond_1

    .line 359
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 360
    const-string v0, "screen"

    #v0=(Reference);
    aget-wide v1, v11, v10

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    const-string v0, "favorites"

    const-string v1, "screen=?"

    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v12, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 369
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v11           #ids:[J
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v8=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    if-eqz v9, :cond_2

    .line 370
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 373
    :cond_2
    return-void

    .line 369
    :catchall_0
    #v2=(Conflicted);
    move-exception v0

    #v0=(Reference);
    if-eqz v9, :cond_3

    .line 370
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 20
    .parameter "db"

    .prologue
    .line 483
    new-instance v10, Landroid/content/Intent;

    #v10=(UninitRef);
    const-string v5, "android.intent.action.MAIN"

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-direct {v10, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 484
    .local v10, intent:Landroid/content/Intent;
    #v10=(Reference);
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    new-instance v7, Landroid/content/ContentValues;

    #v7=(UninitRef);
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 487
    .local v7, values:Landroid/content/ContentValues;
    #v7=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 488
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    #v9=(Reference);
    const/16 v16, 0x0

    .line 490
    .local v16, i:I
    :try_start_0
    #v16=(Null);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f05

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v18

    .line 491
    .local v18, parser:Landroid/content/res/XmlResourceParser;
    #v18=(Reference);
    invoke-static/range {v18 .. v18}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v12

    .line 492
    .local v12, attrs:Landroid/util/AttributeSet;
    #v12=(Reference);
    const-string v5, "favorites"

    move-object/from16 v0, v18

    move-object v1, v5

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 494
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 498
    .local v14, depth:I
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Integer);v16=(Integer);v17=(Conflicted);v19=(Conflicted);
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19

    .local v19, type:I
    #v19=(Integer);
    const/4 v5, 0x3

    #v5=(PosByte);
    move/from16 v0, v19

    #v0=(Integer);
    move v1, v5

    #v1=(PosByte);
    if-ne v0, v1, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    #v5=(Integer);
    if-le v5, v14, :cond_5

    :cond_1
    const/4 v5, 0x1

    #v5=(One);
    move/from16 v0, v19

    move v1, v5

    #v1=(One);
    if-eq v0, v1, :cond_5

    .line 500
    const/4 v5, 0x2

    #v5=(PosByte);
    move/from16 v0, v19

    move v1, v5

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    .line 504
    const/4 v11, 0x0

    .line 505
    .local v11, added:Z
    #v11=(Null);
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 507
    .local v17, name:Ljava/lang/String;
    #v17=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v5, v0

    #v5=(Reference);
    sget-object v6, Lcom/android/launcher/R$styleable;->Favorite:[I

    #v6=(Reference);
    invoke-virtual {v5, v12, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 509
    .local v8, a:Landroid/content/res/TypedArray;
    #v8=(Reference);
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 510
    const/4 v5, 0x3

    #v5=(PosByte);
    invoke-virtual {v8, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 513
    .local v13, container:Ljava/lang/String;
    #v13=(Reference);
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    .line 514
    const/16 v5, -0x64

    #v5=(Byte);
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 515
    const-string v5, "screen"

    #v5=(Reference);
    const/4 v6, 0x2

    #v6=(PosByte);
    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v5, "cellX"

    const/4 v6, 0x4

    #v6=(PosByte);
    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v5, "cellY"

    const/4 v6, 0x5

    #v6=(PosByte);
    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v7, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_2
    #v5=(Conflicted);
    const-string v5, "container"

    #v5=(Reference);
    invoke-virtual {v7, v5, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v5, "favorite"

    move-object v0, v5

    move-object/from16 v1, v17

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_6

    move-object/from16 v5, p0

    #v5=(Reference);
    move-object/from16 v6, p1

    .line 523
    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v11

    .line 536
    :cond_3
    :goto_1
    #v5=(Conflicted);v11=(Boolean);
    if-eqz v11, :cond_4

    add-int/lit8 v16, v16, 0x1

    .line 538
    :cond_4
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 540
    .end local v8           #a:Landroid/content/res/TypedArray;
    .end local v11           #added:Z
    .end local v12           #attrs:Landroid/util/AttributeSet;
    .end local v13           #container:Ljava/lang/String;
    .end local v14           #depth:I
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #parser:Landroid/content/res/XmlResourceParser;
    .end local v19           #type:I
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);v8=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    move-exception v5

    #v5=(Reference);
    move-object v15, v5

    .line 541
    .local v15, e:Lorg/xmlpull/v1/XmlPullParserException;
    #v15=(Reference);
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Got exception parsing favorites."

    #v6=(Reference);
    invoke-static {v5, v6, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .end local v15           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_5
    :goto_2
    #v5=(Conflicted);v6=(Conflicted);v15=(Conflicted);
    return v16

    .line 524
    .restart local v8       #a:Landroid/content/res/TypedArray;
    .restart local v11       #added:Z
    .restart local v12       #attrs:Landroid/util/AttributeSet;
    .restart local v13       #container:Ljava/lang/String;
    .restart local v14       #depth:I
    .restart local v17       #name:Ljava/lang/String;
    .restart local v18       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v19       #type:I
    :cond_6
    :try_start_1
    #v0=(Reference);v1=(Reference);v5=(Boolean);v6=(Reference);v8=(Reference);v11=(Null);v12=(Reference);v13=(Reference);v14=(Integer);v15=(Uninit);v17=(Reference);v18=(Reference);v19=(Integer);
    const-string v5, "search"

    #v5=(Reference);
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_7

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addSearchWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v11

    #v11=(Boolean);
    goto :goto_1

    .line 526
    :cond_7
    #v2=(Conflicted);v11=(Null);
    const-string v5, "clock"

    #v5=(Reference);
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_8

    .line 527
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addClockWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result v11

    #v11=(Boolean);
    goto :goto_1

    .line 528
    :cond_8
    #v2=(Conflicted);v11=(Null);
    const-string v5, "appwidget"

    #v5=(Reference);
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_9

    .line 529
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    #v2=(Reference);
    move-object v3, v8

    #v3=(Reference);
    move-object v4, v9

    #v4=(Reference);
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;Landroid/content/pm/PackageManager;)Z

    move-result v11

    #v11=(Boolean);
    goto :goto_1

    .line 530
    :cond_9
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v11=(Null);
    const-string v5, "shortcut"

    #v5=(Reference);
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_a

    .line 531
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    #v2=(Reference);
    move-object v3, v8

    #v3=(Reference);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z

    move-result v11

    #v11=(Boolean);
    goto :goto_1

    .line 532
    :cond_a
    #v2=(Conflicted);v3=(Conflicted);v11=(Null);
    const-string v5, "folder"

    #v5=(Reference);
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_3

    .line 533
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    #v2=(Reference);
    move-object v3, v8

    #v3=(Reference);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/content/res/TypedArray;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    #v11=(Boolean);
    goto :goto_1

    .line 542
    .end local v8           #a:Landroid/content/res/TypedArray;
    .end local v11           #added:Z
    .end local v12           #attrs:Landroid/util/AttributeSet;
    .end local v13           #container:Ljava/lang/String;
    .end local v14           #depth:I
    .end local v17           #name:Ljava/lang/String;
    .end local v18           #parser:Landroid/content/res/XmlResourceParser;
    .end local v19           #type:I
    :catch_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v8=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    move-exception v5

    #v5=(Reference);
    move-object v15, v5

    .line 543
    .local v15, e:Ljava/io/IOException;
    #v15=(Reference);
    const-string v5, "Launcher.LauncherProvider"

    const-string v6, "Got exception parsing favorites."

    #v6=(Reference);
    invoke-static {v5, v6, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const-string v12, "Launcher.LauncherProvider"

    .line 422
    #v12=(Reference);
    const-string v11, "Launcher.LauncherProvider"

    #v11=(Reference);
    const-string v11, "normalizing icons"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, c:Landroid/database/Cursor;
    #v1=(Null);
    const/4 v10, 0x0

    .line 428
    .local v10, update:Landroid/database/sqlite/SQLiteStatement;
    #v10=(Null);
    const/4 v9, 0x0

    .line 429
    .local v9, logged:Z
    :try_start_0
    #v9=(Null);
    const-string v11, "UPDATE favorites SET icon=? WHERE _id=?"

    invoke-virtual {p1, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 432
    #v10=(Reference);
    const-string v11, "SELECT _id, icon FROM favorites WHERE iconType=1"

    const/4 v12, 0x0

    #v12=(Null);
    invoke-virtual {p1, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 435
    #v1=(Reference);
    const-string v11, "_id"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 436
    .local v8, idIndex:I
    #v8=(Integer);
    const-string v11, "icon"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 438
    .local v5, iconIndex:I
    :cond_0
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Integer);v6=(Conflicted);v7=(Conflicted);v9=(Boolean);v11=(Conflicted);v12=(Reference);v13=(Conflicted);
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    #v11=(Boolean);
    if-eqz v11, :cond_5

    .line 439
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 440
    .local v6, id:J
    #v6=(LongLo);v7=(LongHi);
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 442
    .local v2, data:[B
    #v2=(Reference);
    const/4 v11, 0x0

    :try_start_1
    #v11=(Null);
    array-length v12, v2

    #v12=(Integer);
    invoke-static {v2, v11, v12}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    #v11=(Reference);
    iget-object v12, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    #v12=(Reference);
    invoke-static {v11, v12}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 445
    .local v0, bitmap:Landroid/graphics/Bitmap;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 446
    const/4 v11, 0x1

    #v11=(One);
    invoke-virtual {v10, v11, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 447
    invoke-static {v0}, Lcom/android/launcher2/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 448
    if-eqz v2, :cond_1

    .line 449
    const/4 v11, 0x2

    #v11=(PosByte);
    invoke-virtual {v10, v11, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 450
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 452
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 454
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    #v0=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-exception v11

    #v11=(Reference);
    move-object v3, v11

    .line 455
    .local v3, e:Ljava/lang/Exception;
    #v3=(Reference);
    if-nez v9, :cond_2

    .line 456
    :try_start_2
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v13, "Failed normalizing icon "

    #v13=(Reference);
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    :goto_1
    const/4 v9, 0x1

    #v9=(One);
    goto :goto_0

    .line 458
    :cond_2
    #v9=(Boolean);v12=(Conflicted);v13=(Conflicted);
    const-string v11, "Launcher.LauncherProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    #v12=(UninitRef);
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #v12=(Reference);
    const-string v13, "Also failed normalizing icon "

    #v13=(Reference);
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 464
    .end local v2           #data:[B
    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #iconIndex:I
    .end local v6           #id:J
    .end local v8           #idIndex:I
    :catch_1
    #v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    move-exception v11

    #v11=(Reference);
    move-object v4, v11

    .line 465
    .local v4, ex:Landroid/database/SQLException;
    :try_start_3
    #v4=(Reference);
    const-string v11, "Launcher.LauncherProvider"

    const-string v12, "Problem while allocating appWidgetIds for existing widgets"

    #v12=(Reference);
    invoke-static {v11, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 467
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 468
    if-eqz v10, :cond_3

    .line 469
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 471
    :cond_3
    if-eqz v1, :cond_4

    .line 472
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 475
    .end local v4           #ex:Landroid/database/SQLException;
    :cond_4
    :goto_2
    #v4=(Conflicted);v11=(Conflicted);
    return-void

    .line 463
    .restart local v5       #iconIndex:I
    .restart local v8       #idIndex:I
    :cond_5
    :try_start_4
    #v4=(Uninit);v5=(Integer);v8=(Integer);v11=(Boolean);
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    .line 467
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 468
    if-eqz v10, :cond_6

    .line 469
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 471
    :cond_6
    if-eqz v1, :cond_4

    .line 472
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 467
    .end local v5           #iconIndex:I
    .end local v8           #idIndex:I
    :catchall_0
    #v4=(Conflicted);v5=(Conflicted);v8=(Conflicted);v11=(Conflicted);v12=(Conflicted);
    move-exception v11

    #v11=(Reference);
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 468
    if-eqz v10, :cond_7

    .line 469
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 471
    :cond_7
    if-eqz v1, :cond_8

    .line 472
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v11
.end method

.method private sendAppWidgetResetNotify()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    sget-object v1, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 250
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 256
    const-string v0, "DROP TABLE IF EXISTS favorites"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 257
    const-string v0, "CREATE TABLE favorites (_id INTEGER PRIMARY KEY,title TEXT,intent TEXT,container INTEGER,screen INTEGER,cellX INTEGER,cellY INTEGER,spanX INTEGER,spanY INTEGER,itemType INTEGER,appWidgetId INTEGER NOT NULL DEFAULT -1,isShortcut INTEGER,iconType INTEGER,iconPackage TEXT,iconResource TEXT,icon BLOB,uri TEXT,displayMode INTEGER,launchCount INTEGER NOT NULL DEFAULT 1,sortMode INTEGER,itemFlags INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 284
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 286
    invoke-direct {p0}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->sendAppWidgetResetNotify()V

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;)I

    .line 292
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 293
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v3, 0x9

    .line 379
    #v3=(PosByte);
    move v1, p2

    .line 381
    .local v1, version:I
    #v1=(Integer);
    const/4 v0, 0x0

    .line 383
    .local v0, needCreateTriggers:Z
    #v0=(Null);
    const/16 v2, 0x8

    #v2=(PosByte);
    if-ge v1, v2, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->normalizeIcons(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 388
    const/16 v1, 0x8

    .line 391
    :cond_0
    if-ge v1, v3, :cond_1

    .line 392
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createScreensTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 393
    const/16 v1, 0x9

    .line 396
    :cond_1
    if-ne v1, v3, :cond_2

    .line 397
    const-string v2, "ALTER TABLE favorites ADD COLUMN launchCount INTEGER NOT NULL DEFAULT 1"

    #v2=(Reference);
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    const-string v2, "ALTER TABLE favorites ADD COLUMN sortMode INTEGER"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 401
    const/16 v1, 0xa

    .line 404
    :cond_2
    #v2=(Conflicted);
    const/16 v2, 0xa

    #v2=(PosByte);
    if-ne v1, v2, :cond_3

    .line 405
    const-string v2, "ALTER TABLE favorites ADD COLUMN itemFlags INTEGER NOT NULL DEFAULT 0"

    #v2=(Reference);
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 407
    const/16 v1, 0xb

    .line 408
    #v1=(PosByte);
    const/4 v0, 0x1

    .line 411
    :cond_3
    #v0=(Boolean);v1=(Integer);v2=(Conflicted);
    if-eqz v0, :cond_4

    .line 412
    invoke-direct {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->createFavoritesTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 415
    :cond_4
    if-eq v1, p3, :cond_5

    .line 416
    const-string v2, "Launcher.LauncherProvider"

    #v2=(Reference);
    const-string v3, "Destroying all old data and re-create."

    #v3=(Reference);
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0, p1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 419
    :cond_5
    #v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

*/}
