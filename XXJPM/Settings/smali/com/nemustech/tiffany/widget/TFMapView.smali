.class public Lcom/nemustech/tiffany/widget/TFMapView;
.super Landroid/view/View;
.source "TFMapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/widget/TFMapView$1;,
        Lcom/nemustech/tiffany/widget/TFMapView$AnimationListener;,
        Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;,
        Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;,
        Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;,
        Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;
    }
.end annotation


# instance fields
.field private isMarkedToScale:Z

.field private mAnimator:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

.field private mCenterX:F

.field private mCenterY:F

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mImageScaleX:F

.field private mImageScaleY:F

.field private mScaleFactor:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;

.field private mScaleType:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

.field private mUserScaleX:F

.field private mUserScaleY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nemustech/tiffany/widget/TFMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nemustech/tiffany/widget/TFMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleX:F

    .line 27
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleY:F

    .line 28
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterX:F

    .line 29
    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterY:F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->isMarkedToScale:Z

    .line 35
    sget-object v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->FIT_XY:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mScaleType:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    .line 51
    new-instance v0, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;-><init>(Lcom/nemustech/tiffany/widget/TFMapView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mAnimator:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    .line 52
    new-instance v0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;

    invoke-direct {v0, p0}, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;-><init>(Lcom/nemustech/tiffany/widget/TFMapView;)V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mScaleFactor:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;

    .line 53
    return-void
.end method

.method private getImageScaleX()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleX:F

    return v0
.end method

.method private getImageScaleY()F
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleY:F

    return v0
.end method

.method private putImageCenter()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterX:F

    .line 327
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterY:F

    .line 331
    return-void

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The Image must be set before translating image"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private scaleImageToCenter()V
    .locals 1

    .prologue
    .line 355
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleY:F

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleX:F

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleY:F

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleX:F

    .line 356
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->putImageCenter()V

    .line 357
    return-void
.end method

.method private scaleImageToCenterInside()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->getHeight()I

    move-result v2

    div-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleX:F

    .line 350
    :goto_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleX:F

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleY:F

    .line 351
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->putImageCenter()V

    .line 352
    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleX:F

    goto :goto_0
.end method

.method private scaleImageToFitXY()V
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleX:F

    .line 339
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleY:F

    .line 340
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->putImageCenter()V

    .line 341
    return-void
.end method

.method private setImageBounds()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 334
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 335
    return-void
.end method

.method private setImageScaleX(F)V
    .locals 0
    .parameter "scaleX"

    .prologue
    .line 238
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleX:F

    .line 239
    return-void
.end method

.method private setImageScaleY(F)V
    .locals 0
    .parameter "scaleY"

    .prologue
    .line 253
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleY:F

    .line 254
    return-void
.end method


# virtual methods
.method public getAnimator()Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mAnimator:Lcom/nemustech/tiffany/widget/TFMapView$MapViewAnimator;

    return-object v0
.end method

.method public getCenterX()F
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterY:F

    return v0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Image is not set yet."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getScaleFactor()Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mScaleFactor:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;

    return-object v0
.end method

.method public getScaleType()Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mScaleType:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleY:F

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 294
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 296
    iget-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->isMarkedToScale:Z

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/nemustech/tiffany/widget/TFMapView$1;->$SwitchMap$com$nemustech$tiffany$widget$TFMapView$MapViewScaleType:[I

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->getScaleType()Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->isMarkedToScale:Z

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterX:F

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleX:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleX:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterY:F

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleY:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleY:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleX:F

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleX:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImageScaleY:F

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleY:F

    mul-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 317
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 320
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 321
    return-void

    .line 299
    :pswitch_0
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->scaleImageToFitXY()V

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->scaleImageToCenterInside()V

    goto :goto_0

    .line 305
    :pswitch_2
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->scaleImageToCenter()V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCenterX(I)V
    .locals 1
    .parameter "centerX"

    .prologue
    .line 210
    int-to-float v0, p1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterX:F

    .line 211
    return-void
.end method

.method public setCenterY(I)V
    .locals 1
    .parameter "centerY"

    .prologue
    .line 222
    int-to-float v0, p1

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterY:F

    .line 223
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "img"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->isMarkedToScale:Z

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->setImageBounds()V

    .line 90
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mImage:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-direct {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->setImageBounds()V

    .line 100
    return-void
.end method

.method public setScaleType(Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mScaleType:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    if-eq v0, p1, :cond_0

    .line 136
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mScaleType:Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleType;

    .line 137
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->invalidate()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nemustech/tiffany/widget/TFMapView;->isMarkedToScale:Z

    .line 140
    :cond_0
    return-void
.end method

.method public zoomToPosition(FFFF)V
    .locals 0
    .parameter "centerX"
    .parameter "centerY"
    .parameter "userScaleX"
    .parameter "userScaleY"

    .prologue
    .line 176
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterX:F

    .line 177
    iput p2, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mCenterY:F

    .line 178
    iput p3, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleX:F

    .line 179
    iput p4, p0, Lcom/nemustech/tiffany/widget/TFMapView;->mUserScaleY:F

    .line 180
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFMapView;->invalidate()V

    .line 181
    return-void
.end method
