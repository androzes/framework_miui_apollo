.class public Lcom/android/server/status/StatusBarView;
.super Landroid/widget/FrameLayout;
.source "StatusBarView.java"


# static fields
.field private static final BROP_DOING:I = 0x1

.field private static final BROP_DONE:I = 0x2

.field private static final BROP_NONE:I = 0x0

.field static final DIM_ANIM_TIME:I = 0x190

.field private static final TAG:Ljava/lang/String; = "StatusBarView"


# instance fields
.field private mBROP:I

.field mBackground:Lcom/android/server/status/FixedSizeDrawable;

.field mDate:Landroid/view/View;

.field mEndAlpha:I

.field mEndTime:J

.field private mHandler:Landroid/os/Handler;

.field private mHitSize:I

.field mKeyLongPress:Ljava/lang/Runnable;

.field mNightMode:Z

.field mNotificationIcons:Landroid/view/ViewGroup;

.field mService:Lcom/android/server/status/StatusBarService;

.field mStartAlpha:I

.field mStartX:I

.field mStartY:I

.field mStatusIcons:Landroid/view/ViewGroup;

.field mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/status/StatusBarView;->mHandler:Landroid/os/Handler;

    .line 62
    iput-boolean v1, p0, Lcom/android/server/status/StatusBarView;->mNightMode:Z

    .line 63
    iput v1, p0, Lcom/android/server/status/StatusBarView;->mStartAlpha:I

    iput v1, p0, Lcom/android/server/status/StatusBarView;->mEndAlpha:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/status/StatusBarView;->mEndTime:J

    .line 191
    new-instance v0, Lcom/android/server/status/StatusBarView$1;

    invoke-direct {v0, p0}, Lcom/android/server/status/StatusBarView$1;-><init>(Lcom/android/server/status/StatusBarView;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarView;->mKeyLongPress:Ljava/lang/Runnable;

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/status/StatusBarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/server/status/StatusBarView;->mBROP:I

    return p1
.end method

.method private getDateSize(Landroid/view/ViewGroup;II)I
    .locals 6
    .parameter "g"
    .parameter "w"
    .parameter "offset"

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 179
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 180
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 181
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int v2, v5, p3

    .line 182
    .local v2, l:I
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    add-int v3, v5, p3

    .line 183
    .local v3, r:I
    if-lt p2, v2, :cond_0

    if-gt p2, v3, :cond_0

    move v5, v3

    .line 187
    .end local v2           #l:I
    .end local v3           #r:I
    .end local v4           #v:Landroid/view/View;
    :goto_1
    return v5

    .line 179
    .restart local v2       #l:I
    .restart local v3       #r:I
    .restart local v4       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v2           #l:I
    .end local v3           #r:I
    .end local v4           #v:Landroid/view/View;
    :cond_1
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private getViewOffset(Landroid/view/View;)I
    .locals 6
    .parameter "v"

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, offset:I
    :goto_0
    if-eq p1, p0, :cond_1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v1, v3

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 168
    .local v2, p:Landroid/view/ViewParent;
    instance-of v3, p1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 169
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 171
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a child of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    .end local v2           #p:Landroid/view/ViewParent;
    :cond_1
    return v1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 150
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarView;->getCurAlpha()I

    move-result v0

    .line 151
    .local v0, alpha:I
    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 154
    :cond_0
    iget v1, p0, Lcom/android/server/status/StatusBarView;->mEndAlpha:I

    if-eq v0, v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarView;->invalidate()V

    .line 157
    :cond_1
    return-void
.end method

.method getCurAlpha()I
    .locals 7

    .prologue
    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 104
    .local v0, time:J
    iget-wide v2, p0, Lcom/android/server/status/StatusBarView;->mEndTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 105
    iget v2, p0, Lcom/android/server/status/StatusBarView;->mEndAlpha:I

    .line 107
    :goto_0
    return v2

    :cond_0
    iget v2, p0, Lcom/android/server/status/StatusBarView;->mEndAlpha:I

    iget v3, p0, Lcom/android/server/status/StatusBarView;->mEndAlpha:I

    iget v4, p0, Lcom/android/server/status/StatusBarView;->mStartAlpha:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/android/server/status/StatusBarView;->mEndTime:J

    sub-long/2addr v5, v0

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x190

    div-long/2addr v3, v5

    long-to-int v3, v3

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 85
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0}, Lcom/android/server/status/StatusBarService;->onBarViewAttached()V

    .line 86
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 93
    .local v0, nightMode:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarView;->mNightMode:Z

    if-eq v1, v0, :cond_0

    .line 94
    iput-boolean v0, p0, Lcom/android/server/status/StatusBarView;->mNightMode:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarView;->getCurAlpha()I

    move-result v1

    iput v1, p0, Lcom/android/server/status/StatusBarView;->mStartAlpha:I

    .line 96
    iget-boolean v1, p0, Lcom/android/server/status/StatusBarView;->mNightMode:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x80

    :goto_1
    iput v1, p0, Lcom/android/server/status/StatusBarView;->mEndAlpha:I

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x190

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/status/StatusBarView;->mEndTime:J

    .line 98
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarView;->invalidate()V

    .line 100
    :cond_0
    return-void

    .end local v0           #nightMode:Z
    :cond_1
    move v0, v3

    .line 91
    goto :goto_0

    .restart local v0       #nightMode:Z
    :cond_2
    move v1, v3

    .line 96
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 73
    const v0, 0x1020200

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/status/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    .line 74
    const v0, 0x1020201

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/server/status/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    .line 75
    const v0, 0x102005a

    invoke-virtual {p0, v0}, Lcom/android/server/status/StatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    .line 77
    new-instance v0, Lcom/android/server/status/FixedSizeDrawable;

    iget-object v1, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/status/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/server/status/StatusBarView;->mBackground:Lcom/android/server/status/FixedSizeDrawable;

    .line 78
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mBackground:Lcom/android/server/status/FixedSizeDrawable;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/server/status/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 79
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/status/StatusBarView;->mBackground:Lcom/android/server/status/FixedSizeDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/server/status/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 119
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 122
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 125
    .local v3, oldDateRight:I
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/server/status/StatusBarView;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/android/server/status/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v5

    invoke-direct {p0, v4, v3, v5}, Lcom/android/server/status/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 127
    .local v1, newDateRight:I
    if-gez v1, :cond_0

    .line 128
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4}, Lcom/android/server/status/StatusBarView;->getViewOffset(Landroid/view/View;)I

    move-result v2

    .line 129
    .local v2, offset:I
    if-ge v3, v2, :cond_2

    .line 130
    move v1, v3

    .line 138
    .end local v2           #offset:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/status/StatusBarView;->getPaddingRight()I

    move-result v4

    sub-int v0, p4, v4

    .line 139
    .local v0, max:I
    if-le v1, v0, :cond_1

    .line 140
    move v1, v0

    .line 143
    :cond_1
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v5, v6, v1, v7}, Landroid/view/View;->layout(IIII)V

    .line 144
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mBackground:Lcom/android/server/status/FixedSizeDrawable;

    iget-object v5, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    iget-object v6, p0, Lcom/android/server/status/StatusBarView;->mDate:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    neg-int v6, v6

    sub-int v7, p4, p2

    sub-int v8, p5, p3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/status/FixedSizeDrawable;->setFixedBounds(IIII)V

    .line 145
    return-void

    .line 132
    .end local v0           #max:I
    .restart local v2       #offset:I
    :cond_2
    iget-object v4, p0, Lcom/android/server/status/StatusBarView;->mStatusIcons:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/server/status/StatusBarView;->getDateSize(Landroid/view/ViewGroup;II)I

    move-result v1

    .line 133
    if-gez v1, :cond_0

    .line 134
    move v1, p4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 114
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    const/16 v1, -0x2710

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->updateExpandedViewPos(I)V

    .line 115
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/server/status/StatusBarView;->mService:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v0, p1}, Lcom/android/server/status/StatusBarService;->interceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 252
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
