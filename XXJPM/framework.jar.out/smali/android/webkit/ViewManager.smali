.class Landroid/webkit/ViewManager;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ViewManager$ChildView;
    }
.end annotation


# static fields
.field private static final MAX_SURFACE_DIMENSION:I = 0x800


# instance fields
.field private final MAX_SURFACE_AREA:I

.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/ViewManager$ChildView;",
            ">;"
        }
    .end annotation
.end field

.field private mHidden:Z

.field private mReadyToDraw:Z

.field private final mWebView:Landroid/webkit/WebView;

.field private mZoomInProgress:Z


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 5
    .parameter "w"

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    .line 31
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 102
    iput-object p1, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    .line 104
    invoke-virtual {p1}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/webkit/WebView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int v0, v1, v2

    .line 110
    .local v0, pixelArea:I
    int-to-double v1, v0

    const-wide/high16 v3, 0x4006

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    .line 111
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/ViewManager;Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/ViewManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Landroid/webkit/ViewManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Landroid/webkit/ViewManager;->mReadyToDraw:Z

    return v0
.end method

.method static synthetic access$402(Landroid/webkit/ViewManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Landroid/webkit/ViewManager;->mReadyToDraw:Z

    return p1
.end method

.method private requestLayout(Landroid/webkit/ViewManager$ChildView;)V
    .locals 14
    .parameter "v"

    .prologue
    const/16 v13, 0x800

    .line 122
    iget-object v11, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v8

    .line 123
    .local v8, width:I
    iget-object v11, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    .line 124
    .local v4, height:I
    iget-object v11, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v9

    .line 125
    .local v9, x:I
    iget-object v11, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v10

    .line 128
    .local v10, y:I
    iget-object v11, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 130
    .local v5, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    instance-of v11, v5, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-eqz v11, :cond_1

    .line 131
    move-object v0, v5

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    move-object v6, v0

    .line 132
    .local v6, lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v8, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 133
    iput v4, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 134
    iput v9, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 135
    iput v10, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 141
    :goto_0
    iget-object v11, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v11, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v11, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    instance-of v11, v11, Landroid/view/SurfaceView;

    if-eqz v11, :cond_0

    .line 145
    iget-object v7, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/SurfaceView;

    .line 147
    .local v7, sView:Landroid/view/SurfaceView;
    invoke-virtual {v7}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    if-eqz v11, :cond_2

    .line 221
    .end local v7           #sView:Landroid/view/SurfaceView;
    :cond_0
    :goto_1
    return-void

    .line 137
    .end local v6           #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    new-instance v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v6, v8, v4, v9, v10}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .restart local v6       #lp:Landroid/widget/AbsoluteLayout$LayoutParams;
    goto :goto_0

    .line 162
    .restart local v7       #sView:Landroid/view/SurfaceView;
    :cond_2
    move v3, v8

    .line 163
    .local v3, fixedW:I
    move v2, v4

    .line 164
    .local v2, fixedH:I
    if-gt v3, v13, :cond_3

    if-le v2, v13, :cond_4

    .line 165
    :cond_3
    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    if-le v11, v12, :cond_7

    .line 166
    const/16 v3, 0x800

    .line 167
    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    mul-int/lit16 v11, v11, 0x800

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    div-int v2, v11, v12

    .line 173
    :cond_4
    :goto_2
    mul-int v11, v3, v2

    iget v12, p0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    if-le v11, v12, :cond_5

    .line 174
    iget v11, p0, Landroid/webkit/ViewManager;->MAX_SURFACE_AREA:I

    int-to-float v1, v11

    .line 175
    .local v1, area:F
    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    if-le v11, v12, :cond_8

    .line 176
    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    int-to-float v11, v11

    mul-float/2addr v11, v1

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 177
    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    mul-int/2addr v11, v3

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    div-int v2, v11, v12

    .line 184
    .end local v1           #area:F
    :cond_5
    :goto_3
    if-ne v3, v8, :cond_6

    if-eq v2, v4, :cond_9

    .line 187
    :cond_6
    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v11

    invoke-interface {v11, v3, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_1

    .line 169
    :cond_7
    const/16 v2, 0x800

    .line 170
    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    mul-int/lit16 v11, v11, 0x800

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    div-int v3, v11, v12

    goto :goto_2

    .line 179
    .restart local v1       #area:F
    :cond_8
    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    int-to-float v11, v11

    mul-float/2addr v11, v1

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v2, v11

    .line 180
    iget v11, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    mul-int/2addr v11, v2

    iget v12, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    div-int v3, v11, v12

    goto :goto_3

    .line 188
    .end local v1           #area:F
    :cond_9
    invoke-virtual {v7}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v11

    if-nez v11, :cond_a

    iget-boolean v11, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    if-eqz v11, :cond_a

    .line 191
    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v11

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getWidth()I

    move-result v12

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHeight()I

    move-result v13

    invoke-interface {v11, v12, v13}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto/16 :goto_1

    .line 193
    :cond_a
    invoke-virtual {v7}, Landroid/view/SurfaceView;->isFixedSize()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    if-nez v11, :cond_0

    .line 205
    invoke-virtual {v7}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v11

    if-nez v11, :cond_b

    .line 206
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 207
    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 211
    iget-object v11, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget-object v11, v11, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v12, Landroid/webkit/ViewManager$1;

    invoke-direct {v12, p0, v7}, Landroid/webkit/ViewManager$1;-><init>(Landroid/webkit/ViewManager;Landroid/view/SurfaceView;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 217
    :cond_b
    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto/16 :goto_1
.end method


# virtual methods
.method createView()Landroid/webkit/ViewManager$ChildView;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Landroid/webkit/ViewManager$ChildView;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager$ChildView;-><init>(Landroid/webkit/ViewManager;)V

    return-object v0
.end method

.method endZoom()V
    .locals 3

    .prologue
    .line 231
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 232
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 233
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .line 235
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    return-void
.end method

.method hideAll()V
    .locals 4

    .prologue
    .line 244
    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-eqz v2, :cond_0

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 248
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 250
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    goto :goto_0
.end method

.method hitTest(II)Landroid/webkit/ViewManager$ChildView;
    .locals 5
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v4, 0x0

    .line 283
    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-eqz v2, :cond_0

    move-object v2, v4

    .line 294
    :goto_0
    return-object v2

    .line 286
    :cond_0
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 287
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 288
    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->x:I

    if-lt p1, v2, :cond_1

    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v3, v1, Landroid/webkit/ViewManager$ChildView;->width:I

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->y:I

    if-lt p2, v2, :cond_1

    iget v2, v1, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v3, v1, Landroid/webkit/ViewManager$ChildView;->height:I

    add-int/2addr v2, v3

    if-ge p2, v2, :cond_1

    move-object v2, v1

    .line 290
    goto :goto_0

    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_2
    move-object v2, v4

    .line 294
    goto :goto_0
.end method

.method postReadyToDrawAll()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$3;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$3;-><init>(Landroid/webkit/ViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method postResetStateAll()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$2;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$2;-><init>(Landroid/webkit/ViewManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method scaleAll()V
    .locals 3

    .prologue
    .line 238
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 239
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .line 241
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    return-void
.end method

.method showAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-boolean v2, p0, Landroid/webkit/ViewManager;->mHidden:Z

    if-nez v2, :cond_0

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 258
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    iget-object v2, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 260
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_1
    iput-boolean v3, p0, Landroid/webkit/ViewManager;->mHidden:Z

    goto :goto_0
.end method

.method startZoom()V
    .locals 3

    .prologue
    .line 224
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/ViewManager;->mZoomInProgress:Z

    .line 225
    iget-object v2, p0, Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/ViewManager$ChildView;

    .line 226
    .local v1, v:Landroid/webkit/ViewManager$ChildView;
    invoke-direct {p0, v1}, Landroid/webkit/ViewManager;->requestLayout(Landroid/webkit/ViewManager$ChildView;)V

    goto :goto_0

    .line 228
    .end local v1           #v:Landroid/webkit/ViewManager$ChildView;
    :cond_0
    return-void
.end method
