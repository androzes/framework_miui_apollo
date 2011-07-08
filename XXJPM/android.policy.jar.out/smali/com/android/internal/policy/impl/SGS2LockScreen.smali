.class Lcom/android/internal/policy/impl/SGS2LockScreen;
.super Landroid/widget/LinearLayout;
.source "SGS2LockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# static fields
.field private static final DBG:Z = true

.field private static final LOCK_ANIMATION_MOVE_RANGE:I = 0x14

.field private static final LOCK_ANIMATION_START_DELAY:I = 0x64

.field private static final MAINLAYOUT_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SGS2LockScreen"


# instance fields
.field private mAnimate:Z

.field private mBg:Landroid/graphics/Bitmap;

.field private mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mBottomLayout:Landroid/widget/LinearLayout;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenShadowWall:Landroid/widget/ImageView;

.field private mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMiddleLayout:Landroid/widget/LinearLayout;

.field private mMusicWidget:Landroid/widget/RelativeLayout;

.field private mSGS2LockScreenMissedEventWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;

.field private mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

.field private final mStartLockAnimation:Ljava/lang/Runnable;

.field private mTimeTick_Layout_Refresh:Z

.field private mTopLayout:Landroid/widget/LinearLayout;

.field private mTransAnimation:Landroid/view/animation/TranslateAnimation;

.field private mUnLocked:Z

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field mX:F

.field mY:F


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/16 v9, 0x30

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 97
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 66
    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mBg:Landroid/graphics/Bitmap;

    .line 67
    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 68
    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mBgAlphaDrawable:Landroid/graphics/drawable/Drawable;

    .line 79
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mAnimate:Z

    .line 80
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTimeTick_Layout_Refresh:Z

    .line 81
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnLocked:Z

    .line 82
    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    .line 176
    new-instance v2, Lcom/android/internal/policy/impl/SGS2LockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/SGS2LockScreen$1;-><init>(Lcom/android/internal/policy/impl/SGS2LockScreen;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    .line 187
    iput v8, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mX:F

    .line 188
    iput v8, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mY:F

    .line 98
    iput-object p3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 99
    iput-object p4, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 100
    iput-object p5, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 101
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnLocked:Z

    .line 103
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mHandler:Landroid/os/Handler;

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 106
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x10900a1

    invoke-virtual {v0, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 108
    const v2, 0x10202d9

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SGS2LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 109
    const v2, 0x10202eb

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SGS2LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    .line 110
    const v2, 0x10202db

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SGS2LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTopLayout:Landroid/widget/LinearLayout;

    .line 111
    const v2, 0x10202dc

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SGS2LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMiddleLayout:Landroid/widget/LinearLayout;

    .line 112
    const v2, 0x10202dd

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SGS2LockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mBottomLayout:Landroid/widget/LinearLayout;

    .line 114
    new-instance v2, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-direct {v2, p1}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    .line 115
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 116
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 118
    new-instance v2, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    .line 119
    new-instance v2, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v2, v3, v4}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMissedEventWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;

    .line 120
    new-instance v2, Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v7}, Lcom/android/internal/policy/impl/UnlockClockGB;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    .line 121
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v2, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_position"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 124
    .local v1, layoutPosition:I
    const-string v2, "SGS2LockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLOCK_POSITION from Setting Value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    packed-switch v1, :pswitch_data_0

    .line 155
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v3, 0x1080570

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMiddleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mBottomLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMissedEventWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->setFocusable(Z)V

    .line 163
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SGS2LockScreen;->setFocusableInTouchMode(Z)V

    .line 164
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SGS2LockScreen;->setDescendantFocusability(I)V

    .line 166
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 168
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/high16 v3, 0x41a0

    const/high16 v4, -0x3e60

    invoke-direct {v2, v8, v3, v8, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    .line 169
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 170
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 172
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v6}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 173
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 174
    return-void

    .line 129
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v3, 0x108056f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMiddleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMissedEventWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMiddleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 133
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mBottomLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->setBottomLayout()V

    goto :goto_0

    .line 138
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v3, 0x1080570

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMiddleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMiddleLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 142
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mBottomLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMissedEventWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->setTopLayout()V

    goto/16 :goto_0

    .line 147
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v3, 0x108056e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTopLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMiddleLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMissedEventWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMiddleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 151
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mBottomLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->setTopLayout()V

    goto/16 :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SGS2LockScreen;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->cleanUp()V

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMissedEventWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->cleanUp()V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->cleanUp()V

    .line 356
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnLocked:Z

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->onPause()V

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMissedEventWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->onPause()V

    .line 326
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 313
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 290
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 305
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnLocked:Z

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->onResume()V

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->onResume()V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMissedEventWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMissedEventWidget;->onResume()V

    .line 335
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 309
    return-void
