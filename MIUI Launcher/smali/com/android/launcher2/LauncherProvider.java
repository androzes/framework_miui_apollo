package com.android.launcher2; class LauncherProvider {/*

.class public Lcom/android/launcher2/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherProvider$SqlArguments;,
        Lcom/android/launcher2/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field static final CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;


# instance fields
.field private volatile mLock:Ljava/lang/Object;

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "content://com.android.launcher2.settings/appWidgetReset"

    #v0=(Reference);
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 84
    #p0=(Reference);
    new-instance v0, Ljava/lang/Object;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    .line 750
    return-void
.end method

.method private loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 1
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 218
    invoke-static {p1}, Lcom/android/launcher2/ScreenUtils;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 152
    iget-object v4, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    #v4=(Reference);
    monitor-enter v4

    .line 153
    :try_start_0
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 154
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    #v0=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 155
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 157
    :try_start_1
    array-length v3, p2

    .line 158
    .local v3, numValues:I
    #v3=(Integer);
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    #v2=(Integer);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-ge v2, v3, :cond_1

    .line 159
    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    #v5=(Reference);
    const/4 v6, 0x0

    #v6=(Null);
    aget-object v7, p2, v2

    #v7=(Null);
    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    cmp-long v5, v5, v7

    #v5=(Byte);
    if-gez v5, :cond_0

    const/4 v5, 0x0

    .line 163
    :try_start_2
    #v5=(Null);
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v4, v5

    .line 166
    :goto_1
    #v4=(Integer);v5=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return v4

    .line 158
    :cond_0
    #v4=(Reference);v5=(Byte);v6=(LongHi);v7=(LongLo);v8=(LongHi);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_1
    :try_start_3
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 166
    array-length v5, p2

    #v5=(Integer);
    monitor-exit v4

    move v4, v5

    #v4=(Integer);
    goto :goto_1

    .line 163
    .end local v2           #i:I
    .end local v3           #numValues:I
    :catchall_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Reference);v5=(Conflicted);
    move-exception v5

    #v5=(Reference);
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 167
    .end local v0           #args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);
    move-exception v5

    #v5=(Reference);
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 172
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    #v2=(Reference);
    monitor-enter v2

    .line 173
    :try_start_0
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    #v0=(Reference);
    iget-object v3, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 175
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    #v1=(Reference);
    iget-object v3, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    #v4=(Reference);
    iget-object v5, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    #v5=(Reference);
    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    #v3=(Integer);
    monitor-exit v2

    return v3

    .line 176
    .end local v0           #args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v3

    #v3=(Reference);
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 94
    #v1=(Null);
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    #v0=(UninitRef);
    invoke-direct {v0, p1, v1, v1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 95
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    #v0=(Reference);
    iget-object v1, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    #v1=(Reference);
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "vnd.android.cursor.dir/"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_0
    return-object v1

    :cond_0
    #v1=(Boolean);v2=(Uninit);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "vnd.android.cursor.item/"

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const/4 v9, 0x0

    .line 120
    #v9=(Null);
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    #v6=(Reference);
    monitor-enter v6

    .line 121
    :try_start_0
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 122
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    #v0=(Reference);
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 123
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    #v1=(Reference);
    const-string v7, "favorites"

    iget-object v8, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 124
    .local v2, isFavorites:Z
    #v2=(Boolean);
    if-eqz v2, :cond_1

    .line 125
    const-string v7, "screen"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 126
    .local v5, screenId:Ljava/lang/Integer;
    #v5=(Reference);
    if-nez v5, :cond_0

    .line 127
    monitor-exit v6

    move-object v6, v9

    .line 146
    .end local v5           #screenId:Ljava/lang/Integer;
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-object v6

    .line 130
    .restart local v5       #screenId:Ljava/lang/Integer;
    :cond_0
    #v3=(Uninit);v4=(Uninit);v5=(Reference);v7=(Reference);v8=(Reference);
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    #v7=(Integer);
    const/4 v8, -0x1

    #v8=(Byte);
    if-ne v7, v8, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    #v7=(Reference);
    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v8

    #v8=(Reference);
    invoke-static {v7, v1, v8, p2}, Lcom/android/launcher2/ScreenUtils;->fillEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Landroid/content/ContentValues;)Z

    move-result v7

    #v7=(Boolean);
    if-nez v7, :cond_1

    .line 133
    monitor-exit v6

    move-object v6, v9

    #v6=(Null);
    goto :goto_0

    .line 138
    .end local v5           #screenId:Ljava/lang/Integer;
    :cond_1
    #v5=(Conflicted);v6=(Reference);v7=(Conflicted);v8=(Conflicted);
    iget-object v7, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    #v7=(Reference);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v1, v7, v8, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 139
    .local v3, rowId:J
    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v7, 0x0

    #v7=(LongLo);v8=(LongHi);
    cmp-long v7, v3, v7

    #v7=(Byte);
    if-gtz v7, :cond_2

    .line 140
    monitor-exit v6

    move-object v6, v9

    #v6=(Null);
    goto :goto_0

    .line 142
    :cond_2
    #v6=(Reference);
    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    #v7=(Reference);
    invoke-direct {p0, v1}, Lcom/android/launcher2/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v8

    #v8=(Reference);
    invoke-static {v7, v1, v8, v3, v4}, Lcom/android/launcher2/ScreenUtils;->ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V

    .line 145
    :cond_3
    #v7=(Conflicted);v8=(Conflicted);
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 146
    monitor-exit v6

    move-object v6, p1

    goto :goto_0

    .line 147
    .end local v0           #args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #isFavorites:Z
    .end local v3           #rowId:J
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    move-exception v7

    #v7=(Reference);
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;

    #v0=(UninitRef);
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 89
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 105
    iget-object v10, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    #v10=(Reference);
    monitor-enter v10

    .line 106
    :try_start_0
    new-instance v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    #v8=(UninitRef);
    invoke-direct {v8, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    .local v8, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    #v8=(Reference);
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 108
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    #v0=(Reference);
    iget-object v2, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 111
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    #v1=(Reference);
    iget-object v3, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    #v3=(Reference);
    iget-object v4, v8, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    move-object v2, p2

    move-object/from16 v7, p5

    #v7=(Reference);
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 112
    .local v9, result:Landroid/database/Cursor;
    #v9=(Reference);
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 114
    monitor-exit v10

    return-object v9

    .line 115
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    .end local v9           #result:Landroid/database/Cursor;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 181
    iget-object v6, p0, Lcom/android/launcher2/LauncherProvider;->mLock:Ljava/lang/Object;

    #v6=(Reference);
    monitor-enter v6

    .line 182
    :try_start_0
    new-instance v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher2/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    .local v0, args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    #v0=(Reference);
    iget-object v7, p0, Lcom/android/launcher2/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    #v7=(Reference);
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 186
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    #v3=(Reference);
    const-string v7, "packages"

    iget-object v8, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    #v8=(Reference);
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    #v7=(Reference);
    invoke-direct {p0, v3}, Lcom/android/launcher2/LauncherProvider;->loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v9, "name"

    #v9=(Reference);
    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v7, v3, v8, p0}, Lcom/android/launcher2/ScreenUtils;->updateHomeScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 188
    const/4 v7, 0x0

    #v7=(Null);
    monitor-exit v6

    move v6, v7

    .line 210
    .end local p1
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Integer);v9=(Conflicted);v10=(Conflicted);
    return v6

    .line 191
    .restart local p0
    .restart local p1
    :cond_0
    #v1=(Uninit);v2=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Reference);v7=(Boolean);v9=(Uninit);v10=(Uninit);
    const-string v7, "screens"

    #v7=(Reference);
    iget-object v8, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    #v7=(Boolean);
    if-eqz v7, :cond_4

    .line 192
    const-string v7, "screenOrder"

    #v7=(Reference);
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 193
    .local v1, bulkValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v1=(Reference);
    if-nez v1, :cond_2

    .line 194
    const-string v7, "Launcher.LauncherProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #v8=(Reference);
    const-string v9, "Invalid resorder request: "

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v1, :cond_1

    const-string v9, "null"

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v7, 0x0

    #v7=(Null);
    monitor-exit v6

    move v6, v7

    #v6=(Null);
    goto :goto_0

    .line 194
    :cond_1
    #v6=(Reference);v7=(Reference);
    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 198
    :cond_2
    #v9=(Uninit);
    const/4 v2, 0x0

    .line 199
    .local v2, count:I
    #v2=(Null);
    const/4 v4, 0x0

    .end local p1
    .local v4, order:I
    :goto_2
    #v2=(Integer);v4=(Integer);v5=(Conflicted);v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    #v7=(Integer);
    if-ge v4, v7, :cond_3

    .line 200
    new-instance v5, Landroid/content/ContentValues;

    #v5=(UninitRef);
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v5, update:Landroid/content/ContentValues;
    #v5=(Reference);
    const-string v7, "screenOrder"

    #v7=(Reference);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    iget-object v7, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    #v9=(One);
    new-array v9, v9, [Ljava/lang/String;

    #v9=(Reference);
    const/4 v10, 0x0

    #v10=(Null);
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v9, v10

    invoke-virtual {v3, v7, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    #v7=(Integer);
    add-int/2addr v2, v7

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 206
    .end local v5           #update:Landroid/content/ContentValues;
    :cond_3
    #v5=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    const/4 v7, 0x0

    #v7=(Null);
    iput-object v7, p0, Lcom/android/launcher2/LauncherProvider;->mScreens:Ljava/util/ArrayList;

    .line 207
    monitor-exit v6

    move v6, v2

    #v6=(Integer);
    goto :goto_0

    .line 210
    .end local v1           #bulkValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #count:I
    .end local v4           #order:I
    .restart local p1
    :cond_4
    #v1=(Uninit);v2=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Reference);v7=(Boolean);v9=(Uninit);v10=(Uninit);
    iget-object v7, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    #v7=(Reference);
    iget-object v8, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/launcher2/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    #v9=(Reference);
    invoke-virtual {v3, v7, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    #v7=(Integer);
    monitor-exit v6

    move v6, v7

    #v6=(Integer);
    goto :goto_0

    .line 211
    .end local v0           #args:Lcom/android/launcher2/LauncherProvider$SqlArguments;
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local p0
    .end local p1
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Reference);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-exception v7

    #v7=(Reference);
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

*/}
