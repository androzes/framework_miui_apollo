package com.android.launcher2; class ShortcutInfo {/*

.class Lcom/android/launcher2/ShortcutInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "ShortcutInfo.java"


# instance fields
.field customIcon:Z

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/Bitmap;

.field onExternalStorage:Z

.field title:Ljava/lang/CharSequence;

.field usingFallbackIcon:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 76
    #p0=(Reference);
    const/4 v0, 0x1

    #v0=(One);
    iput v0, p0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 98
    #p0=(Reference);
    new-instance v0, Landroid/content/ComponentName;

    #v0=(UninitRef);
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #v1=(Reference);
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #v2=(Reference);
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v0, componentName:Landroid/content/ComponentName;
    #v0=(Reference);
    const-wide/16 v1, -0x1

    #v1=(LongLo);v2=(LongHi);
    iput-wide v1, p0, Lcom/android/launcher2/ShortcutInfo;->container:J

    .line 103
    const/high16 v1, 0x1020

    #v1=(Integer);
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 105
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #v1=(Reference);
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 106
    return-void
.end method


# virtual methods
.method public getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "iconCache"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    iget v1, p0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    #v1=(Integer);
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/Intent;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 116
    :cond_0
    #v1=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public load(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->load(Landroid/database/Cursor;)V

    .line 87
    iget-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    #v1=(Reference);
    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x2

    #v1=(PosByte);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 91
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    #v1=(One);
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return-void

    .line 92
    :catch_0
    #v0=(Uninit);v1=(Conflicted);
    move-exception v1

    #v1=(Reference);
    move-object v0, v1

    .line 93
    .local v0, e:Ljava/net/URISyntaxException;
    #v0=(Reference);
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x0

    #v3=(Null);
    const-string v6, "iconType"

    #v6=(Reference);
    const-string v5, "iconPackage"

    .line 136
    #v5=(Reference);
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 138
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    #v2=(Reference);
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 139
    .local v0, titleStr:Ljava/lang/String;
    :goto_0
    #v0=(Reference);
    const-string v2, "title"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 142
    .local v1, uri:Ljava/lang/String;
    :goto_1
    #v1=(Reference);
    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-boolean v2, p0, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    #v2=(Boolean);
    if-eqz v2, :cond_4

    .line 145
    const-string v2, "iconType"

    #v2=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/android/launcher2/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 163
    :cond_0
    :goto_2
    #v3=(Reference);
    iget v2, p0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    #v2=(Integer);
    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    #v2=(Reference);
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 165
    const-string v2, "iconPackage"

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_1
    :goto_3
    #v2=(Conflicted);
    return-void

    .end local v0           #titleStr:Ljava/lang/String;
    .end local v1           #uri:Ljava/lang/String;
    :cond_2
    #v0=(Uninit);v1=(Uninit);v2=(Reference);v3=(Null);
    move-object v0, v4

    .line 138
    #v0=(Null);
    goto :goto_0

    .restart local v0       #titleStr:Ljava/lang/String;
    :cond_3
    #v0=(Reference);
    move-object v1, v4

    .line 141
    #v1=(Null);
    goto :goto_1

    .line 149
    .restart local v1       #uri:Ljava/lang/String;
    :cond_4
    #v1=(Reference);v2=(Boolean);
    iget-boolean v2, p0, Lcom/android/launcher2/ShortcutInfo;->onExternalStorage:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_5

    .line 150
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    #v2=(Reference);
    invoke-static {p1, v2}, Lcom/android/launcher2/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 152
    :cond_5
    #v2=(Conflicted);
    const-string v2, "iconType"

    #v2=(Reference);
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    .line 155
    const-string v2, "iconPackage"

    iget-object v2, p0, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v2, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "iconResource"

    iget-object v3, p0, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    #v3=(Reference);
    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 167
    :cond_6
    const-string v2, "ShortcutInfo"

    const-string v3, "Application shortcut\'s intent or component is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .locals 2
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.intent.action.MAIN"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 130
    iget-object v0, p0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 131
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    .line 132
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/launcher2/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "ShortcutInfo(title="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/launcher2/ItemInfo;->unbind()V

    .line 180
    return-void
.end method

*/}
