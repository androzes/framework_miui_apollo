package com.android.launcher2; class ScreenUtils {/*

.class Lcom/android/launcher2/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ScreenUtils$1;,
        Lcom/android/launcher2/ScreenUtils$ScreenInfo;,
        Lcom/android/launcher2/ScreenUtils$CellInfo;,
        Lcom/android/launcher2/ScreenUtils$ScreensQuery;,
        Lcom/android/launcher2/ScreenUtils$AppPlaceQuery;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    #p0=(Reference);
    return-void
.end method

.method private static addToHomeScreen(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V
    .locals 5
    .parameter "context"
    .parameter "info"
    .parameter "db"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ResolveInfo;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    const-wide/16 v2, 0x0

    #v2=(LongLo);v3=(LongHi);
    cmp-long v2, p4, v2

    #v2=(Byte);
    if-ltz v2, :cond_1

    .line 147
    const-string v2, "ScreenUtils"

    #v2=(Reference);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef);
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #v3=(Reference);
    const-string v4, "Updating home screen item "

    #v4=(Reference);
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p0, p1}, Lcom/android/launcher2/ScreenUtils;->buildValuesForUpdate(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {p2, p4, p5, v2}, Lcom/android/launcher2/ScreenUtils;->updateFavorite(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V

    .line 160
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 151
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Byte);v3=(LongHi);v4=(Uninit);
    invoke-static {p0, p2, p3}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Lcom/android/launcher2/ScreenUtils$CellInfo;

    move-result-object v0

    .line 153
    .local v0, cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0, p1, v0}, Lcom/android/launcher2/ScreenUtils;->buildValuesForInsert(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/ScreenUtils$CellInfo;)Landroid/content/ContentValues;

    move-result-object v1

    .line 158
    .local v1, values:Landroid/content/ContentValues;
    #v1=(Reference);
    const-string v2, "favorites"

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {p2, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method private static buildValuesForInsert(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/ScreenUtils$CellInfo;)Landroid/content/ContentValues;
    .locals 7
    .parameter "context"
    .parameter "info"
    .parameter "cellInfo"

    .prologue
    const/4 v6, 0x1

    #v6=(One);
    const/4 v5, 0x0

    .line 234
    #v5=(Null);
    invoke-static {p0, p1}, Lcom/android/launcher2/ScreenUtils;->buildValuesForUpdate(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/ContentValues;

    move-result-object v0

    .line 235
    .local v0, values:Landroid/content/ContentValues;
    #v0=(Reference);
    const-string v1, "itemType"

    #v1=(Reference);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v1, "container"

    const/16 v2, -0x64

    #v2=(Byte);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v1, "iconPackage"

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "iconType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v1, "screen"

    iget-wide v2, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    const-string v1, "cellX"

    iget v2, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 244
    const-string v1, "cellY"

    iget v2, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v1, "spanX"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v1, "spanY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v1, "ScreenUtils"

    const-string v2, "Adding new app %s to screen %d, pos (%d, %d)"

    const/4 v3, 0x4

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const-string v4, "title"

    #v4=(Reference);
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    iget-wide v4, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenId:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v3, v6

    const/4 v4, 0x2

    #v4=(PosByte);
    iget v5, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p2, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-object v0
.end method

.method private static buildValuesForUpdate(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)Landroid/content/ContentValues;
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    .line 220
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v3, values:Landroid/content/ContentValues;
    #v3=(Reference);
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v4, "android.intent.action.MAIN"

    #v4=(Reference);
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 224
    .local v2, packageName:Ljava/lang/String;
    #v2=(Reference);
    new-instance v4, Landroid/content/ComponentName;

    #v4=(UninitRef);
    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #v5=(Reference);
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #v4=(Reference);
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 225
    const/high16 v4, 0x1020

    #v4=(Integer);
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 226
    const-string v4, "intent"

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, label:Ljava/lang/String;
    #v1=(Reference);
    const-string v4, "title"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-object v3
.end method

.method private static deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "db"
    .parameter "id"

    .prologue
    .line 138
    const-string v0, "favorites"

    #v0=(Reference);
    const-string v1, "_id=?"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    return-void
.end method

.method private static ensureEnoughScreensForCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "screenOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    const/4 v4, 0x1

    .line 194
    #v4=(One);
    add-int/lit8 v2, p3, 0x1

    #v2=(Integer);
    const/16 v3, 0x12

    #v3=(PosByte);
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 195
    .local v1, screenCountNeeded:I
    #v1=(Integer);
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);
    if-ge v0, v1, :cond_1

    .line 196
    sub-int v2, v1, v4

    #v2=(Integer);
    if-ne v0, v2, :cond_0

    move v2, v4

    :goto_1
    #v2=(Boolean);
    invoke-static {p0, p1, v0, v2}, Lcom/android/launcher2/ScreenUtils;->insertScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;IZ)Lcom/android/launcher2/ScreenUtils$ScreenInfo;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    #v2=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1

    .line 198
    :cond_1
    #v2=(Conflicted);
    return-void
.end method

.method static ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V
    .locals 4
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    const-string v0, "favorites._id=?"

    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    new-array v1, v1, [Ljava/lang/String;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v1, v2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/launcher2/ScreenUtils;->ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method static ensureEnoughScreensForItem(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "where"
    .parameter "whereArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    const/4 v5, 0x0

    .line 170
    #v5=(Null);
    const-string v1, "favorites JOIN screens ON (screen=screens._id) "

    #v1=(Reference);
    sget-object v2, Lcom/android/launcher2/ScreenUtils$AppPlaceQuery;->COLUMNS:[Ljava/lang/String;

    #v2=(Reference);
    move-object v0, p1

    #v0=(Reference);
    move-object v3, p3

    #v3=(Reference);
    move-object v4, p4

    #v4=(Reference);
    move-object v6, v5

    #v6=(Null);
    move-object v7, v5

    #v7=(Null);
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 178
    .local v8, c:Landroid/database/Cursor;
    #v8=(Reference);
    if-nez v8, :cond_0

    .line 189
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 183
    :cond_0
    :try_start_0
    #v0=(Reference);
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 184
    const/4 v0, 0x0

    #v0=(Null);
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    #v0=(Integer);
    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher2/ScreenUtils;->ensureEnoughScreensForCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static fillEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;",
            "Landroid/content/ContentValues;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    const/4 v4, 0x1

    .line 328
    #v4=(One);
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Lcom/android/launcher2/ScreenUtils$CellInfo;

    move-result-object v0

    .line 329
    .local v0, cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 330
    const/4 v1, 0x0

    .line 339
    :goto_0
    #v1=(Boolean);v2=(Conflicted);v3=(Conflicted);
    return v1

    .line 334
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);
    const-string v1, "screen"

    #v1=(Reference);
    iget-wide v2, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenId:J

    #v2=(LongLo);v3=(LongHi);
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 335
    const-string v1, "cellX"

    iget v2, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v1, "cellY"

    iget v2, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    #v2=(Integer);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v1, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v1, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v1, v4

    .line 339
    #v1=(One);
    goto :goto_0
.end method

.method private static fillOccupied(Landroid/database/Cursor;[[ZII)V
    .locals 4
    .parameter "c"
    .parameter "occupied"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 467
    move v0, p2

    .local v0, x:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    const/4 v2, 0x3

    #v2=(PosByte);
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #v2=(Integer);
    add-int/2addr v2, p2

    if-ge v0, v2, :cond_1

    .line 468
    move v1, p3

    .local v1, y:I
    :goto_1
    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    #v2=(Integer);
    add-int/2addr v2, p3

    if-ge v1, v2, :cond_0

    .line 469
    aget-object v2, p1, v0

    #v2=(Null);
    const/4 v3, 0x1

    #v3=(One);
    aput-boolean v3, v2, v1

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 467
    :cond_0
    #v2=(Integer);v3=(Conflicted);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 472
    .end local v1           #y:I
    :cond_1
    #v1=(Conflicted);
    return-void
.end method

.method static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.intent.action.MAIN"

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 255
    .local v0, mainIntent:Landroid/content/Intent;
    #v0=(Reference);
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/launcher2/ScreenUtils$CellInfo;
    .locals 7
    .parameter "context"
    .parameter "db"

    .prologue
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v5, 0x0

    .line 356
    #v5=(Null);
    new-instance v0, Lcom/android/launcher2/ScreenUtils$CellInfo;

    #v0=(UninitRef);
    invoke-direct {v0, v6}, Lcom/android/launcher2/ScreenUtils$CellInfo;-><init>(Lcom/android/launcher2/ScreenUtils$1;)V

    .line 357
    .local v0, cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    #v0=(Reference);
    iput v5, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    .line 358
    iput v5, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    .line 359
    iput v5, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    .line 361
    const-string v3, "container=-100 AND screenOrder=(SELECT MAX(screenOrder) FROM favorites JOIN screens ON (screen=screens._id) )"

    #v3=(Reference);
    invoke-static {p0, p1, v0, v3, v6}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher2/ScreenUtils$CellInfo;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher2/ScreenUtils$CellInfo;

    move-result-object v0

    .line 362
    iget v3, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    #v3=(Integer);
    const/16 v4, 0x12

    #v4=(PosByte);
    if-ge v3, v4, :cond_0

    move-object v3, v0

    .line 378
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Reference);
    return-object v3

    .line 366
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    new-array v2, v3, [Ljava/lang/String;

    .line 369
    .local v2, selectionArgs:[Ljava/lang/String;
    #v2=(Reference);
    const/16 v1, 0x11

    .local v1, i:I
    :goto_1
    #v1=(Integer);v3=(Integer);
    if-ltz v1, :cond_2

    .line 370
    iput v1, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    .line 371
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    #v3=(Reference);
    aput-object v3, v2, v5

    .line 372
    const-string v3, "container=-100 AND screenOrder=?"

    invoke-static {p0, p1, v0, v3, v2}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher2/ScreenUtils$CellInfo;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher2/ScreenUtils$CellInfo;

    move-result-object v0

    .line 373
    iget v3, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    #v3=(Integer);
    if-ne v3, v1, :cond_1

    move-object v3, v0

    .line 374
    #v3=(Reference);
    goto :goto_0

    .line 369
    :cond_1
    #v3=(Integer);
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    move-object v3, v6

    .line 378
    #v3=(Null);
    goto :goto_0
.end method

.method private static findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher2/ScreenUtils$CellInfo;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher2/ScreenUtils$CellInfo;
    .locals 8
    .parameter "context"
    .parameter "db"
    .parameter "guessed"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 405
    const-string v1, "favorites JOIN screens ON (screen=screens._id) "

    #v1=(Reference);
    sget-object v2, Lcom/android/launcher2/ScreenUtils$AppPlaceQuery;->COLUMNS:[Ljava/lang/String;

    #v2=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    const-string v7, "cellY ASC, cellX ASC"

    #v7=(Reference);
    move-object v0, p1

    #v0=(Reference);
    move-object v3, p3

    #v3=(Reference);
    move-object v4, p4

    #v4=(Reference);
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 414
    .local p0, c:Landroid/database/Cursor;
    move-object p1, p2

    .line 417
    .local p1, cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    const/4 p2, 0x4

    #p2=(PosByte);
    const/4 p3, 0x4

    :try_start_0
    #p3=(PosByte);
    filled-new-array {p2, p3}, [I

    .end local p2
    .end local p3
    move-result-object p2

    #p2=(Reference);
    sget-object p3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #p3=(Reference);
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Z

    .line 418
    .end local p4
    .local p2, occupied:[[Z
    :cond_0
    #p3=(Conflicted);p4=(Conflicted);
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    #p3=(Boolean);
    if-eqz p3, :cond_2

    .line 419
    const/4 p3, 0x0

    #p3=(Null);
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 420
    .local p3, screenOrder:I
    #p3=(Integer);
    iget p4, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    #p4=(Integer);
    if-le p3, p4, :cond_4

    .line 421
    iput p3, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    .line 427
    :cond_1
    const/4 p3, 0x1

    #p3=(One);
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    .end local p3           #screenOrder:I
    move-result p3

    #p3=(Integer);
    const/4 p4, 0x2

    #p4=(PosByte);
    invoke-interface {p0, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    #p4=(Integer);
    invoke-static {p0, p2, p3, p4}, Lcom/android/launcher2/ScreenUtils;->fillOccupied(Landroid/database/Cursor;[[ZII)V

    .line 430
    invoke-static {p2, p1}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell([[ZLcom/android/launcher2/ScreenUtils$CellInfo;)Z

    move-result p3

    #p3=(Boolean);
    if-nez p3, :cond_0

    .line 431
    iget p2, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    .end local p2           #occupied:[[Z
    #p2=(Integer);
    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    .line 432
    const/4 p2, 0x0

    #p2=(Null);
    iput p2, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    .line 433
    const/4 p2, 0x0

    iput p2, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    :cond_2
    :goto_0
    #p2=(Reference);p3=(Conflicted);p4=(Conflicted);
    if-eqz p0, :cond_3

    .line 439
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 443
    :cond_3
    return-object p1

    .line 422
    .restart local p2       #occupied:[[Z
    .restart local p3       #screenOrder:I
    :cond_4
    :try_start_1
    #p3=(Integer);p4=(Integer);
    iget p4, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge p3, p4, :cond_1

    goto :goto_0

    .line 438
    .end local p2           #occupied:[[Z
    .end local p3           #screenOrder:I
    :catchall_0
    #p2=(Conflicted);p3=(Conflicted);p4=(Conflicted);
    move-exception p1

    .end local p1           #cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    if-eqz p0, :cond_5

    .line 439
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1
.end method

.method static findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Lcom/android/launcher2/ScreenUtils$CellInfo;
    .locals 3
    .parameter "context"
    .parameter "db"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;)",
            "Lcom/android/launcher2/ScreenUtils$CellInfo;"
        }
    .end annotation

    .prologue
    .line 343
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    invoke-static {p0, p1}, Lcom/android/launcher2/ScreenUtils;->findEmptyCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/launcher2/ScreenUtils$CellInfo;

    move-result-object v0

    .line 345
    .local v0, cellInfo:Lcom/android/launcher2/ScreenUtils$CellInfo;
    #v0=(Reference);
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    #v1=(Integer);
    const/16 v2, 0x12

    #v2=(PosByte);
    if-lt v1, v2, :cond_1

    .line 346
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    const-string v1, "ScreenUtils"

    #v1=(Reference);
    const-string v2, "Too many apps installed, not adding to home screen"

    #v2=(Reference);
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v1, 0x0

    .line 352
    .end local p0
    :goto_0
    #v2=(Conflicted);
    return-object v1

    .line 350
    .restart local p0
    :cond_1
    #v1=(Integer);v2=(PosByte);
    iget v1, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    invoke-static {p0, p1, p2, v1}, Lcom/android/launcher2/ScreenUtils;->ensureEnoughScreensForCell(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V

    .line 351
    iget v1, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenOrder:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/ScreenUtils$ScreenInfo;

    iget-wide v1, p0, Lcom/android/launcher2/ScreenUtils$ScreenInfo;->screenId:J

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, v0, Lcom/android/launcher2/ScreenUtils$CellInfo;->screenId:J

    move-object v1, v0

    .line 352
    #v1=(Reference);
    goto :goto_0
.end method

.method private static findEmptyCell([[ZLcom/android/launcher2/ScreenUtils$CellInfo;)Z
    .locals 6
    .parameter "occupied"
    .parameter "cellInfo"

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v4, 0x4

    .line 447
    #v4=(PosByte);
    iget v0, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    .local v0, x:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);v3=(Conflicted);
    if-ge v0, v4, :cond_1

    .line 448
    aget-object v2, p0, v0

    #v2=(Null);
    iget v3, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    #v3=(Integer);
    aget-boolean v2, v2, v3

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 449
    iput v0, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    move v2, v5

    .line 463
    :goto_1
    #v1=(Conflicted);v3=(Conflicted);
    return v2

    .line 447
    :cond_0
    #v1=(Uninit);v3=(Integer);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);
    iget v2, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    #v2=(Integer);
    add-int/lit8 v1, v2, 0x1

    .local v1, y:I
    :goto_2
    #v1=(Integer);
    if-ge v1, v4, :cond_4

    .line 454
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_3

    .line 455
    aget-object v2, p0, v0

    #v2=(Null);
    aget-boolean v2, v2, v1

    #v2=(Boolean);
    if-nez v2, :cond_2

    .line 456
    iput v0, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellX:I

    .line 457
    iput v1, p1, Lcom/android/launcher2/ScreenUtils$CellInfo;->cellY:I

    move v2, v5

    .line 458
    #v2=(One);
    goto :goto_1

    .line 454
    :cond_2
    #v2=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 453
    :cond_3
    #v2=(Integer);
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 463
    :cond_4
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1
.end method

.method private static insertScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;IZ)Lcom/android/launcher2/ScreenUtils$ScreenInfo;
    .locals 6
    .parameter "context"
    .parameter "db"
    .parameter "order"
    .parameter "notify"

    .prologue
    .line 202
    new-instance v2, Landroid/content/ContentValues;

    #v2=(UninitRef);
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 203
    .local v2, v:Landroid/content/ContentValues;
    #v2=(Reference);
    const-string v3, "screenOrder"

    #v3=(Reference);
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 204
    const-string v3, "screens"

    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 205
    .local v0, id:J
    #v0=(LongLo);v1=(LongHi);
    const-string v3, "ScreenUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #v4=(Reference);
    const-string v5, "Added screen id "

    #v5=(Reference);
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz p3, :cond_0

    .line 209
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/launcher2/ScreenUtils;->notifyChange(Landroid/content/Context;Landroid/net/Uri;)V

    .line 212
    :cond_0
    new-instance v3, Lcom/android/launcher2/ScreenUtils$ScreenInfo;

    #v3=(UninitRef);
    invoke-direct {v3, v0, v1, p2}, Lcom/android/launcher2/ScreenUtils$ScreenInfo;-><init>(JI)V

    #v3=(Reference);
    return-object v3
.end method

.method static loadScreens(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 10
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
    const/4 v3, 0x0

    .line 382
    #v3=(Null);
    const-string v1, "screens"

    #v1=(Reference);
    sget-object v2, Lcom/android/launcher2/ScreenUtils$ScreensQuery;->COLUMNS:[Ljava/lang/String;

    #v2=(Reference);
    const-string v7, "screenOrder ASC"

    #v7=(Reference);
    move-object v0, p0

    #v0=(Reference);
    move-object v4, v3

    #v4=(Null);
    move-object v5, v3

    #v5=(Null);
    move-object v6, v3

    #v6=(Null);
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 391
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    #v8=(Reference);
    new-instance v9, Ljava/util/ArrayList;

    #v9=(UninitRef);
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    #v0=(Integer);
    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 392
    .local v9, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Integer);v9=(Reference);
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 393
    new-instance v0, Lcom/android/launcher2/ScreenUtils$ScreenInfo;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    const/4 v3, 0x1

    #v3=(One);
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #v3=(Integer);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/ScreenUtils$ScreenInfo;-><init>(JI)V

    #v0=(Reference);
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 397
    .end local v9           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v9=(Conflicted);
    move-exception v0

    #v0=(Reference);
    if-eqz v8, :cond_0

    .line 398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 397
    .restart local v9       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    :cond_1
    #v0=(Boolean);v9=(Reference);
    if-eqz v8, :cond_2

    .line 398
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9
.end method

.method private static notifyChange(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 217
    return-void
.end method

.method private static updateFavorite(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)V
    .locals 5
    .parameter "db"
    .parameter "id"
    .parameter "values"

    .prologue
    .line 131
    const-string v0, "favorites"

    #v0=(Reference);
    const-string v1, "_id=?"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/String;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-virtual {p0, v0, p3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    return-void
.end method

.method static updateHomeScreen(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ScreenUtils$ScreenInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    invoke-static {p0, p3}, Lcom/android/launcher2/ScreenUtils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 26
    .local v9, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    #v9=(Reference);
    new-instance v8, Ljava/util/ArrayList;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v8, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    #v8=(Reference);
    const-string v0, "ScreenUtils"

    #v0=(Reference);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Updating home screen for package "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v1, "favorites"

    const/4 v0, 0x1

    #v0=(One);
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    #v0=(Null);
    const-string v3, "_id"

    #v3=(Reference);
    aput-object v3, v2, v0

    const-string v3, "iconPackage=? AND itemType=0"

    const/4 v0, 0x1

    #v0=(One);
    new-array v4, v0, [Ljava/lang/String;

    #v4=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    aput-object p3, v4, v0

    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v0, p1

    #v0=(Reference);
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 37
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    #v2=(Conflicted);
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 38
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);
    move-exception p0

    .end local p0
    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw p0

    .line 41
    .restart local p0
    :cond_1
    if-eqz v0, :cond_2

    .line 42
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 46
    :cond_2
    const-string v0, "ScreenUtils"

    .end local v0           #cursor:Landroid/database/Cursor;
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    const-string v2, "Found existing items: "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, index:I
    #v0=(Null);
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    #v1=(Integer);
    if-lez v1, :cond_5

    .line 49
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .local p3, i$:Ljava/util/Iterator;
    move v6, v0

    .end local v0           #index:I
    .local v6, index:I
    :goto_1
    #v0=(Integer);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Integer);
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 50
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    #v0=(Integer);
    if-ge v6, v0, :cond_3

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #v2=(LongLo);v3=(LongHi);
    move-wide v4, v2

    :goto_2
    #v0=(Conflicted);v4=(LongLo);v5=(LongHi);
    move-object v0, p0

    #v0=(Reference);
    move-object v2, p1

    #v2=(Reference);
    move-object v3, p2

    #v3=(Reference);
    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/ScreenUtils;->addToHomeScreen(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;J)V

    .line 51
    add-int/lit8 v0, v6, 0x1

    .end local v6           #index:I
    .restart local v0       #index:I
    #v0=(Integer);
    move v6, v0

    .end local v0           #index:I
    .restart local v6       #index:I
    goto :goto_1

    .line 50
    :cond_3
    #v4=(Conflicted);v5=(Conflicted);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    move-wide v4, v2

    #v4=(LongLo);v5=(LongHi);
    goto :goto_2

    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    #v0=(Boolean);v1=(Conflicted);v2=(Reference);v3=(Reference);v4=(Conflicted);v5=(Conflicted);
    move p0, v6

    .line 58
    .end local v6           #index:I
    .end local p2           #screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    .end local p3           #i$:Ljava/util/Iterator;
    .local p0, index:I
    :goto_3
    #p0=(Integer);
    move p0, p0

    .local p0, i:I
    :goto_4
    #v0=(Conflicted);p2=(Conflicted);p3=(Conflicted);
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result p2

    #p2=(Integer);
    if-ge p0, p2, :cond_6

    .line 59
    const-string p2, "ScreenUtils"

    #p2=(Reference);
    new-instance p3, Ljava/lang/StringBuilder;

    #p3=(UninitRef);
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    #p3=(Reference);
    const-string v0, "Removing useless home screen item "

    #v0=(Reference);
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    #p2=(LongLo);p3=(LongHi);
    invoke-static {p1, p2, p3}, Lcom/android/launcher2/ScreenUtils;->deleteFavorite(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 58
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 54
    .restart local v0       #index:I
    .local p0, context:Landroid/content/Context;
    .restart local p2       #screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    .local p3, packageName:Ljava/lang/String;
    :cond_5
    #v0=(Null);v4=(Reference);v5=(Null);v6=(Null);p0=(Reference);p2=(Reference);p3=(Reference);
    const-string p0, "ScreenUtils"

    .end local p0           #context:Landroid/content/Context;
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #screens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ScreenUtils$ScreenInfo;>;"
    #p2=(UninitRef);
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #p2=(Reference);
    const-string v1, "No activities found for package "

    #v1=(Reference);
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    .end local v0           #index:I
    .local p0, index:I
    #p0=(Null);
    goto :goto_3

    .line 62
    .end local p3           #packageName:Ljava/lang/String;
    .local p0, i:I
    :cond_6
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Integer);p0=(Integer);p2=(Integer);p3=(Conflicted);
    return-void
.end method

*/}
