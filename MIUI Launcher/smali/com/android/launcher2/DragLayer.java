package com.android.launcher2; class DragLayer {/*

.class public Lcom/android/launcher2/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"


# instance fields
.field mDragController:Lcom/android/launcher2/DragController;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field mOldOffsetX:I

.field mScreenHeight:I

.field mScreenWidth:I

.field mWallpaper:Landroid/graphics/Bitmap;

.field mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperPaint:Landroid/graphics/Paint;

.field mWpHeight:I

.field mWpOffsetX:F

.field mWpOffsetY:F

.field mWpStepX:F

.field mWpStepY:F

.field mWpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v0, 0x0

    .line 62
    #v0=(Null);
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    #p0=(Reference);
    iput v1, p0, Lcom/android/launcher2/DragLayer;->mWpStepX:F

    .line 44
    iput v1, p0, Lcom/android/launcher2/DragLayer;->mWpStepY:F

    .line 45
    iput v1, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    .line 46
    iput v1, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetY:F

    .line 47
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mScreenHeight:I

    .line 48
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mScreenWidth:I

    .line 49
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mWpWidth:I

    .line 50
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mWpHeight:I

    .line 51
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mOldOffsetX:I

    .line 63
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaperPaint:Landroid/graphics/Paint;

    .line 65
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/launcher2/DragLayer;->mOldOffsetX:I

    #v1=(Integer);
    neg-int v1, v1

    int-to-float v1, v1

    #v1=(Float);
    const/4 v2, 0x0

    #v2=(Null);
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mWallpaperPaint:Landroid/graphics/Paint;

    #v3=(Reference);
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 154
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 155
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    #v0=(Reference);
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    .line 69
    return-void
.end method

.method public setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 93
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mScreenHeight:I

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    #v0=(Reference);
    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mScreenWidth:I

    .line 95
    return-void
.end method

.method public snapWallpaperForOthers()V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/android/launcher2/DragLayer;->mWpStepX:F

    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/DragLayer;->mWpStepY:F

    #v2=(Integer);
    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    #v1=(Reference);
    iget v2, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    iget v3, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetY:F

    #v3=(Integer);
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 104
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method

.method public updateWallpaper()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 107
    #v6=(One);
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mContext:Landroid/content/Context;

    #v2=(Reference);
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_key_render_in_truecolor"

    #v3=(Reference);
    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 109
    .local v0, renderInTrueColor:Z
    #v0=(Boolean);
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    .line 111
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/launcher2/DragLayer;->mWpWidth:I

    .line 112
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    #v2=(Integer);
    iput v2, p0, Lcom/android/launcher2/DragLayer;->mWpHeight:I

    .line 113
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    #v2=(Reference);
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    #v3=(PosByte);
    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->invalidate()V

    .line 124
    :goto_0
    #v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 125
    .local v1, vp:Landroid/view/ViewParent;
    #v1=(Reference);
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/view/ViewRoot;

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 126
    check-cast v1, Landroid/view/ViewRoot;

    .end local v1           #vp:Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    #v2=(Reference);
    if-eqz v2, :cond_3

    move v2, v6

    :goto_1
    #v2=(Boolean);
    invoke-virtual {v1, v2}, Landroid/view/ViewRoot;->DisableClearBackgroundForTransparent(Z)V

    .line 128
    :cond_0
    #v2=(Conflicted);
    return-void

    .line 116
    :cond_1
    #v1=(Uninit);v2=(Reference);v3=(Reference);v4=(Uninit);v5=(Uninit);
    const/4 v2, 0x0

    #v2=(Null);
    iput-object v2, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    .line 117
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    #v2=(Reference);
    iget v3, p0, Lcom/android/launcher2/DragLayer;->mWpStepX:F

    #v3=(Integer);
    iget v4, p0, Lcom/android/launcher2/DragLayer;->mWpStepY:F

    #v4=(Integer);
    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    #v3=(Reference);
    iget v4, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    iget v5, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetY:F

    #v5=(Integer);
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 121
    :cond_2
    #v3=(Conflicted);v5=(Conflicted);
    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->setFormat(I)V

    goto :goto_0

    .line 126
    :cond_3
    #v1=(Reference);v4=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_1
.end method

.method public updateWallpaperOffset(FFFF)V
    .locals 5
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 131
    iput p1, p0, Lcom/android/launcher2/DragLayer;->mWpStepX:F

    .line 132
    iput p2, p0, Lcom/android/launcher2/DragLayer;->mWpStepY:F

    .line 133
    iput p3, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    .line 134
    iput p4, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetY:F

    .line 135
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mWallpaper:Landroid/graphics/Bitmap;

    #v1=(Reference);
    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, p0, Lcom/android/launcher2/DragLayer;->mWpStepX:F

    #v2=(Integer);
    iget v3, p0, Lcom/android/launcher2/DragLayer;->mWpStepY:F

    #v3=(Integer);
    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 137
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    #v2=(Reference);
    iget v3, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetX:F

    iget v4, p0, Lcom/android/launcher2/DragLayer;->mWpOffsetY:F

    #v4=(Integer);
    invoke-virtual {v1, v2, v3, v4}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 147
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return-void

    .line 141
    :cond_1
    #v0=(Uninit);v1=(Reference);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget v1, p0, Lcom/android/launcher2/DragLayer;->mWpWidth:I

    #v1=(Integer);
    iget v2, p0, Lcom/android/launcher2/DragLayer;->mScreenWidth:I

    #v2=(Integer);
    sub-int/2addr v1, v2

    int-to-float v1, v1

    #v1=(Float);
    mul-float/2addr v1, p3

    float-to-int v0, v1

    .line 142
    .local v0, left:I
    #v0=(Integer);
    iget v1, p0, Lcom/android/launcher2/DragLayer;->mOldOffsetX:I

    #v1=(Integer);
    if-eq v1, v0, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/android/launcher2/DragLayer;->invalidate()V

    .line 145
    :cond_2
    iput v0, p0, Lcom/android/launcher2/DragLayer;->mOldOffsetX:I

    goto :goto_0
.end method

*/}
