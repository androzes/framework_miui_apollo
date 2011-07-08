package com.android.launcher2; class Workspace$WorkspaceThumbnailViewAdapter {/*

.class Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;
.super Lcom/android/launcher2/ThumbnailViewAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkspaceThumbnailViewAdapter"
.end annotation


# instance fields
.field private final DELETE_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

.field private final ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

.field private final EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

.field private final HOME_MARK_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private final NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

.field private final THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

.field private mThumbmailCanvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field private zDefaultScreenButton:Landroid/widget/ImageView;

.field private zNewScreenView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    .line 1229
    invoke-direct {p0, p2}, Lcom/android/launcher2/ThumbnailViewAdapter;-><init>(Landroid/content/Context;)V

    .line 1112
    #p0=(Reference);
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$1;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    .line 1118
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->HOME_MARK_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    .line 1140
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    .line 1158
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->DELETE_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    .line 1191
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$5;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$5;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    .line 1208
    new-instance v0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$6;-><init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    .line 1242
    new-instance v0, Landroid/graphics/Canvas;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbmailCanvas:Landroid/graphics/Canvas;

    .line 1230
    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->exitPreview(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;

    #v0=(Reference);
    return-object v0
.end method

.method static synthetic access$702(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method private createThumbnail(Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "source"
    .parameter "thumbnail"
    .parameter "bitmap"

    .prologue
    .line 1246
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v5

    #v5=(Integer);
    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 1248
    .local v3, thumbnailWidth:I
    #v3=(Integer);
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    #v4=(Integer);
    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    sub-int v1, v4, v5

    .line 1251
    .local v1, thumbnailHeight:I
    #v1=(Integer);
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1254
    .local v0, cellWidth:I
    #v0=(Integer);
    const/high16 v4, 0x3f80

    int-to-float v5, v3

    #v5=(Float);
    mul-float/2addr v4, v5

    #v4=(Float);
    int-to-float v5, v0

    div-float v2, v4, v5

    .line 1257
    .local v2, thumbnailScaleRatio:F
    #v2=(Float);
    if-nez p3, :cond_0

    .line 1258
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #v4=(Reference);
    invoke-static {v3, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 1266
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbmailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 1267
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbmailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1268
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbmailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1269
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbmailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1270
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mThumbmailCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 1271
    return-object p3

    .line 1263
    :cond_0
    #v4=(Float);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {p3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0
.end method

.method private exitPreview(J)V
    .locals 3
    .parameter "screenID"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x7

    #v2=(PosByte);
    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Workspace;->access$500(Lcom/android/launcher2/Workspace;Landroid/view/MotionEvent;I)V

    .line 1108
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Workspace;->setCurrentScreenById(J)V

    .line 1109
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->showPreview(Z)V

    .line 1110
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    #v0=(Integer);
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getEnterAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->ENTER_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    #v0=(Reference);
    return-object v0
.end method

.method public getExitAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->EXIT_PREVIEW_ANIMATION_LISTENER:Landroid/view/animation/Animation$AnimationListener;

    #v0=(Reference);
    return-object v0
.end method

.method public getFocusedItemPosition()I
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getItem(I)Landroid/view/View;
    .locals 1
    .parameter "position"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1102
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->getItem(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1277
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v5

    #v5=(Integer);
    if-ne p1, v5, :cond_1

    .line 1278
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    #v5=(Reference);
    if-nez v5, :cond_0

    .line 1279
    new-instance v5, Landroid/widget/ImageView;

    #v5=(UninitRef);
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mContext:Landroid/content/Context;

    #v6=(Reference);
    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    #v5=(Reference);
    iput-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    .line 1280
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    const v6, 0x7f02006b

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1281
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    #v6=(Reference);
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    :cond_0
    #v6=(Conflicted);
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    .line 1340
    .end local p3
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v7=(Conflicted);
    return-object v5

    .line 1286
    .restart local p3
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Integer);v6=(Uninit);v7=(Uninit);
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v5=(Reference);
    invoke-virtual {v5, p1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1288
    .local v1, cell:Lcom/android/launcher2/CellLayout;
    const/4 v4, 0x0

    .line 1289
    .local v4, thumbnail:Landroid/widget/ImageView;
    #v4=(Null);
    if-nez p2, :cond_6

    .line 1290
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$1800(Lcom/android/launcher2/Workspace;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001f

    #v6=(Integer);
    const/4 v7, 0x0

    #v7=(Null);
    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1292
    const v5, 0x7f080053

    #v5=(Integer);
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #thumbnail:Landroid/widget/ImageView;
    #v4=(Reference);
    check-cast v4, Landroid/widget/ImageView;

    .line 1293
    .restart local v4       #thumbnail:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1294
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->THUMBNAIL_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1297
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v5

    #v5=(Integer);
    if-ne p1, v5, :cond_5

    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020086

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1302
    const v5, 0x7f080054

    #v5=(Integer);
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/widget/ImageView;

    .line 1303
    .local v3, homeButton:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1304
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->HOME_MARK_CLICK_HANDLER:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v5

    #v5=(Integer);
    if-nez v5, :cond_2

    .line 1308
    const v5, 0x7f080055

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/widget/ImageView;

    .line 1309
    .local v2, deleteButton:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v5

    #v5=(LongLo);
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1310
    const/4 v5, 0x0

    #v5=(Null);
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1311
    const v5, 0x7f020003

    #v5=(Integer);
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1312
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->DELETE_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    #v5=(Reference);
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1318
    .end local v2           #deleteButton:Landroid/widget/ImageView;
    .end local v3           #homeButton:Landroid/widget/ImageView;
    :cond_2
    :goto_2
    #v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    const v5, 0x7f080002

    #v5=(Integer);
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/graphics/Bitmap;

    .line 1319
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    const v5, 0x7f080004

    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_4

    .line 1320
    :cond_3
    #v5=(Integer);
    invoke-direct {p0, v1, v4, v0}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->createThumbnail(Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1321
    const v5, 0x7f080002

    invoke-virtual {v1, v5, v0}, Lcom/android/launcher2/CellLayout;->setTag(ILjava/lang/Object;)V

    .line 1322
    const v5, 0x7f080004

    const/4 v6, 0x0

    #v6=(Null);
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    #v6=(Reference);
    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/CellLayout;->setTag(ILjava/lang/Object;)V

    .line 1325
    :cond_4
    #v6=(Conflicted);
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getCurrentScreenIndex()I

    move-result v5

    #v5=(Integer);
    if-ne p1, v5, :cond_7

    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020086

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1329
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1332
    const v5, 0x7f080054

    #v5=(Integer);
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/widget/ImageView;

    .line 1333
    .restart local v3       #homeButton:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v5=(Reference);
    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$1900(Lcom/android/launcher2/Workspace;)I

    move-result v5

    #v5=(Integer);
    if-ne p1, v5, :cond_8

    .line 1334
    iput-object v3, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zDefaultScreenButton:Landroid/widget/ImageView;

    .line 1335
    const v5, 0x7f02003a

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_4
    move-object v5, p2

    .line 1340
    #v5=(Reference);
    goto/16 :goto_0

    .line 1297
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #homeButton:Landroid/widget/ImageView;
    .restart local p3
    :cond_5
    #v0=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Integer);v6=(LongHi);v7=(Null);
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020085

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto/16 :goto_1

    .line 1315
    :cond_6
    #v4=(Null);v6=(Uninit);v7=(Uninit);
    const v5, 0x7f080053

    #v5=(Integer);
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #thumbnail:Landroid/widget/ImageView;
    #v4=(Reference);
    check-cast v4, Landroid/widget/ImageView;

    .restart local v4       #thumbnail:Landroid/widget/ImageView;
    goto :goto_2

    .line 1325
    .end local p3
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_7
    #v0=(Reference);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020085

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_3

    .line 1338
    .restart local v3       #homeButton:Landroid/widget/ImageView;
    :cond_8
    #v3=(Reference);v5=(Integer);
    const v5, 0x7f020039

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method public onEndDragging()V
    .locals 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    #v0=(Reference);
    const v1, 0x7f02006b

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1368
    return-void
.end method

.method public onStartDragging(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v0

    #v0=(Integer);
    if-ne p1, v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->zNewScreenView:Landroid/widget/ImageView;

    #v0=(Reference);
    const v1, 0x7f02006a

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1364
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void
.end method

.method public onThumbnailClick(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1344
    iget-object v1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v1=(Reference);
    invoke-virtual {v1, p1}, Lcom/android/launcher2/Workspace;->getScreen(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1345
    .local v0, cell:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getScreenId()J

    move-result-wide v1

    #v1=(LongLo);v2=(LongHi);
    invoke-direct {p0, v1, v2}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->exitPreview(J)V

    .line 1346
    return-void
.end method

.method public onThumbnailPositionChanged([I)V
    .locals 5
    .parameter "positionMapping"

    .prologue
    const/4 v4, 0x1

    .line 1372
    #v4=(One);
    array-length v0, p1

    .line 1374
    .local v0, count:I
    #v0=(Integer);
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;)[I

    move-result-object v2

    array-length v2, v2

    #v2=(Integer);
    if-eq v2, v0, :cond_1

    .line 1375
    :cond_0
    #v2=(Conflicted);
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v2=(Reference);
    new-array v3, v0, [I

    #v3=(Reference);
    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$1302(Lcom/android/launcher2/Workspace;[I)[I

    .line 1377
    :cond_1
    #v2=(Conflicted);v3=(Conflicted);
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    #v1=(Integer);
    if-ge v1, v0, :cond_2

    .line 1378
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    #v2=(Reference);
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;)[I

    move-result-object v2

    aget v3, p1, v1

    #v3=(Integer);
    aput v3, v2, v1

    .line 1377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1381
    :cond_2
    #v2=(Conflicted);v3=(Conflicted);
    sub-int v2, v0, v4

    #v2=(Integer);
    aget v2, p1, v2

    sub-int v3, v0, v4

    #v3=(Integer);
    if-eq v2, v3, :cond_3

    .line 1382
    iget-object v2, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->NEW_SCREEN_HANDLER:Landroid/view/View$OnClickListener;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1385
    :cond_3
    #v2=(Conflicted);v3=(Integer);
    return-void
.end method

*/}
