.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# instance fields
.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mHeaderBottom:I

.field private mMaxNumPointers:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mVC:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "c"

    .prologue
    const/16 v7, 0xc0

    const/4 v6, 0x1

    const/16 v5, 0xff

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    .line 59
    iput-boolean v6, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 63
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/PointerLocationView;->setFocusable(Z)V

    .line 64
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    .line 65
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4120

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 70
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 73
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v5, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 76
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    .line 77
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 79
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v4, v4, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 84
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v2, 0x60

    invoke-virtual {v1, v5, v4, v2, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 87
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    new-instance v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v0}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 91
    .local v0, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$002(Lcom/android/internal/widget/PointerLocationView$PointerState;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 92
    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method


# virtual methods
.method public addTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    .line 222
    iget-object v10, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    monitor-enter v10

    .line 223
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 228
    .local v3, action:I
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 238
    .local v2, NP:I
    if-nez v3, :cond_1

    .line 239
    const/4 v8, 0x0

    .local v8, p:I
    :goto_0
    if-ge v8, v2, :cond_0

    .line 240
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 241
    .local v9, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 242
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 243
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$002(Lcom/android/internal/widget/PointerLocationView$PointerState;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 244
    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$202(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 239
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 246
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_0
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PointerLocationView$PointerState;

    const/4 v11, 0x1

    invoke-static {v0, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$202(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 247
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 248
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_1

    .line 249
    const-string v11, "Pointer"

    const-string v12, "Pointer 1: DOWN"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .end local v8           #p:I
    :cond_1
    and-int/lit16 v11, v3, 0xff

    const/4 v12, 0x5

    if-ne v11, v12, :cond_3

    .line 254
    const v11, 0xff00

    and-int/2addr v11, v3

    shr-int/lit8 v6, v11, 0x8

    .line 256
    .local v6, index:I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 257
    .local v5, id:I
    :goto_1
    if-gt v2, v5, :cond_2

    .line 258
    new-instance v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 259
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$002(Lcom/android/internal/widget/PointerLocationView$PointerState;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 260
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v2, v2, 0x1

    .line 262
    goto :goto_1

    .line 263
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_2
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 264
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$002(Lcom/android/internal/widget/PointerLocationView$PointerState;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 265
    const/4 v11, 0x1

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$202(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 266
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_3

    .line 267
    const-string v11, "Pointer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pointer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": DOWN"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v5           #id:I
    .end local v6           #index:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 273
    .local v1, NI:I
    const/4 v11, 0x1

    if-eq v3, v11, :cond_6

    const/4 v11, 0x3

    if-eq v3, v11, :cond_6

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    .line 275
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    if-eqz v11, :cond_7

    move v11, v1

    :goto_3
    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    .line 276
    iget v11, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    iget v12, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    if-ge v11, v12, :cond_4

    .line 277
    iget v11, p0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    iput v11, p0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    .line 280
    :cond_4
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v1, :cond_a

    .line 281
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 282
    .restart local v5       #id:I
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 283
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 284
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 286
    .local v0, N:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_5
    if-ge v7, v0, :cond_8

    .line 287
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_5

    .line 288
    const-string v11, "Pointer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pointer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Prs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->getHistoricalSize(II)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_5
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p1, v4, v7}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 273
    .end local v0           #N:I
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v7           #j:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 275
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 297
    .restart local v0       #N:I
    .restart local v4       #i:I
    .restart local v5       #id:I
    .restart local v7       #j:I
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_8
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_9

    .line 298
    const-string v11, "Pointer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pointer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Prs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Size="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_9
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    float-to-int v11, v11

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$302(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I

    .line 306
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    float-to-int v11, v11

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$402(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I

    .line 309
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v11

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 310
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v11

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$702(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 311
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v11

    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x3

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$802(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I

    .line 280
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    .line 314
    .end local v0           #N:I
    .end local v5           #id:I
    .end local v7           #j:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_a
    and-int/lit16 v11, v3, 0xff

    const/4 v12, 0x6

    if-ne v11, v12, :cond_b

    .line 315
    const v11, 0xff00

    and-int/2addr v11, v3

    shr-int/lit8 v6, v11, 0x8

    .line 317
    .restart local v6       #index:I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 318
    .restart local v5       #id:I
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 319
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v11

    const/high16 v12, 0x7fc0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v11

    const/high16 v12, 0x7fc0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$202(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 322
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_b

    .line 323
    const-string v11, "Pointer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pointer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": UP"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v5           #id:I
    .end local v6           #index:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_b
    const/4 v11, 0x1

    if-ne v3, v11, :cond_d

    .line 328
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v1, :cond_d

    .line 329
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 330
    .restart local v5       #id:I
    iget-object v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 331
    .restart local v9       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static {v9}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 332
    const/4 v11, 0x0

    invoke-static {v9, v11}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$202(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 333
    iget-boolean v11, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    if-eqz v11, :cond_c

    .line 334
    const-string v11, "Pointer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pointer "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v5, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": UP"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 345
    .end local v5           #id:I
    .end local v9           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/widget/PointerLocationView;->postInvalidate()V

    .line 346
    monitor-exit v10

    .line 347
    return-void

    .line 346
    .end local v1           #NI:I
    .end local v2           #NP:I
    .end local v3           #action:I
    .end local v4           #i:I
    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v33, v0

    monitor-enter v33

    .line 116
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v30

    .line 117
    .local v30, w:I
    div-int/lit8 v25, v30, 0x7

    .line 118
    .local v25, itemW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v5, v5

    add-int/lit8 v18, v5, 0x1

    .line 119
    .local v18, base:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    move/from16 v19, v0

    .line 121
    .local v19, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 123
    .local v17, NP:I
    if-lez v17, :cond_2

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 125
    .local v28, ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    sub-int v5, v25, v5

    int-to-float v8, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "P: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurNumPointers:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/PointerLocationView;->mMaxNumPointers:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x3f80

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 130
    .local v16, N:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    move v5, v0

    if-eqz v5, :cond_0

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-nez v16, :cond_4

    .line 131
    :cond_1
    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    mul-int/lit8 v5, v25, 0x2

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "X: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v25, 0x1

    int-to-float v6, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 133
    mul-int/lit8 v5, v25, 0x2

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v25, 0x3

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v25, 0x2

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 148
    :goto_0
    mul-int/lit8 v5, v25, 0x3

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v25, 0x4

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 149
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v5

    if-nez v5, :cond_7

    const/4 v5, 0x0

    move/from16 v29, v5

    .line 150
    .local v29, velocity:I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Xv: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v25, 0x3

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 152
    mul-int/lit8 v5, v25, 0x4

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v25, 0x5

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 153
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v5

    if-nez v5, :cond_8

    const/4 v5, 0x0

    move/from16 v29, v5

    .line 154
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Yv: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v25, 0x4

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 156
    mul-int/lit8 v5, v25, 0x5

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v25, 0x6

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    mul-int/lit8 v5, v25, 0x5

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v25, 0x5

    int-to-float v5, v5

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v8

    move/from16 v0, v25

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    const/high16 v8, 0x3f80

    sub-float v8, v5, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v25, 0x5

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    mul-int/lit8 v5, v25, 0x6

    int-to-float v6, v5

    const/4 v7, 0x0

    move/from16 v0, v30

    int-to-float v0, v0

    move v8, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 163
    mul-int/lit8 v5, v25, 0x6

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v25, 0x6

    int-to-float v5, v5

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v8

    move/from16 v0, v25

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    const/high16 v8, 0x3f80

    sub-float v8, v5, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v25, 0x6

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 169
    .end local v16           #N:I
    .end local v28           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v29           #velocity:I
    :cond_2
    const/16 v26, 0x0

    .local v26, p:I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 172
    .restart local v28       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/PointerLocationView;->mCurDown:Z

    move v5, v0

    if-eqz v5, :cond_3

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    const/4 v6, 0x0

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v5

    int-to-float v7, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getWidth()I

    move-result v5

    int-to-float v8, v5

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v5

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 174
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v5

    int-to-float v6, v5

    const/4 v7, 0x0

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v5

    int-to-float v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/PointerLocationView;->getHeight()I

    move-result v5

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTargetPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 175
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v5

    const/high16 v6, 0x437f

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v27, v0

    .line 176
    .local v27, pressureLevel:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v6, 0xff

    const/16 v7, 0x80

    const/16 v8, 0xff

    sub-int v8, v8, v27

    move-object v0, v5

    move v1, v6

    move/from16 v2, v27

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 177
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 178
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 169
    .end local v27           #pressureLevel:I
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 136
    .end local v26           #p:I
    .restart local v16       #N:I
    :cond_4
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v16, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float v21, v6, v5

    .line 137
    .local v21, dx:F
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x1

    sub-int v6, v16, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float v22, v6, v5

    .line 138
    .local v22, dy:F
    move/from16 v0, v25

    int-to-float v0, v0

    move v6, v0

    const/4 v7, 0x0

    mul-int/lit8 v5, v25, 0x2

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v5, v5, v10

    if-gez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    :goto_4
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v25, 0x1

    int-to-float v6, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 142
    mul-int/lit8 v5, v25, 0x2

    int-to-float v6, v5

    const/4 v7, 0x0

    mul-int/lit8 v5, v25, 0x3

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    int-to-float v8, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move v9, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mVC:Landroid/view/ViewConfiguration;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v5, v5, v10

    if-gez v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    :goto_5
    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%.1f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    mul-int/lit8 v6, v25, 0x2

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    move/from16 v0, v18

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 218
    .end local v16           #N:I
    .end local v17           #NP:I
    .end local v18           #base:I
    .end local v19           #bottom:I
    .end local v21           #dx:F
    .end local v22           #dy:F
    .end local v25           #itemW:I
    .end local v28           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v30           #w:I
    :catchall_0
    move-exception v5

    monitor-exit v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 138
    .restart local v16       #N:I
    .restart local v17       #NP:I
    .restart local v18       #base:I
    .restart local v19       #bottom:I
    .restart local v21       #dx:F
    .restart local v22       #dy:F
    .restart local v25       #itemW:I
    .restart local v28       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v30       #w:I
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    goto/16 :goto_4

    .line 142
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mTextLevelPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v10, v5

    goto :goto_5

    .line 149
    .end local v21           #dx:F
    .end local v22           #dy:F
    :cond_7
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move/from16 v29, v5

    goto/16 :goto_1

    .line 153
    .restart local v29       #velocity:I
    :cond_8
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move/from16 v29, v5

    goto/16 :goto_2

    .line 182
    .end local v16           #N:I
    .end local v28           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    .end local v29           #velocity:I
    .restart local v26       #p:I
    :cond_9
    const/16 v26, 0x0

    :goto_6
    move/from16 v0, v26

    move/from16 v1, v17

    if-ge v0, v1, :cond_f

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPointers:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 185
    .restart local v28       #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 186
    .restart local v16       #N:I
    const/4 v6, 0x0

    .local v6, lastX:F
    const/4 v7, 0x0

    .line 187
    .local v7, lastY:F
    const/16 v23, 0x0

    .line 188
    .local v23, haveLast:Z
    const/16 v20, 0x0

    .line 189
    .local v20, drawn:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v8, 0xff

    const/16 v9, 0x80

    const/16 v10, 0xff

    const/16 v11, 0xff

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 190
    const/16 v24, 0x0

    .local v24, i:I
    :goto_7
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_c

    .line 191
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 192
    .local v8, x:F
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 193
    .local v9, y:F
    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 194
    const/16 v23, 0x0

    .line 190
    :goto_8
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    .line 197
    :cond_a
    if-eqz v23, :cond_b

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPathPaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 200
    const/16 v20, 0x1

    .line 202
    :cond_b
    move v6, v8

    .line 203
    move v7, v9

    .line 204
    const/16 v23, 0x1

    goto :goto_8

    .line 207
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_c
    if-eqz v20, :cond_d

    .line 208
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/16 v8, 0xff

    const/16 v9, 0xff

    const/16 v10, 0x40

    const/16 v11, 0x80

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 210
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    const/high16 v8, 0x4180

    mul-float v31, v5, v8

    .line 211
    .local v31, xVel:F
    invoke-static/range {v28 .. v28}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    const/high16 v8, 0x4180

    mul-float v32, v5, v8

    .line 212
    .local v32, yVel:F
    add-float v13, v6, v31

    add-float v14, v7, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v15, v0

    move-object/from16 v10, p1

    move v11, v6

    move v12, v7

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 182
    .end local v31           #xVel:F
    .end local v32           #yVel:F
    :cond_d
    :goto_9
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_6

    .line 214
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/PointerLocationView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 218
    .end local v6           #lastX:F
    .end local v7           #lastY:F
    .end local v16           #N:I
    .end local v20           #drawn:Z
    .end local v23           #haveLast:Z
    .end local v24           #i:I
    .end local v28           #ps:Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_f
    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/PointerLocationView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/PointerLocationView;->mHeaderBottom:I

    .line 111
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/PointerLocationView;->addTouchEvent(Landroid/view/MotionEvent;)V

    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 357
    const-string v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trackball: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPrintCoords(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/internal/widget/PointerLocationView;->mPrintCoords:Z

    .line 97
    return-void
.end method
