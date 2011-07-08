package com.android.launcher2; class LiveFolderAdapter {/*

.class Lcom/android/launcher2/LiveFolderAdapter;
.super Landroid/widget/CursorAdapter;
.source "LiveFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mCustomIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsList:Z

.field private final mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/LiveFolderInfo;Landroid/database/Cursor;)V
    .locals 3
    .parameter "launcher"
    .parameter "info"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 51
    #v2=(One);
    invoke-direct {p0, p1, p3, v2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 45
    #p0=(Reference);
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    .line 52
    iget v0, p2, Lcom/android/launcher2/LiveFolderInfo;->displayMode:I

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIsList:Z

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    iput-object p1, p0, Lcom/android/launcher2/LiveFolderAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/LiveFolderAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher2/LiveFolderAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->startManagingCursor(Landroid/database/Cursor;)V

    .line 57
    return-void

    .line 52
    :cond_0
    #v0=(Integer);v1=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private loadIcon(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;)Landroid/graphics/drawable/Drawable;
    .locals 15
    .parameter "context"
    .parameter "cursor"
    .parameter "holder"

    .prologue
    .line 131
    const/4 v4, 0x0

    .line 132
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    #v4=(Null);
    const/4 v3, 0x0

    .line 134
    .local v3, data:[B
    #v3=(Null);
    move-object/from16 v0, p3

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    #v0=(Integer);
    move v12, v0

    #v12=(Integer);
    const/4 v13, -0x1

    #v13=(Byte);
    if-eq v12, v13, :cond_0

    .line 135
    move-object/from16 v0, p3

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    #v0=(Integer);
    move v12, v0

    move-object/from16 v0, p2

    #v0=(Reference);
    move v1, v12

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 138
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Reference);
    if-eqz v3, :cond_4

    .line 139
    iget-object v12, p0, Lcom/android/launcher2/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    #v12=(Reference);
    move-object/from16 v0, p3

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->id:J

    #v0=(LongLo);v1=(LongHi);
    move-wide v13, v0

    #v13=(LongLo);v14=(LongHi);
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    #v13=(Reference);
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    #v8=(Reference);
    check-cast v8, Ljava/lang/ref/SoftReference;

    .line 140
    .local v8, reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v8, :cond_1

    .line 141
    invoke-virtual {v8}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    #v4=(Reference);
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 144
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    if-nez v4, :cond_3

    .line 145
    const/4 v12, 0x0

    #v12=(Null);
    array-length v13, v3

    #v13=(Integer);
    invoke-static {v3, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    .local v2, bitmap:Landroid/graphics/Bitmap;
    #v2=(Reference);
    iget-object v12, p0, Lcom/android/launcher2/LiveFolderAdapter;->mContext:Landroid/content/Context;

    #v12=(Reference);
    invoke-static {v2, v12}, Lcom/android/launcher2/Utilities;->resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 147
    .local v9, resampled:Landroid/graphics/Bitmap;
    #v9=(Reference);
    if-eq v2, v9, :cond_2

    .line 149
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 151
    :cond_2
    new-instance v4, Lcom/android/launcher2/FastBitmapDrawable;

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    #v4=(UninitRef);
    invoke-direct {v4, v9}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    #v4=(Reference);
    iget-object v12, p0, Lcom/android/launcher2/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    move-object/from16 v0, p3

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->id:J

    #v0=(LongLo);
    move-wide v13, v0

    #v13=(LongLo);
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    #v13=(Reference);
    new-instance v14, Ljava/lang/ref/SoftReference;

    #v14=(UninitRef);
    invoke-direct {v14, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #v14=(Reference);
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #reference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    .end local v9           #resampled:Landroid/graphics/Bitmap;
    :cond_3
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);
    return-object v4

    .line 154
    :cond_4
    #v2=(Uninit);v4=(Null);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Integer);v13=(Byte);v14=(Uninit);
    move-object/from16 v0, p3

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    #v0=(Integer);
    move v12, v0

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    move-object/from16 v0, p3

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    #v0=(Integer);
    move v12, v0

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    .line 155
    move-object/from16 v0, p3

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    #v0=(Integer);
    move v12, v0

    move-object/from16 v0, p2

    #v0=(Reference);
    move v1, v12

    #v1=(Integer);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 156
    .local v10, resource:Ljava/lang/String;
    #v10=(Reference);
    iget-object v12, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    #v12=(Reference);
    invoke-virtual {v12, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    #v4=(Reference);
    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 157
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_3

    .line 159
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 160
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    #v7=(Reference);
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    #v0=(Integer);
    move v12, v0

    #v12=(Integer);
    move-object/from16 v0, p2

    #v0=(Reference);
    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    #v12=(Reference);
    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    .line 162
    .local v11, resources:Landroid/content/res/Resources;
    #v11=(Reference);
    const/4 v12, 0x0

    #v12=(Null);
    const/4 v13, 0x0

    #v13=(Null);
    invoke-virtual {v11, v10, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 164
    .local v6, id:I
    #v6=(Integer);
    new-instance v5, Lcom/android/launcher2/FastBitmapDrawable;

    #v5=(UninitRef);
    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    #v12=(Reference);
    iget-object v13, p0, Lcom/android/launcher2/LiveFolderAdapter;->mContext:Landroid/content/Context;

    #v13=(Reference);
    invoke-static {v12, v13}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    :try_start_1
    #v5=(Reference);
    iget-object v12, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    invoke-virtual {v12, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 169
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 167
    .end local v6           #id:I
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    .end local v11           #resources:Landroid/content/res/Resources;
    :catch_0
    #v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);
    move-exception v12

    #v12=(Reference);
    goto :goto_0

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #id:I
    .restart local v7       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v11       #resources:Landroid/content/res/Resources;
    :catch_1
    #v5=(Reference);v6=(Integer);v7=(Reference);v11=(Reference);v13=(Reference);
    move-exception v12

    move-object v4, v5

    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method static query(Landroid/content/Context;Lcom/android/launcher2/LiveFolderInfo;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v2, 0x0

    .line 60
    #v2=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    iget-object v1, p1, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    #v1=(Reference);
    const-string v5, "name ASC"

    #v5=(Reference);
    move-object v3, v2

    #v3=(Null);
    move-object v4, v2

    #v4=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    #v10=(One);
    const/4 v9, -0x1

    #v9=(Byte);
    const/4 v8, 0x0

    #v8=(Null);
    const/16 v7, 0x8

    #v7=(PosByte);
    const/4 v6, 0x0

    .line 92
    #v6=(Null);
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;

    .line 94
    .local v2, holder:Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;
    iget v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->idIndex:I

    #v4=(Integer);
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    iput-wide v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->id:J

    .line 95
    invoke-direct {p0, p2, p3, v2}, Lcom/android/launcher2/LiveFolderAdapter;->loadIcon(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 97
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    #v3=(Reference);
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    #v4=(Reference);
    iget v5, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->nameIndex:I

    #v5=(Integer);
    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-boolean v4, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIsList:Z

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 100
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    #v4=(Reference);
    invoke-virtual {v4, v8, v3, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v5=(Conflicted);
    iget v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intentIndex:I

    #v4=(Integer);
    if-eq v4, v9, :cond_6

    .line 121
    :try_start_0
    iget v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intentIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #v4=(Reference);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    #v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 102
    :cond_0
    #v0=(Uninit);v1=(Uninit);v4=(Boolean);v5=(Reference);
    if-eqz v3, :cond_2

    move v1, v10

    .line 103
    .local v1, hasIcon:Z
    :goto_2
    #v1=(Boolean);
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    #v4=(Reference);
    if-eqz v1, :cond_3

    move v5, v6

    :goto_3
    #v5=(PosByte);
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    if-eqz v1, :cond_1

    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_1
    iget v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    #v4=(Integer);
    if-eq v4, v9, :cond_5

    .line 107
    iget v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, description:Ljava/lang/String;
    #v0=(Reference);
    if-eqz v0, :cond_4

    .line 109
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    #v4=(Reference);
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .end local v0           #description:Ljava/lang/String;
    .end local v1           #hasIcon:Z
    :cond_2
    #v0=(Uninit);v1=(Uninit);v4=(Boolean);v5=(Reference);
    move v1, v6

    .line 102
    #v1=(Null);
    goto :goto_2

    .restart local v1       #hasIcon:Z
    :cond_3
    #v1=(Boolean);v4=(Reference);
    move v5, v7

    .line 103
    #v5=(PosByte);
    goto :goto_3

    .line 112
    .restart local v0       #description:Ljava/lang/String;
    :cond_4
    #v0=(Reference);v4=(Integer);
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    #v4=(Reference);
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 115
    .end local v0           #description:Ljava/lang/String;
    :cond_5
    #v0=(Uninit);v4=(Integer);
    iget-object v4, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    #v4=(Reference);
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 126
    .end local v1           #hasIcon:Z
    :cond_6
    #v0=(Conflicted);v1=(Conflicted);v4=(Integer);v5=(Conflicted);
    iput-boolean v10, v2, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->useBaseIntent:Z

    goto :goto_1

    .line 122
    :catch_0
    #v4=(Conflicted);
    move-exception v4

    #v4=(Reference);
    goto :goto_1
.end method

.method cleanup()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 177
    #v6=(Null);
    iget-object v5, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    #v2=(Reference);v3=(Conflicted);v5=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 178
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 180
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    :cond_0
    #v3=(Conflicted);
    iget-object v5, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIcons:Ljava/util/HashMap;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 182
    iget-object v5, p0, Lcom/android/launcher2/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    #v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 183
    .local v4, icon:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 184
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 185
    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_1

    .line 188
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #icon:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_2
    #v1=(Conflicted);v4=(Conflicted);
    iget-object v5, p0, Lcom/android/launcher2/LiveFolderAdapter;->mCustomIcons:Ljava/util/HashMap;

    #v5=(Reference);
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher2/LiveFolderAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 191
    .local v0, cursor:Landroid/database/Cursor;
    #v0=(Reference);
    if-eqz v0, :cond_3

    .line 193
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v5, p0, Lcom/android/launcher2/LiveFolderAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5, v0}, Lcom/android/launcher2/Launcher;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 198
    :cond_3
    return-void

    .line 195
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/launcher2/LiveFolderAdapter;->mLauncher:Lcom/android/launcher2/Launcher;

    #v6=(Reference);
    invoke-virtual {v6, v0}, Lcom/android/launcher2/Launcher;->stopManagingCursor(Landroid/database/Cursor;)V

    throw v5
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 66
    #v4=(Null);
    new-instance v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;-><init>()V

    .line 68
    .local v0, holder:Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;
    #v0=(Reference);
    iget-boolean v2, p0, Lcom/android/launcher2/LiveFolderAdapter;->mIsList:Z

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/android/launcher2/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    #v2=(Reference);
    const v3, 0x7f030002

    #v3=(Integer);
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 76
    .end local p0
    .local v1, view:Landroid/view/View;
    :goto_0
    #v1=(Reference);v2=(Conflicted);
    const v2, 0x7f080006

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 78
    const-string v2, "_id"

    #v2=(Reference);
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->idIndex:I

    .line 79
    const-string v2, "name"

    #v2=(Reference);
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->nameIndex:I

    .line 80
    const-string v2, "description"

    #v2=(Reference);
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->descriptionIndex:I

    .line 81
    const-string v2, "intent"

    #v2=(Reference);
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->intentIndex:I

    .line 82
    const-string v2, "icon_bitmap"

    #v2=(Reference);
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconBitmapIndex:I

    .line 83
    const-string v2, "icon_resource"

    #v2=(Reference);
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconResourceIndex:I

    .line 84
    const-string v2, "icon_package"

    #v2=(Reference);
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    #v2=(Integer);
    iput v2, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->iconPackageIndex:I

    .line 86
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    return-object v1

    .line 71
    .end local v1           #view:Landroid/view/View;
    .restart local p0
    :cond_0
    #v1=(Uninit);v2=(Boolean);v3=(Uninit);
    iget-object v2, p0, Lcom/android/launcher2/LiveFolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    #v2=(Reference);
    const v3, 0x7f030003

    #v3=(Integer);
    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    .restart local v1       #view:Landroid/view/View;
    #v1=(Reference);
    const v2, 0x7f080008

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 73
    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/launcher2/LiveFolderAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_0
.end method

*/}
