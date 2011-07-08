.class Landroid/webkit/WebMagnifier;
.super Landroid/view/View;
.source "WebMagnifier.java"


# static fields
.field static final BOUNDARY_STOROKE_WIDTH:F = 3.0f

.field static final DEBUG:Z = false

.field static final LOGTAG:Ljava/lang/String; = "WebMagnifier"

.field static final MAGNIFIER_HEIGHT:I = 0x64

.field static final MAGNIFIER_PADDING:I = 0x5

.field static final MAGNIFIER_WIDTH:I = 0xc8

.field static final ROUND_DIAMETER:F = 10.0f

.field static SHOW_HEIGHT:I = 0x0

.field static SHOW_WIDTH:I = 0x0

.field static final STROKE_WIDTH:I = 0x1

.field static final TAIL_HEIGHT:I = 0x14

.field static final TAIL_WIDTH:I = 0x1e

.field static final ZOOM_SCALE:F = 1.2f


# instance fields
.field mBgPath:Landroid/graphics/Path;

.field mBoundaryPaint:Landroid/graphics/Paint;

.field final mContext:Landroid/content/Context;

.field mGarbageBgPath:Landroid/graphics/Path;

.field mMagnifierPath:Landroid/graphics/Path;

.field mShowX:I

.field mShowY:I

.field mSrcView:Landroid/view/View;

.field mSrcX:I

.field mSrcY:I

.field mViewHeight:I

.field mViewWidth:I

.field mWindowManager:Landroid/view/WindowManager;

.field mbShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xc8

    sput v0, Landroid/webkit/WebMagnifier;->SHOW_WIDTH:I

    .line 70
    const/16 v0, 0x78

    sput v0, Landroid/webkit/WebMagnifier;->SHOW_HEIGHT:I

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .parameter "srcView"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 68
    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 73
    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    .line 75
    iput-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    .line 84
    iput-object p1, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/webkit/WebMagnifier;->setPadding(IIII)V

    .line 90
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    .line 100
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    .line 101
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    .line 103
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateDrawingPath()V

    .line 104
    return-void
.end method

.method private setShowXY(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 200
    iput p1, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    .line 201
    iput p2, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    .line 210
    sget v0, Landroid/webkit/WebMagnifier;->SHOW_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    .line 211
    sget v0, Landroid/webkit/WebMagnifier;->SHOW_HEIGHT:I

    sub-int v0, p2, v0

    iput v0, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 212
    iget v0, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    const/16 v1, 0x28

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 214
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateDrawingPath()V

    .line 215
    return-void
.end method

.method private updateDrawingPath()V
    .locals 11

    .prologue
    const/16 v10, 0xf

    const/4 v9, 0x5

    const/high16 v8, 0x4120

    .line 155
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 156
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 160
    const/16 v1, 0xc7

    .line 161
    .local v1, w:I
    const/16 v0, 0x63

    .line 162
    .local v0, h:I
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/2addr v6, v1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v8, v8, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 165
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v3, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v4, v10

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 166
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v3, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 167
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v3, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0xf

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 169
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v3, v10

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 170
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0xf

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 173
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 174
    iget-object v2, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit16 v6, v6, 0xc8

    sub-int/2addr v6, v9

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v7, v7, 0x64

    sub-int/2addr v7, v9

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v8, v8, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 178
    return-void
.end method


# virtual methods
.method drawMagnifierContents(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 182
    iget-object v6, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v1

    .line 183
    .local v1, scrollX:I
    iget-object v6, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v2

    .line 185
    .local v2, scrollY:I
    const/16 v5, 0xa6

    .line 186
    .local v5, zoomarea_width:I
    const/16 v4, 0x53

    .line 188
    .local v4, zoomarea_height:I
    new-instance v3, Landroid/graphics/Rect;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    div-int/lit8 v7, v5, 0x2

    sub-int/2addr v6, v7

    add-int/2addr v6, v1

    iget v7, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    div-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    iget v8, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    div-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    add-int/2addr v8, v1

    iget v9, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    div-int/lit8 v10, v4, 0x2

    add-int/2addr v9, v10

    add-int/2addr v9, v2

    invoke-direct {v3, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 192
    .local v3, srcRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 193
    .local v0, matrix:Landroid/graphics/Matrix;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v7, Landroid/graphics/RectF;

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit16 v10, v10, 0xc8

    int-to-float v10, v10

    iget v11, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v11, v11, 0x64

    int-to-float v11, v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v6, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 194
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 195
    iget-object v6, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 196
    return-void
.end method

.method hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-boolean v0, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 263
    :cond_0
    iput v1, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    .line 264
    iput v1, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    .line 265
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 267
    iput-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_0
.end method

.method move(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 272
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    .line 273
    invoke-virtual {p0}, Landroid/webkit/WebMagnifier;->invalidate()V

    .line 274
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, -0x1

    const/high16 v4, -0x100

    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 115
    .local v2, saveCount:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 116
    .local v1, paint:Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    const/high16 v3, 0x3f80

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 121
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 132
    .local v0, gPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 134
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    const/high16 v3, 0x4000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 136
    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 141
    invoke-virtual {p0, p1}, Landroid/webkit/WebMagnifier;->drawMagnifierContents(Landroid/graphics/Canvas;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 146
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v3, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 149
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 150
    return-void
.end method

.method show(II)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v9, 0x1

    .line 222
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    .line 223
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    .line 230
    iget-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v1, v9, :cond_0

    .line 253
    :goto_0
    return-void

    .line 233
    :cond_0
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 234
    .local v8, winloc:[I
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationInWindow([I)V

    .line 239
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    const/4 v3, 0x0

    aget v3, v8, v3

    aget v4, v8, v9

    const/16 v5, 0x3e8

    const/16 v6, 0x208

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 249
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 250
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iput-boolean v9, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_0
.end method
