package com.android.launcher2; class IconCache {/*

.class public Lcom/android/launcher2/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/IconCache$1;,
        Lcom/android/launcher2/IconCache$CacheEntry;
    }
.end annotation


# instance fields
.field private final mBubble:Lcom/android/launcher2/Utilities$BubbleText;

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/android/launcher2/LauncherApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    const/16 v1, 0x32

    #v1=(PosByte);
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    .line 56
    iput-object p1, p0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    .line 57
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 58
    new-instance v0, Lcom/android/launcher2/Utilities$BubbleText;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/launcher2/Utilities$BubbleText;-><init>(Landroid/content/Context;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mBubble:Lcom/android/launcher2/Utilities$BubbleText;

    .line 59
    invoke-direct {p0}, Lcom/android/launcher2/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 60
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Z)Lcom/android/launcher2/IconCache$CacheEntry;
    .locals 7
    .parameter "componentName"
    .parameter "info"
    .parameter "isShortcut"

    .prologue
    .line 135
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    #v4=(Reference);
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/IconCache$CacheEntry;

    .line 136
    .local v2, entry:Lcom/android/launcher2/IconCache$CacheEntry;
    if-nez v2, :cond_1

    .line 137
    new-instance v2, Lcom/android/launcher2/IconCache$CacheEntry;

    .end local v2           #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    #v2=(UninitRef);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-direct {v2, v4}, Lcom/android/launcher2/IconCache$CacheEntry;-><init>(Lcom/android/launcher2/IconCache$1;)V

    .line 139
    .restart local v2       #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    #v4=(Reference);
    invoke-virtual {v4, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 143
    iget-object v4, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 144
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 147
    :cond_0
    if-eqz p3, :cond_2

    .line 148
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #v5=(Reference);
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 149
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    #v0=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 150
    .local v3, r:Landroid/content/res/Resources;
    #v3=(Reference);
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    #v4=(Integer);
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 151
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    #v1=(Reference);
    invoke-static {v1}, Landroid/app/IconCustomizer;->generateShortcutIconDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 161
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #r:Landroid/content/res/Resources;
    :cond_1
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-object v2

    .line 154
    :cond_2
    #v0=(Uninit);v1=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 155
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    #v1=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    move-exception v4

    #v4=(Reference);
    goto :goto_0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    #v5=(One);
    const/4 v6, 0x0

    .line 63
    #v6=(Null);
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 64
    .local v2, d:Landroid/graphics/drawable/Drawable;
    #v2=(Reference);
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    #v3=(Integer);
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    #v4=(Integer);
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #v5=(Reference);
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 67
    .local v0, b:Landroid/graphics/Bitmap;
    #v0=(Reference);
    new-instance v1, Landroid/graphics/Canvas;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    .local v1, c:Landroid/graphics/Canvas;
    #v1=(Reference);
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    #v0=(Reference);
    monitor-enter v0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 105
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :catchall_0
    #v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"
    .parameter "resolveInfo"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    #v1=(Reference);
    monitor-enter v1

    .line 125
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 126
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    #v2=(Null);
    monitor-exit v1

    move-object v1, v2

    .line 130
    :goto_0
    #v0=(Conflicted);v2=(Reference);
    return-object v1

    .line 129
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {p0, p1, p2, v2}, Lcom/android/launcher2/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Z)Lcom/android/launcher2/IconCache$CacheEntry;

    move-result-object v0

    .line 130
    .local v0, entry:Lcom/android/launcher2/IconCache$CacheEntry;
    #v0=(Reference);
    iget-object v2, v0, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    #v2=(Reference);
    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 131
    .end local v0           #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    :catchall_0
    #v0=(Conflicted);
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getIcon(Landroid/content/Intent;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "intent"
    .parameter "itemType"

    .prologue
    const/4 v7, 0x1

    #v7=(One);
    const/4 v6, 0x0

    .line 109
    #v6=(Null);
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    #v3=(Reference);
    monitor-enter v3

    .line 110
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 111
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    #v2=(Reference);
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 113
    .local v0, component:Landroid/content/ComponentName;
    #v0=(Reference);
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v3

    move-object v3, v4

    .line 119
    :goto_0
    #v1=(Conflicted);
    return-object v3

    .line 117
    :cond_1
    #v1=(Uninit);
    if-ne p2, v7, :cond_2

    move v4, v7

    :goto_1
    #v4=(Boolean);
    invoke-direct {p0, v0, v2, v4}, Lcom/android/launcher2/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Z)Lcom/android/launcher2/IconCache$CacheEntry;

    move-result-object v1

    .line 119
    .local v1, entry:Lcom/android/launcher2/IconCache$CacheEntry;
    #v1=(Reference);
    iget-object v4, v1, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    #v4=(Reference);
    monitor-exit v3

    move-object v3, v4

    goto :goto_0

    .end local v1           #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    :cond_2
    #v1=(Uninit);
    move v4, v6

    .line 117
    #v4=(Null);
    goto :goto_1

    .line 120
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v4

    #v4=(Reference);
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public remove(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 86
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    #v3=(Reference);
    monitor-enter v3

    .line 87
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, toBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/content/ComponentName;

    .line 89
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    .line 90
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #toBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);
    move-exception v4

    #v4=(Reference);
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 93
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #toBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_1
    :try_start_1
    #v1=(Reference);v2=(Reference);v4=(Boolean);
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    #v4=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/content/ComponentName;

    .line 94
    .restart local v0       #component:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    #v4=(Reference);
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 96
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_2
    #v0=(Conflicted);v4=(Boolean);
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    return-void
.end method

*/}