.end method

.method public onTimeChanged()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 295
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTimeTick_Layout_Refresh:Z

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTimeTick_Layout_Refresh:Z

    .line 301
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "event"

    .prologue
    .line 192
    const-string v20, "SGS2LockScreen"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onTouchEvent(): event="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 194
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v18

    .line 195
    .local v18, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v19

    .line 196
    .local v19, y:F
    const/4 v7, 0x0

    .line 197
    .local v7, diffX:I
    const/4 v9, 0x0

    .line 198
    .local v9, diffY:I
    const/4 v8, 0x0

    .line 199
    .local v8, diffX_ori:I
    const/4 v10, 0x0

    .line 200
    .local v10, diffY_ori:I
    const/4 v6, 0x0

    .line 203
    .local v6, currentMusicPlayingStatus:Z
    packed-switch v5, :pswitch_data_0

    .line 284
    :cond_0
    :goto_0
    const/16 v20, 0x1

    return v20

    .line 205
    :pswitch_0
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTimeTick_Layout_Refresh:Z

    .line 207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mAnimate:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x64

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 209
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mAnimate:Z

    .line 212
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->setVisibility(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->isControllerShowing()Z

    move-result v6

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->setControllerVisibility(ZZ)V

    .line 216
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mX:F

    .line 217
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mY:F

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    goto :goto_0

    .line 223
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 224
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTimeTick_Layout_Refresh:Z

    .line 227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mX:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move v7, v0

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mY:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v21

    mul-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v21

    div-int v9, v20, v21

    .line 229
    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    move v0, v9

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x4000

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    add-double v13, v20, v22

    .line 230
    .local v13, distance_square:D
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    .line 231
    .local v11, distance:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v20

    move/from16 v15, v20

    .line 232
    .local v15, min:I
    :goto_1
    mul-int/lit8 v20, v15, 0x2

    div-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 233
    .local v16, threshold:D
    const-string v20, "SGS2LockScreen"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onTouchEvent() : threshold="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", distance="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", alpha="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mAnimate:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 239
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mAnimate:Z

    .line 242
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mX:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    const/high16 v21, 0x41a0

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move v8, v0

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mY:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    const/high16 v21, 0x41a0

    sub-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move v10, v0

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v21

    add-int v21, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v22

    add-int v22, v22, v10

    move-object/from16 v0, v20

    move v1, v8

    move v2, v10

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 253
    :cond_3
    cmpl-double v20, v11, v16

    if-ltz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 254
    const-string v20, "SGS2LockScreen"

    const-string v21, "Threshold is reached. goToUnlockScreen !!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnLocked:Z

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 231
    .end local v15           #min:I
    .end local v16           #threshold:D
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v20

    move/from16 v15, v20

    goto/16 :goto_1

    .line 261
    .end local v11           #distance:D
    .end local v13           #distance_square:D
    :pswitch_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mX:F

    .line 262
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mY:F

    .line 263
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTimeTick_Layout_Refresh:Z

    .line 265
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mAnimate:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 269
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/SGS2LockScreen;->mAnimate:Z

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/SGS2LockScreen;->invalidate()V

    .line 273
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnLocked:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v24

    invoke-virtual/range {v20 .. v24}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->setVisibility(I)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->isControllerShowing()Z

    move-result v6

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->setControllerVisibility(ZZ)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/SGS2LockScreen;->clearFocus()V

    goto/16 :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "batteryLevel"

    .prologue
    .line 497
    return-void
.end method

.method public setScreenOff()V
    .locals 3

    .prologue
    .line 343
    const-string v0, "SGS2LockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOff() mSGS2LockScreenMusicWidget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->setScreenOff()V

    .line 346
    :cond_0
    return-void
.end method

.method public setScreenOn()V
    .locals 3

    .prologue
    .line 337
    const-string v0, "SGS2LockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOn() mSGS2LockScreenMusicWidget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/internal/policy/impl/SGS2LockScreen;->mSGS2LockScreenMusicWidget:Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SGS2LockScreenMusicWidget;->setScreenOn()V

    .line 340
    :cond_0
    return-void
.end method
