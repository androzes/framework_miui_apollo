package com.android.launcher2.gadget; class Player$AlbumHelper {/*

.class Lcom/android/launcher2/gadget/Player$AlbumHelper;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/gadget/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumHelper"
.end annotation


# instance fields
.field private mAlbumBitmap:Landroid/graphics/Bitmap;

.field private mAlbumHeight:I

.field private mAlbumPath:Ljava/lang/String;

.field private mAlbumUri:Landroid/net/Uri;

.field private mAlbumUtil:Landroid/util/AlbumUtil;

.field private mAlbumWidth:I

.field private mIsTrackChange:Z

.field final synthetic this$0:Lcom/android/launcher2/gadget/Player;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/gadget/Player;)V
    .locals 3
    .parameter

    .prologue
    .line 937
    iput-object p1, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    #p0=(Reference);
    new-instance v0, Landroid/util/AlbumUtil;

    #v0=(UninitRef);
    invoke-static {p1}, Lcom/android/launcher2/gadget/Player;->access$4200(Lcom/android/launcher2/gadget/Player;)Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {v0, v1, v2}, Landroid/util/AlbumUtil;-><init>(Landroid/content/Context;I)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumUtil:Landroid/util/AlbumUtil;

    .line 939
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/gadget/Player;Lcom/android/launcher2/gadget/Player$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player$AlbumHelper;-><init>(Lcom/android/launcher2/gadget/Player;)V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/gadget/Player$AlbumHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->reset()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/launcher2/gadget/Player$AlbumHelper;Landroid/content/Intent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 927
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->updateAlbumStatus(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/launcher2/gadget/Player$AlbumHelper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 927
    invoke-direct {p0, p1}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->setTrackChange(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->getTrackChange()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$4000(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->isNeedInitViewSize()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$4100(Lcom/android/launcher2/gadget/Player$AlbumHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->initViewSize()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/gadget/Player$AlbumHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->getDisplayAlbumBitmap()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->hasAlbum()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/gadget/Player$AlbumHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 927
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->getAlbumBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method private getAlbumBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    #v0=(Reference);
    return-object v0
.end method

.method private getDisplayAlbumBitmap()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    #v13=(Null);
    const/4 v12, 0x0

    .line 994
    #v12=(Null);
    const/4 v10, 0x0

    .line 995
    .local v10, bm:Landroid/graphics/Bitmap;
    #v10=(Null);
    iput-object v13, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    .line 996
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumUri:Landroid/net/Uri;

    #v0=(Reference);
    if-eqz v0, :cond_2

    .line 997
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumUtil:Landroid/util/AlbumUtil;

    iget-object v2, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumUri:Landroid/net/Uri;

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/util/AlbumUtil;->getAlbumBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1003
    :cond_0
    :goto_0
    #v2=(Conflicted);v10=(Reference);
    if-eqz v10, :cond_1

    iget v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumWidth:I

    #v0=(Integer);
    if-lez v0, :cond_1

    .line 1005
    const/16 v9, 0x5a

    .line 1006
    .local v9, TOP_DELTAY:I
    #v9=(PosByte);
    const/16 v8, 0x28

    .line 1007
    .local v8, BOTTOM_DELTAY:I
    :try_start_0
    #v8=(PosByte);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumUtil:Landroid/util/AlbumUtil;

    #v0=(Reference);
    invoke-virtual {v0, v10}, Landroid/util/AlbumUtil;->cutToDefauleAspectRadio(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    .line 1008
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumWidth:I

    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumHeight:I

    #v3=(Integer);
    const/4 v4, 0x1

    #v4=(One);
    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1009
    .local v1, albumBitmap:Landroid/graphics/Bitmap;
    #v1=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1011
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumUtil:Landroid/util/AlbumUtil;

    const/4 v2, 0x0

    #v2=(Null);
    const/16 v3, 0x5a

    #v3=(PosByte);
    const/16 v4, 0xff

    #v4=(PosShort);
    const/4 v5, 0x1

    #v5=(One);
    invoke-virtual/range {v0 .. v5}, Landroid/util/AlbumUtil;->setAlpha(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    .line 1016
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1018
    iget-object v2, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumUtil:Landroid/util/AlbumUtil;

    #v2=(Reference);
    iget-object v3, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    #v3=(Reference);
    iget v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumHeight:I

    #v0=(Integer);
    const/16 v4, 0x28

    #v4=(PosByte);
    sub-int v4, v0, v4

    #v4=(Integer);
    iget v5, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumHeight:I

    #v5=(Integer);
    const/16 v6, 0xff

    #v6=(PosShort);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual/range {v2 .. v7}, Landroid/util/AlbumUtil;->setAlpha(Landroid/graphics/Bitmap;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1023
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1025
    iput-object v1, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1030
    .end local v1           #albumBitmap:Landroid/graphics/Bitmap;
    .end local v8           #BOTTOM_DELTAY:I
    .end local v9           #TOP_DELTAY:I
    :cond_1
    :goto_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);
    iput-boolean v12, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mIsTrackChange:Z

    .line 1031
    return-void

    .line 999
    :cond_2
    #v0=(Reference);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Null);v11=(Uninit);
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    #v10=(Reference);
    goto :goto_0

    .line 1026
    .restart local v8       #BOTTOM_DELTAY:I
    .restart local v9       #TOP_DELTAY:I
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(PosByte);v9=(PosByte);
    move-exception v0

    #v0=(Reference);
    move-object v11, v0

    .line 1027
    .local v11, e:Ljava/lang/OutOfMemoryError;
    #v11=(Reference);
    iput-object v13, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private getTrackChange()Z
    .locals 1

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mIsTrackChange:Z

    #v0=(Boolean);
    return v0
.end method

.method private hasAlbum()Z
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    #v0=(Reference);
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private initViewSize()V
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$4300(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumWidth:I

    .line 954
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$4300(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumHeight:I

    .line 955
    iget v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumHeight:I

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumUtil:Landroid/util/AlbumUtil;

    #v0=(Reference);
    iget v1, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumWidth:I

    #v1=(Integer);
    int-to-float v1, v1

    #v1=(Float);
    iget v2, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumHeight:I

    #v2=(Integer);
    int-to-float v2, v2

    #v2=(Float);
    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/util/AlbumUtil;->setAspectRadio(F)V

    .line 957
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->getDisplayAlbumBitmap()V

    .line 959
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    return-void
.end method

.method private isNeedInitViewSize()Z
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumWidth:I

    #v0=(Integer);
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumHeight:I

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$4300(Lcom/android/launcher2/gadget/Player;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_1
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 981
    #v0=(Null);
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumBitmap:Landroid/graphics/Bitmap;

    .line 982
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumUri:Landroid/net/Uri;

    .line 983
    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumPath:Ljava/lang/String;

    .line 984
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mIsTrackChange:Z

    .line 985
    return-void
.end method

.method private setTrackChange(Z)V
    .locals 0
    .parameter "isTrackChange"

    .prologue
    .line 942
    iput-boolean p1, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mIsTrackChange:Z

    .line 943
    return-void
.end method

.method private updateAlbumStatus(Landroid/content/Intent;Z)V
    .locals 1
    .parameter "intent"
    .parameter "needFetchAlbum"

    .prologue
    .line 961
    if-nez p2, :cond_1

    .line 970
    :cond_0
    :goto_0
    #v0=(Conflicted);
    return-void

    .line 964
    :cond_1
    #v0=(Uninit);
    const-string v0, "album_uri"

    #v0=(Reference);
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumUri:Landroid/net/Uri;

    .line 965
    const-string v0, "album_path"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->mAlbumPath:Ljava/lang/String;

    .line 966
    iget-object v0, p0, Lcom/android/launcher2/gadget/Player$AlbumHelper;->this$0:Lcom/android/launcher2/gadget/Player;

    invoke-static {v0}, Lcom/android/launcher2/gadget/Player;->access$2400(Lcom/android/launcher2/gadget/Player;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_0

    .line 969
    invoke-direct {p0}, Lcom/android/launcher2/gadget/Player$AlbumHelper;->getDisplayAlbumBitmap()V

    goto :goto_0
.end method

*/}
