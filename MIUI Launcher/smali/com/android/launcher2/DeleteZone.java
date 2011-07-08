package com.android.launcher2; class DeleteZone {/*

.class public Lcom/android/launcher2/DeleteZone;
.super Landroid/widget/ImageView;
.source "DeleteZone.java"

# interfaces
.implements Lcom/android/launcher2/DragController$DragListener;
.implements Lcom/android/launcher2/DropTarget;


# instance fields
.field private mDragController:Lcom/android/launcher2/DragController;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mLocation:[I

.field private final mRegion:Landroid/graphics/RectF;

.field private mTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mTrashMode:Z

.field private final mTrashPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DeleteZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    #p0=(Reference);
    const/4 v1, 0x2

    #v1=(PosByte);
    new-array v1, v1, [I

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/DeleteZone;->mLocation:[I

    .line 47
    new-instance v1, Landroid/graphics/RectF;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/DeleteZone;->mRegion:Landroid/graphics/RectF;

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    #v1=(Reference);
    iput-object v1, p0, Lcom/android/launcher2/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 59
    .local v0, srcColor:I
    #v0=(Integer);
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    #v2=(UninitRef);
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    #v3=(Reference);
    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    #v2=(Reference);
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeleteZone;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/DeleteZone;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/DeleteZone;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    #v0=(Reference);
    return-object v0
.end method

.method private isSystemPackage(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x0

    .line 222
    :try_start_0
    #v3=(Null);
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 223
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    #v0=(Reference);
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #v1=(Integer);
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 226
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);
    return v1

    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    #v0=(Reference);v1=(Integer);v2=(Null);
    move v1, v3

    .line 223
    #v1=(Null);
    goto :goto_0

    .line 224
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    move-exception v1

    #v1=(Reference);
    move v1, v3

    .line 226
    #v1=(Null);
    goto :goto_0
.end method

.method private startUninstallDialog(Lcom/android/launcher2/ShortcutInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    const/4 v6, 0x1

    .line 166
    #v6=(One);
    new-instance v0, Landroid/app/AlertDialog$Builder;

    #v0=(UninitRef);
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    #v0=(Reference);
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 168
    iget-object v1, p1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0034

    #v2=(Integer);
    new-array v3, v6, [Ljava/lang/Object;

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    iget-object v5, p1, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    #v5=(Reference);
    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 171
    new-instance v1, Lcom/android/launcher2/DeleteZone$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, p1}, Lcom/android/launcher2/DeleteZone$1;-><init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/DeleteZone$2;

    #v2=(UninitRef);
    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/DeleteZone$2;-><init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0035

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/launcher2/DeleteZone$3;

    #v2=(UninitRef);
    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/DeleteZone$3;-><init>(Lcom/android/launcher2/DeleteZone;Lcom/android/launcher2/ShortcutInfo;)V

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 191
    return-void
.end method

.method private startUninstallWidgetDialog(Ljava/lang/String;)V
    .locals 9
    .parameter "packageName"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 194
    #v7=(Null);
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 196
    .local v3, pm:Landroid/content/pm/PackageManager;
    #v3=(Reference);
    const/4 v0, 0x0

    .line 198
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    #v0=(Null);
    const/4 v4, 0x0

    :try_start_0
    #v4=(Null);
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 201
    :goto_0
    #v0=(Reference);v4=(Reference);
    if-nez v0, :cond_0

    .line 218
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 204
    :cond_0
    #v1=(Uninit);v2=(Uninit);v5=(Uninit);v6=(Uninit);
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 205
    .local v2, label:Ljava/lang/CharSequence;
    #v2=(Reference);
    new-instance v1, Landroid/app/AlertDialog$Builder;

    #v1=(UninitRef);
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    #v1=(Reference);
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 208
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0034

    #v5=(Integer);
    new-array v6, v8, [Ljava/lang/Object;

    #v6=(Reference);
    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 210
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v5, 0x7f0c000d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0035

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/DeleteZone$4;

    #v5=(UninitRef);
    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/DeleteZone$4;-><init>(Lcom/android/launcher2/DeleteZone;Ljava/lang/String;)V

    #v5=(Reference);
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 199
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #label:Ljava/lang/CharSequence;
    :catch_0
    #v0=(Null);v1=(Uninit);v2=(Uninit);v4=(Null);v5=(Uninit);v6=(Uninit);
    move-exception v4

    #v4=(Reference);
    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 4
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 77
    iget-wide v0, p7, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x1

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_0

    iget v0, p7, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    const/4 v1, 0x2

    #v1=(PosByte);
    if-eq v0, v1, :cond_1

    :cond_0
    #v1=(Conflicted);
    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Integer);v1=(PosByte);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashMode:Z

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashMode:Z

    .line 264
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mDragController:Lcom/android/launcher2/DragController;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 266
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 231
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher2/DeleteZone;->acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    #v0=(Reference);
    const/16 v1, 0xfa

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTrashPaint:Landroid/graphics/Paint;

    invoke-virtual {p6, v0}, Lcom/android/launcher2/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 235
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 243
    invoke-virtual/range {p0 .. p7}, Lcom/android/launcher2/DeleteZone;->acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    #v0=(Reference);
    const/16 v1, 0xfa

    #v1=(PosShort);
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 245
    const/4 v0, 0x0

    #v0=(Null);
    invoke-virtual {p6, v0}, Lcom/android/launcher2/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 247
    :cond_0
    #v0=(Boolean);v1=(Conflicted);
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 239
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Lcom/android/launcher2/ItemInfo;I)V
    .locals 10
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    const/4 v9, 0x1

    #v9=(One);
    const/4 v2, 0x0

    .line 250
    #v2=(Null);
    if-eqz p2, :cond_0

    const/4 v6, 0x0

    #v6=(Null);
    move-object v0, p0

    #v0=(Reference);
    move-object v1, p1

    #v1=(Reference);
    move v3, v2

    #v3=(Null);
    move v4, v2

    #v4=(Null);
    move v5, v2

    #v5=(Null);
    move-object v7, p2

    #v7=(Reference);
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DeleteZone;->acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 251
    iput-boolean v9, p0, Lcom/android/launcher2/DeleteZone;->mTrashMode:Z

    .line 252
    iget-object v8, p0, Lcom/android/launcher2/DeleteZone;->mLocation:[I

    .line 253
    .local v8, location:[I
    #v8=(Reference);
    invoke-virtual {p0, v8}, Lcom/android/launcher2/DeleteZone;->getLocationOnScreen([I)V

    .line 254
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mRegion:Landroid/graphics/RectF;

    #v0=(Reference);
    aget v1, v8, v2

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    aget v3, v8, v9

    #v3=(Integer);
    int-to-float v3, v3

    #v3=(Float);
    aget v2, v8, v2

    #v2=(Integer);
    iget v4, p0, Lcom/android/launcher2/DeleteZone;->mRight:I

    #v4=(Integer);
    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/launcher2/DeleteZone;->mLeft:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    #v2=(Float);
    aget v4, v8, v9

    iget v5, p0, Lcom/android/launcher2/DeleteZone;->mBottom:I

    #v5=(Integer);
    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/DeleteZone;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    #v4=(Float);
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 256
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mRegion:Landroid/graphics/RectF;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 257
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 259
    .end local v8           #location:[I
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Lcom/android/launcher2/ItemInfo;)Z
    .locals 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 83
    const/4 v3, 0x1

    .line 85
    .local v3, deleteSuccess:Z
    #v3=(One);
    move-object/from16 v0, p7

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    move-wide v10, v0

    #v10=(LongLo);v11=(LongHi);
    const-wide/16 v12, -0x1

    #v12=(LongLo);v13=(LongHi);
    cmp-long v10, v10, v12

    #v10=(Byte);
    if-nez v10, :cond_0

    move-object/from16 v0, p7

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    move v10, v0

    #v10=(Integer);
    const/4 v11, 0x6

    #v11=(PosByte);
    if-eq v10, v11, :cond_0

    .line 86
    const/4 v10, 0x1

    .line 162
    .end local p7
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Boolean);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Boolean);v11=(Integer);
    return v10

    .line 88
    .restart local p7
    :cond_0
    #v1=(LongHi);v2=(Uninit);v3=(One);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Integer);v11=(Conflicted);
    move-object/from16 v0, p7

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/launcher2/ItemInfo;->container:J

    #v0=(LongLo);
    move-wide v10, v0

    #v10=(LongLo);v11=(LongHi);
    const-wide/16 v12, -0x64

    cmp-long v10, v10, v12

    #v10=(Byte);
    if-nez v10, :cond_1

    .line 89
    move-object/from16 v0, p7

    #v0=(Reference);
    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    #v0=(Boolean);
    move v10, v0

    #v10=(Boolean);
    if-eqz v10, :cond_1

    .line 90
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v10=(Reference);
    move-object/from16 v0, p7

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v2, v0

    #v2=(Reference);
    invoke-virtual {v10, v2}, Lcom/android/launcher2/Launcher;->removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 94
    :cond_1
    #v0=(Conflicted);v2=(Conflicted);v10=(Conflicted);
    move-object/from16 v0, p7

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    move v10, v0

    #v10=(Integer);
    const/4 v11, 0x2

    #v11=(PosByte);
    if-ne v10, v11, :cond_6

    .line 95
    move-object/from16 v0, p7

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v9, v0

    .line 96
    .local v9, userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    #v9=(Reference);
    invoke-virtual {v9}, Lcom/android/launcher2/UserFolderInfo;->count()I

    move-result v10

    if-nez v10, :cond_5

    .line 97
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v10=(Reference);
    invoke-static {v10, v9}, Lcom/android/launcher2/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)Z

    move-result v3

    .line 98
    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 99
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v10, v9}, Lcom/android/launcher2/Launcher;->removeFolder(Lcom/android/launcher2/FolderInfo;)V

    .line 113
    .end local v9           #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    :cond_2
    :goto_1
    #v0=(Conflicted);v5=(Conflicted);v9=(Conflicted);v10=(Conflicted);
    move-object/from16 v0, p7

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    move v10, v0

    #v10=(Integer);
    if-nez v10, :cond_a

    .line 114
    move-object/from16 v0, p7

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v4, v0

    .line 115
    .local v4, info:Lcom/android/launcher2/ShortcutInfo;
    #v4=(Reference);
    iget-object v10, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    #v10=(Reference);
    if-eqz v10, :cond_3

    iget-object v10, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_7

    .line 116
    :cond_3
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v0, v10

    move-object/from16 v1, p7

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    move-result v3

    .line 150
    .end local v4           #info:Lcom/android/launcher2/ShortcutInfo;
    :goto_2
    #v1=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v10=(Conflicted);
    instance-of v10, p1, Lcom/android/launcher2/UserFolder;

    #v10=(Boolean);
    if-eqz v10, :cond_4

    .line 151
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/UserFolder;

    move-object v8, v0

    .line 152
    .local v8, userFolder:Lcom/android/launcher2/UserFolder;
    #v8=(Reference);
    invoke-virtual {v8}, Lcom/android/launcher2/UserFolder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v9

    #v9=(Reference);
    check-cast v9, Lcom/android/launcher2/UserFolderInfo;

    .line 155
    .restart local v9       #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    check-cast p7, Lcom/android/launcher2/ShortcutInfo;

    .end local p7
    move-object v0, v9

    move-object/from16 v1, p7

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/UserFolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 157
    .end local v8           #userFolder:Lcom/android/launcher2/UserFolder;
    .end local v9           #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    :cond_4
    #v1=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    if-nez v3, :cond_e

    .line 158
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v10=(Reference);
    const v11, 0x7f0c003c

    #v11=(Integer);
    invoke-virtual {v10, v11}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 159
    const/4 v10, 0x0

    #v10=(Null);
    goto :goto_0

    .line 102
    .restart local v9       #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    .restart local p7
    :cond_5
    #v1=(LongHi);v3=(One);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Reference);v10=(Integer);v11=(PosByte);
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v10=(Reference);
    const v11, 0x7f0c0036

    #v11=(Integer);
    invoke-virtual {v10, v11}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 103
    const/4 v10, 0x0

    #v10=(Null);
    goto/16 :goto_0

    .line 105
    .end local v9           #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    :cond_6
    #v0=(Integer);v9=(Uninit);v10=(Integer);v11=(PosByte);
    move-object/from16 v0, p7

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    move v10, v0

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2

    .line 106
    move-object/from16 v0, p7

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v5, v0

    .line 107
    .local v5, launcherAppWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    #v5=(Reference);
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v10=(Reference);
    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v2

    .line 108
    .local v2, appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    #v2=(Reference);
    if-eqz v2, :cond_2

    .line 109
    iget v10, v5, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    #v10=(Integer);
    invoke-virtual {v2, v10}, Lcom/android/launcher2/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_1

    .line 118
    .end local v2           #appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v5           #launcherAppWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .restart local v4       #info:Lcom/android/launcher2/ShortcutInfo;
    :cond_7
    #v2=(Conflicted);v3=(Boolean);v4=(Reference);v5=(Conflicted);v9=(Conflicted);v10=(Reference);
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 119
    .local v7, pm:Landroid/content/pm/PackageManager;
    #v7=(Reference);
    iget-object v10, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    #v11=(Null);
    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    if-nez v10, :cond_8

    .line 121
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    move-result v3

    goto :goto_2

    .line 123
    :cond_8
    iget-object v10, v4, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/launcher2/DeleteZone;->isSystemPackage(Ljava/lang/String;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_9

    .line 125
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v10=(Reference);
    const v11, 0x7f0c0033

    #v11=(Integer);
    invoke-virtual {v10, v11}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 126
    const/4 v10, 0x0

    #v10=(Null);
    goto/16 :goto_0

    .line 128
    :cond_9
    #v10=(Boolean);v11=(Null);
    invoke-direct {p0, v4}, Lcom/android/launcher2/DeleteZone;->startUninstallDialog(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_2

    .line 132
    .end local v4           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :cond_a
    #v0=(Integer);v4=(Uninit);v7=(Uninit);v10=(Integer);v11=(PosByte);
    move-object/from16 v0, p7

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    move v10, v0

    const/4 v11, 0x6

    if-ne v10, v11, :cond_c

    .line 133
    move-object/from16 v0, p7

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;

    move-object v4, v0

    .line 134
    .local v4, info:Lcom/android/launcher2/LauncherAppWidgetProviderInfo;
    #v4=(Reference);
    iget-object v10, v4, Lcom/android/launcher2/LauncherAppWidgetProviderInfo;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #v10=(Reference);
    iget-object v10, v10, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, packageName:Ljava/lang/String;
    #v6=(Reference);
    invoke-direct {p0, v6}, Lcom/android/launcher2/DeleteZone;->isSystemPackage(Ljava/lang/String;)Z

    move-result v10

    #v10=(Boolean);
    if-eqz v10, :cond_b

    .line 137
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v10=(Reference);
    const v11, 0x7f0c0033

    #v11=(Integer);
    invoke-virtual {v10, v11}, Lcom/android/launcher2/Launcher;->showError(I)V

    .line 138
    const/4 v10, 0x0

    #v10=(Null);
    goto/16 :goto_0

    .line 140
    :cond_b
    #v10=(Boolean);v11=(PosByte);
    invoke-direct {p0, v6}, Lcom/android/launcher2/DeleteZone;->startUninstallWidgetDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 144
    .end local v4           #info:Lcom/android/launcher2/LauncherAppWidgetProviderInfo;
    .end local v6           #packageName:Ljava/lang/String;
    :cond_c
    #v0=(Integer);v4=(Uninit);v6=(Uninit);v10=(Integer);
    move-object/from16 v0, p7

    #v0=(Reference);
    iget v0, v0, Lcom/android/launcher2/ItemInfo;->itemType:I

    #v0=(Integer);
    move v10, v0

    const/4 v11, 0x5

    if-ne v10, v11, :cond_d

    .line 145
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v10=(Reference);
    move-object v0, v10

    #v0=(Reference);
    move-object/from16 v1, p7

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->removeGadget(Lcom/android/launcher2/ItemInfo;)V

    .line 147
    :cond_d
    #v0=(Conflicted);v1=(Conflicted);v10=(Conflicted);
    iget-object v10, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    #v10=(Reference);
    move-object v0, v10

    #v0=(Reference);
    move-object/from16 v1, p7

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    move-result v3

    goto/16 :goto_2

    .line 162
    .end local p7
    :cond_e
    #v1=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Boolean);
    const/4 v10, 0x1

    #v10=(One);
    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 66
    return-void
.end method

.method setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/launcher2/DeleteZone;->mDragController:Lcom/android/launcher2/DragController;

    .line 274
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 72
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 270
    return-void
.end method

*/}
