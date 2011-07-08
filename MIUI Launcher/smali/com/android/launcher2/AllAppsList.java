package com.android.launcher2; class AllAppsList {/*

.class Lcom/android/launcher2/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AllAppsList$PositionQuery;,
        Lcom/android/launcher2/AllAppsList$RemoveInfo;
    }
.end annotation


# static fields
.field private static sSelectionArgs2:[Ljava/lang/String;


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AllAppsList$RemoveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [Ljava/lang/String;

    #v0=(Reference);
    sput-object v0, Lcom/android/launcher2/AllAppsList;->sSelectionArgs2:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    #p0=(Reference);
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    const/4 v1, 0x3

    #v1=(PosByte);
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method private addApp(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .parameter "context"
    .parameter "info"

    .prologue
    .line 82
    new-instance v0, Lcom/android/launcher2/ShortcutInfo;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2}, Lcom/android/launcher2/ShortcutInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 83
    .local v0, ai:Lcom/android/launcher2/ShortcutInfo;
    #v0=(Reference);
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #v1=(Reference);
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/android/launcher2/AllAppsList;->loadPosition(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher2/ShortcutInfo;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ShortcutInfo;)V

    .line 85
    return-void
.end method

.method static loadPosition(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher2/ShortcutInfo;)V
    .locals 9
    .parameter "context"
    .parameter "packageName"
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    #v4=(One);
    const/4 v3, 0x0

    .line 111
    #v3=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    .local v0, cr:Landroid/content/ContentResolver;
    #v0=(Reference);
    sget-object v1, Lcom/android/launcher2/AllAppsList;->sSelectionArgs2:[Ljava/lang/String;

    #v1=(Reference);
    iget-object v2, p2, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    #v2=(Reference);
    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 113
    sget-object v1, Lcom/android/launcher2/AllAppsList;->sSelectionArgs2:[Ljava/lang/String;

    aput-object p1, v1, v4

    .line 114
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher2/AllAppsList$PositionQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "intent=? AND iconPackage=? AND itemType=0"

    #v3=(Reference);
    sget-object v4, Lcom/android/launcher2/AllAppsList;->sSelectionArgs2:[Ljava/lang/String;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    .local v6, cursor:Landroid/database/Cursor;
    #v6=(Reference);
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x4

    #v1=(PosByte);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p2, Lcom/android/launcher2/ShortcutInfo;->id:J

    .line 119
    const/4 v1, 0x0

    #v1=(Null);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #v1=(Integer);
    int-to-long v1, v1

    #v1=(LongLo);
    iput-wide v1, p2, Lcom/android/launcher2/ShortcutInfo;->screenId:J

    .line 120
    const/4 v1, 0x1

    #v1=(One);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #v1=(Integer);
    iput v1, p2, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    .line 121
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #v1=(Integer);
    iput v1, p2, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    .line 122
    const/4 v1, 0x1

    #v1=(One);
    iput v1, p2, Lcom/android/launcher2/ShortcutInfo;->spanY:I

    iput v1, p2, Lcom/android/launcher2/ShortcutInfo;->spanX:I

    .line 123
    const/4 v1, 0x3

    #v1=(PosByte);
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    #v1=(LongLo);
    iput-wide v1, p2, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 124
    const-string v1, "AllAppsList"

    #v1=(Reference);
    const-string v2, "Loaded application %s at (%d, %d) of screen %d under container %d"

    #v2=(Reference);
    const/4 v3, 0x5

    #v3=(PosByte);
    new-array v3, v3, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget-object v5, p2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x1

    #v4=(One);
    iget v5, p2, Lcom/android/launcher2/ShortcutInfo;->cellX:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x2

    #v4=(PosByte);
    iget v5, p2, Lcom/android/launcher2/ShortcutInfo;->cellY:I

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v7, p2, Lcom/android/launcher2/ShortcutInfo;->screenId:J

    #v7=(LongLo);v8=(LongHi);
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-wide v7, p2, Lcom/android/launcher2/ShortcutInfo;->container:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :goto_0
    #v4=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    if-eqz v6, :cond_0

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_0
    return-void

    .line 128
    :cond_1
    #v1=(Conflicted);v4=(Reference);v5=(Null);v7=(Uninit);v8=(Uninit);
    const-wide/16 v1, -0x1

    :try_start_1
    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p2, Lcom/android/launcher2/ShortcutInfo;->screenId:J

    .line 129
    const-string v1, "AllAppsList"

    #v1=(Reference);
    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "Can\'t load postion for app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    move-exception v1

    #v1=(Reference);
    if-eqz v6, :cond_2

    .line 133
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method


# virtual methods
.method public add(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 72
    invoke-static {p1, p2}, Lcom/android/launcher2/ScreenUtils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 74
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    #v2=(Reference);
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    #v3=(Integer);
    if-lez v3, :cond_0

    .line 75
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v1=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 76
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/AllAppsList;->addApp(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    goto :goto_0

    .line 79
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    #v0=(Reference);
    new-instance v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    #v1=(UninitRef);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher2/AllAppsList$RemoveInfo;-><init>(Lcom/android/launcher2/AllAppsList;Ljava/lang/String;Z)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    #v0=(Reference);
    new-instance v1, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    #v1=(UninitRef);
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {v1, p0, p2, v2}, Lcom/android/launcher2/AllAppsList$RemoveInfo;-><init>(Lcom/android/launcher2/AllAppsList;Ljava/lang/String;Z)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    return-void
.end method

*/}
